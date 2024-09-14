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
import 'protocol.dart' as _i2;

abstract class CandidateDetails extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  CandidateDetails._({
    int? id,
    required this.name,
    required this.surname,
    required this.location,
    required this.phoneNumber,
    required this.email,
    required this.linkedInUrl,
  }) : super(id);

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

  static final t = CandidateDetailsTable();

  static const db = CandidateDetailsRepository._();

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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'surname': surname,
      'location': location,
      'phoneNumber': phoneNumber.toJsonForProtocol(),
      'email': email,
      'linkedInUrl': linkedInUrl,
    };
  }

  static CandidateDetailsInclude include() {
    return CandidateDetailsInclude._();
  }

  static CandidateDetailsIncludeList includeList({
    _i1.WhereExpressionBuilder<CandidateDetailsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CandidateDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateDetailsTable>? orderByList,
    CandidateDetailsInclude? include,
  }) {
    return CandidateDetailsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CandidateDetails.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CandidateDetails.t),
      include: include,
    );
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

class CandidateDetailsTable extends _i1.Table {
  CandidateDetailsTable({super.tableRelation})
      : super(tableName: 'candidate_details') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    surname = _i1.ColumnString(
      'surname',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    phoneNumber = _i1.ColumnSerializable(
      'phoneNumber',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    linkedInUrl = _i1.ColumnString(
      'linkedInUrl',
      this,
    );
  }

  /// Name of the person
  late final _i1.ColumnString name;

  /// Surname of the person
  late final _i1.ColumnString surname;

  /// Location of the person, for example: London
  late final _i1.ColumnString location;

  /// Phone number
  late final _i1.ColumnSerializable phoneNumber;

  /// Email address of the person
  late final _i1.ColumnString email;

  /// LinkedInUrl
  late final _i1.ColumnString linkedInUrl;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        surname,
        location,
        phoneNumber,
        email,
        linkedInUrl,
      ];
}

class CandidateDetailsInclude extends _i1.IncludeObject {
  CandidateDetailsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => CandidateDetails.t;
}

class CandidateDetailsIncludeList extends _i1.IncludeList {
  CandidateDetailsIncludeList._({
    _i1.WhereExpressionBuilder<CandidateDetailsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CandidateDetails.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CandidateDetails.t;
}

class CandidateDetailsRepository {
  const CandidateDetailsRepository._();

  Future<List<CandidateDetails>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateDetailsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CandidateDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateDetailsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CandidateDetails>(
      where: where?.call(CandidateDetails.t),
      orderBy: orderBy?.call(CandidateDetails.t),
      orderByList: orderByList?.call(CandidateDetails.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CandidateDetails?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateDetailsTable>? where,
    int? offset,
    _i1.OrderByBuilder<CandidateDetailsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateDetailsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CandidateDetails>(
      where: where?.call(CandidateDetails.t),
      orderBy: orderBy?.call(CandidateDetails.t),
      orderByList: orderByList?.call(CandidateDetails.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CandidateDetails?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CandidateDetails>(
      id,
      transaction: transaction,
    );
  }

  Future<List<CandidateDetails>> insert(
    _i1.Session session,
    List<CandidateDetails> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CandidateDetails>(
      rows,
      transaction: transaction,
    );
  }

  Future<CandidateDetails> insertRow(
    _i1.Session session,
    CandidateDetails row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CandidateDetails>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CandidateDetails>> update(
    _i1.Session session,
    List<CandidateDetails> rows, {
    _i1.ColumnSelections<CandidateDetailsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CandidateDetails>(
      rows,
      columns: columns?.call(CandidateDetails.t),
      transaction: transaction,
    );
  }

  Future<CandidateDetails> updateRow(
    _i1.Session session,
    CandidateDetails row, {
    _i1.ColumnSelections<CandidateDetailsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CandidateDetails>(
      row,
      columns: columns?.call(CandidateDetails.t),
      transaction: transaction,
    );
  }

  Future<List<CandidateDetails>> delete(
    _i1.Session session,
    List<CandidateDetails> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CandidateDetails>(
      rows,
      transaction: transaction,
    );
  }

  Future<CandidateDetails> deleteRow(
    _i1.Session session,
    CandidateDetails row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CandidateDetails>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CandidateDetails>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CandidateDetailsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CandidateDetails>(
      where: where(CandidateDetails.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateDetailsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CandidateDetails>(
      where: where?.call(CandidateDetails.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
