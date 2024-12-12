import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
import 'package:flutter_flutter/consts/app_sizes.dart';
import 'package:flutter_flutter/ui/widgets/network_image_widget.dart';

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({required this.user, super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NetworkImageWidget(url: user.img!, radius: 10),
        const SizedBox(width: AppSizes.minSpacing),
        Text('by ', style: Theme.of(context).textTheme.bodyMedium),
        Text('${user.userName},  ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w700)),
      ],
    );
  }
}
