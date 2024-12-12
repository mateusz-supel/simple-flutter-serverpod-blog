/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../protocol.dart' as _i2;

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    required this.userId,
    this.user,
    required this.title,
    required this.html,
    required this.publishDate,
    this.headerImg,
    this.contentImg,
  });

  factory Post({
    int? id,
    required int userId,
    _i2.User? user,
    required String title,
    required String html,
    required DateTime publishDate,
    String? headerImg,
    String? contentImg,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      title: jsonSerialization['title'] as String,
      html: jsonSerialization['html'] as String,
      publishDate:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['publishDate']),
      headerImg: jsonSerialization['headerImg'] as String?,
      contentImg: jsonSerialization['contentImg'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.User? user;

  String title;

  String html;

  DateTime publishDate;

  String? headerImg;

  String? contentImg;

  Post copyWith({
    int? id,
    int? userId,
    _i2.User? user,
    String? title,
    String? html,
    DateTime? publishDate,
    String? headerImg,
    String? contentImg,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'title': title,
      'html': html,
      'publishDate': publishDate.toJson(),
      if (headerImg != null) 'headerImg': headerImg,
      if (contentImg != null) 'contentImg': contentImg,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required int userId,
    _i2.User? user,
    required String title,
    required String html,
    required DateTime publishDate,
    String? headerImg,
    String? contentImg,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          title: title,
          html: html,
          publishDate: publishDate,
          headerImg: headerImg,
          contentImg: contentImg,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? title,
    String? html,
    DateTime? publishDate,
    Object? headerImg = _Undefined,
    Object? contentImg = _Undefined,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      title: title ?? this.title,
      html: html ?? this.html,
      publishDate: publishDate ?? this.publishDate,
      headerImg: headerImg is String? ? headerImg : this.headerImg,
      contentImg: contentImg is String? ? contentImg : this.contentImg,
    );
  }
}
