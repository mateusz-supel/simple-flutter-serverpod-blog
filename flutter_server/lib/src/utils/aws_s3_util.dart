import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:serverpod/serverpod.dart';

class AwsS3Util {
  static Future<String> getPresignedUrl(String filename) async {
    // Take aws credentials from dart environment
    // const signer = AWSSigV4Signer(
    //     credentialsProvider: AWSCredentialsProvider.environment());

    // Take aws credentials from server passwords.yml
    String awsS3Bucket = Serverpod.instance.getPassword('awsS3Bucket')!;
    String awsRegion = Serverpod.instance.getPassword('awsRegion')!;
    String awsAccessKeyId = Serverpod.instance.getPassword('preSignAwsKey')!;
    String awsSecretAccessKey =
        Serverpod.instance.getPassword('preSignAwsSecretKey')!;

    final AWSCredentials awsCredentials =
        AWSCredentials(awsAccessKeyId, awsSecretAccessKey);

    final credentialsProvider = AWSCredentialsProvider(awsCredentials);
    var signer = AWSSigV4Signer(credentialsProvider: credentialsProvider);

    // Set up S3 values
    final scope = AWSCredentialScope(
      region: awsRegion,
      service: AWSService.s3,
    );

    final serviceConfiguration = S3ServiceConfiguration();
    final host = '$awsS3Bucket.s3.$awsRegion.amazonaws.com';
    final path = '/$filename';

    final urlRequest = AWSHttpRequest.get(
      Uri.https(host, path),
      headers: {
        AWSHeaders.host: host,
      },
    );

    final signedUrl = await signer.presign(
      urlRequest,
      credentialScope: scope,
      serviceConfiguration: serviceConfiguration,
      expiresIn: const Duration(minutes: 10),
    );

    return signedUrl.toString();
  }
}
