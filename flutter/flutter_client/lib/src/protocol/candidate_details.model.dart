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
import 'protocol.dart' as _i2;

abstract class CandidateDetails implements _i1.SerializableModel {
  CandidateDetails._({
    this.id,
    required this.name,
    required this.surname,
    required this.location,
    required this.phoneNumber,
    required this.email,
    required this.linkedInUrl,
  });

  factory CandidateDetails({
    int? id,
    required String name,
    required String surname,
    required String location,
    required _i2.PhoneNumber phoneNumber,
    required String email,
    required String linkedInUrl,
  }) = _CandidateDetailsImpl;

  factory CandidateDetails.fromJson(Map<String, dynamic> jsonSerialization) {
    return CandidateDetails(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      surname: jsonSerialization['surname'] as String,
      location: jsonSerialization['location'] as String,
      phoneNumber: _i2.PhoneNumber.fromJson(
          (jsonSerialization['phoneNumber'] as Map<String, dynamic>)),
      email: jsonSerialization['email'] as String,
      linkedInUrl: jsonSerialization['linkedInUrl'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// Name of the person
  String name;

  /// Surname of the person
  String surname;

  /// Location of the person, for example: London
  String location;

  /// Phone number
  _i2.PhoneNumber phoneNumber;

  /// Email address of the person
  String email;

  /// LinkedInUrl
  String linkedInUrl;

  CandidateDetails copyWith({
    int? id,
    String? name,
    String? surname,
    String? location,
    _i2.PhoneNumber? phoneNumber,
    String? email,
    String? linkedInUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'surname': surname,
      'location': location,
      'phoneNumber': phoneNumber.toJson(),
      'email': email,
      'linkedInUrl': linkedInUrl,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CandidateDetailsImpl extends CandidateDetails {
  _CandidateDetailsImpl({
    int? id,
    required String name,
    required String surname,
    required String location,
    required _i2.PhoneNumber phoneNumber,
    required String email,
    required String linkedInUrl,
  }) : super._(
          id: id,
          name: name,
          surname: surname,
          location: location,
          phoneNumber: phoneNumber,
          email: email,
          linkedInUrl: linkedInUrl,
        );

  @override
  CandidateDetails copyWith({
    Object? id = _Undefined,
    String? name,
    String? surname,
    String? location,
    _i2.PhoneNumber? phoneNumber,
    String? email,
    String? linkedInUrl,
  }) {
    return CandidateDetails(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      location: location ?? this.location,
      phoneNumber: phoneNumber ?? this.phoneNumber.copyWith(),
      email: email ?? this.email,
      linkedInUrl: linkedInUrl ?? this.linkedInUrl,
    );
  }
}
