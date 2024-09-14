/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'candidate.modal.dart' as _i3;
import 'candidate_details.model.dart' as _i4;
import 'example.dart' as _i5;
import 'phone_number.model.dart' as _i6;
import 'package:flutter_server/src/generated/candidate.modal.dart' as _i7;
export 'candidate.modal.dart';
export 'candidate_details.model.dart';
export 'example.dart';
export 'phone_number.model.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'candidate',
      dartName: 'Candidate',
      schema: 'public',
      module: 'flutter',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'candidate_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'details',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:CandidateDetails',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'candidate_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'candidate_details',
      dartName: 'CandidateDetails',
      schema: 'public',
      module: 'flutter',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'candidate_details_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'surname',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:PhoneNumber',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'linkedInUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'candidate_details_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Candidate) {
      return _i3.Candidate.fromJson(data) as T;
    }
    if (t == _i4.CandidateDetails) {
      return _i4.CandidateDetails.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.PhoneNumber) {
      return _i6.PhoneNumber.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Candidate?>()) {
      return (data != null ? _i3.Candidate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CandidateDetails?>()) {
      return (data != null ? _i4.CandidateDetails.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.PhoneNumber?>()) {
      return (data != null ? _i6.PhoneNumber.fromJson(data) : null) as T;
    }
    if (t == List<_i7.Candidate>) {
      return (data as List).map((e) => deserialize<_i7.Candidate>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.Candidate) {
      return 'Candidate';
    }
    if (data is _i4.CandidateDetails) {
      return 'CandidateDetails';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.PhoneNumber) {
      return 'PhoneNumber';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Candidate') {
      return deserialize<_i3.Candidate>(data['data']);
    }
    if (data['className'] == 'CandidateDetails') {
      return deserialize<_i4.CandidateDetails>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'PhoneNumber') {
      return deserialize<_i6.PhoneNumber>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Candidate:
        return _i3.Candidate.t;
      case _i4.CandidateDetails:
        return _i4.CandidateDetails.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'flutter';
}
