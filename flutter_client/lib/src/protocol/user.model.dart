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

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.userName,
    this.img,
  });

  factory User({
    int? id,
    required String userName,
    String? img,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      userName: jsonSerialization['userName'] as String,
      img: jsonSerialization['img'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String userName;

  String? img;

  User copyWith({
    int? id,
    String? userName,
    String? img,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userName': userName,
      if (img != null) 'img': img,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String userName,
    String? img,
  }) : super._(
          id: id,
          userName: userName,
          img: img,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? userName,
    Object? img = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      userName: userName ?? this.userName,
      img: img is String? ? img : this.img,
    );
  }
}
