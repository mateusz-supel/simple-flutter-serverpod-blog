import 'package:flutter_server/src/generated/protocol.dart';
import 'package:flutter_server/src/utils/aws_s3_util.dart';

extension UserExtension on User {
  Future<String?> getPresignedS3ImgUrl() async {
    if (img != null) {
      return await AwsS3Util.getPresignedUrl(img!);
    }
    return null;
  }
}
