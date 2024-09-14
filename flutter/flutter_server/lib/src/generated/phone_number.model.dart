/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PhoneNumber
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  PhoneNumber._({
    required this.countryCodeChar,
    required this.countryCode,
    required this.number,
  });

  factory PhoneNumber({
    required String countryCodeChar,
    required int countryCode,
    required int number,
  }) = _PhoneNumberImpl;

  factory PhoneNumber.fromJson(Map<String, dynamic> jsonSerialization) {
    return PhoneNumber(
      countryCodeChar: jsonSerialization['countryCodeChar'] as String,
      countryCode: jsonSerialization['countryCode'] as int,
      number: jsonSerialization['number'] as int,
    );
  }

  /// Country code character before the country code number, for example "+"
  String countryCodeChar;

  /// Phone country code of the person
  int countryCode;

  /// Phone number of the person
  int number;

  PhoneNumber copyWith({
    String? countryCodeChar,
    int? countryCode,
    int? number,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'countryCodeChar': countryCodeChar,
      'countryCode': countryCode,
      'number': number,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'countryCodeChar': countryCodeChar,
      'countryCode': countryCode,
      'number': number,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PhoneNumberImpl extends PhoneNumber {
  _PhoneNumberImpl({
    required String countryCodeChar,
    required int countryCode,
    required int number,
  }) : super._(
          countryCodeChar: countryCodeChar,
          countryCode: countryCode,
          number: number,
        );

  @override
  PhoneNumber copyWith({
    String? countryCodeChar,
    int? countryCode,
    int? number,
  }) {
    return PhoneNumber(
      countryCodeChar: countryCodeChar ?? this.countryCodeChar,
      countryCode: countryCode ?? this.countryCode,
      number: number ?? this.number,
    );
  }
}
