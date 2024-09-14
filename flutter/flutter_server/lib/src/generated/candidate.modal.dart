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

abstract class Candidate extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Candidate._({
    int? id,
    required this.details,
  }) : super(id);

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

  static final t = CandidateTable();

  static const db = CandidateRepository._();

  _i2.CandidateDetails details;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'details': details.toJsonForProtocol(),
    };
  }

  static CandidateInclude include() {
    return CandidateInclude._();
  }

  static CandidateIncludeList includeList({
    _i1.WhereExpressionBuilder<CandidateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CandidateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateTable>? orderByList,
    CandidateInclude? include,
  }) {
    return CandidateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Candidate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Candidate.t),
      include: include,
    );
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

class CandidateTable extends _i1.Table {
  CandidateTable({super.tableRelation}) : super(tableName: 'candidate') {
    details = _i1.ColumnSerializable(
      'details',
      this,
    );
  }

  late final _i1.ColumnSerializable details;

  @override
  List<_i1.Column> get columns => [
        id,
        details,
      ];
}

class CandidateInclude extends _i1.IncludeObject {
  CandidateInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Candidate.t;
}

class CandidateIncludeList extends _i1.IncludeList {
  CandidateIncludeList._({
    _i1.WhereExpressionBuilder<CandidateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Candidate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Candidate.t;
}

class CandidateRepository {
  const CandidateRepository._();

  Future<List<Candidate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CandidateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Candidate>(
      where: where?.call(Candidate.t),
      orderBy: orderBy?.call(Candidate.t),
      orderByList: orderByList?.call(Candidate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Candidate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateTable>? where,
    int? offset,
    _i1.OrderByBuilder<CandidateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CandidateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Candidate>(
      where: where?.call(Candidate.t),
      orderBy: orderBy?.call(Candidate.t),
      orderByList: orderByList?.call(Candidate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Candidate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Candidate>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Candidate>> insert(
    _i1.Session session,
    List<Candidate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Candidate>(
      rows,
      transaction: transaction,
    );
  }

  Future<Candidate> insertRow(
    _i1.Session session,
    Candidate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Candidate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Candidate>> update(
    _i1.Session session,
    List<Candidate> rows, {
    _i1.ColumnSelections<CandidateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Candidate>(
      rows,
      columns: columns?.call(Candidate.t),
      transaction: transaction,
    );
  }

  Future<Candidate> updateRow(
    _i1.Session session,
    Candidate row, {
    _i1.ColumnSelections<CandidateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Candidate>(
      row,
      columns: columns?.call(Candidate.t),
      transaction: transaction,
    );
  }

  Future<List<Candidate>> delete(
    _i1.Session session,
    List<Candidate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Candidate>(
      rows,
      transaction: transaction,
    );
  }

  Future<Candidate> deleteRow(
    _i1.Session session,
    Candidate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Candidate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Candidate>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CandidateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Candidate>(
      where: where(Candidate.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CandidateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Candidate>(
      where: where?.call(Candidate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
