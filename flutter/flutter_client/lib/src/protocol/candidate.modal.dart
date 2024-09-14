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

abstract class Candidate implements _i1.SerializableModel {
  Candidate._({
    this.id,
    required this.details,
  });

  factory Candidate({
    int? id,
    required _i2.CandidateDetails details,
  }) = _CandidateImpl;

  factory Candidate.fromJson(Map<String, dynamic> jsonSerialization) {
    return Candidate(
      id: jsonSerialization['id'] as int?,
      details: _i2.CandidateDetails.fromJson(
          (jsonSerialization['details'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.CandidateDetails details;

  Candidate copyWith({
    int? id,
    _i2.CandidateDetails? details,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'details': details.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CandidateImpl extends Candidate {
  _CandidateImpl({
    int? id,
    required _i2.CandidateDetails details,
  }) : super._(
          id: id,
          details: details,
        );

  @override
  Candidate copyWith({
    Object? id = _Undefined,
    _i2.CandidateDetails? details,
  }) {
    return Candidate(
      id: id is int? ? id : this.id,
      details: details ?? this.details.copyWith(),
    );
  }
}
