
# EC2 auto scaling cluster and security groups

data "aws_availability_zones" "available" {
  state = "available"
}

# TODO: Fix?
data "aws_ami" "amazon-linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}

resource "aws_launch_template" "serverpod" {
  name_prefix   = "${var.project_name}-"
  image_id      = var.instance_ami
  instance_type = var.instance_type
  user_data = base64encode(templatefile("init-script.sh", { runmode = "production" }))

  iam_instance_profile {
    name = aws_iam_instance_profile.codedeploy_profile.name
  }

  network_interfaces {
    security_groups = [
      aws_security_group.serverpod.id,
      aws_security_group.ssh.id
    ]
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.project_name}-serverpod"
    }
  }
}

resource "aws_autoscaling_group" "serverpod" {
  min_size         = var.autoscaling_min_size
  max_size         = var.autoscaling_max_size
  desired_capacity = var.autoscaling_desired_capacity

  launch_template {
    id      = aws_launch_template.serverpod.id
    version = "$Latest"
  }

  vpc_zone_identifier = module.vpc.public_subnets
}

resource "aws_security_group" "serverpod" {
  name = "${var.project_name}-serverpod"

  ingress {
    from_port       = 8080
    to_port         = 8082
    protocol        = "tcp"
    security_groups = [aws_security_group.api.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = module.vpc.vpc_id
}

resource "aws_security_group" "ssh" {
  name = "${var.project_name}-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = module.vpc.vpc_id
}
