/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'candidate.modal.dart' as _i2;
import 'candidate_details.model.dart' as _i3;
import 'example.dart' as _i4;
import 'phone_number.model.dart' as _i5;
import 'package:flutter_client/src/protocol/candidate.modal.dart' as _i6;
export 'candidate.modal.dart';
export 'candidate_details.model.dart';
export 'example.dart';
export 'phone_number.model.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Candidate) {
      return _i2.Candidate.fromJson(data) as T;
    }
    if (t == _i3.CandidateDetails) {
      return _i3.CandidateDetails.fromJson(data) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data) as T;
    }
    if (t == _i5.PhoneNumber) {
      return _i5.PhoneNumber.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Candidate?>()) {
      return (data != null ? _i2.Candidate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.CandidateDetails?>()) {
      return (data != null ? _i3.CandidateDetails.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.PhoneNumber?>()) {
      return (data != null ? _i5.PhoneNumber.fromJson(data) : null) as T;
    }
    if (t == List<_i6.Candidate>) {
      return (data as List).map((e) => deserialize<_i6.Candidate>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Candidate) {
      return 'Candidate';
    }
    if (data is _i3.CandidateDetails) {
      return 'CandidateDetails';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.PhoneNumber) {
      return 'PhoneNumber';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Candidate') {
      return deserialize<_i2.Candidate>(data['data']);
    }
    if (data['className'] == 'CandidateDetails') {
      return deserialize<_i3.CandidateDetails>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'PhoneNumber') {
      return deserialize<_i5.PhoneNumber>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
