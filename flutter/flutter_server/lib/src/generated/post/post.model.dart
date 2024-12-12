/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../protocol.dart' as _i2;

abstract class Post implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = PostTable();

  static const db = PostRepository._();

  @override
  int? id;

  int userId;

  _i2.User? user;

  String title;

  String html;

  DateTime publishDate;

  String? headerImg;

  String? contentImg;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'title': title,
      'html': html,
      'publishDate': publishDate.toJson(),
      if (headerImg != null) 'headerImg': headerImg,
      if (contentImg != null) 'contentImg': contentImg,
    };
  }

  static PostInclude include({_i2.UserInclude? user}) {
    return PostInclude._(user: user);
  }

  static PostIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    PostInclude? include,
  }) {
    return PostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Post.t),
      include: include,
    );
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

class PostTable extends _i1.Table {
  PostTable({super.tableRelation}) : super(tableName: 'post') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    html = _i1.ColumnString(
      'html',
      this,
    );
    publishDate = _i1.ColumnDateTime(
      'publishDate',
      this,
    );
    headerImg = _i1.ColumnString(
      'headerImg',
      this,
    );
    contentImg = _i1.ColumnString(
      'contentImg',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnString title;

  late final _i1.ColumnString html;

  late final _i1.ColumnDateTime publishDate;

  late final _i1.ColumnString headerImg;

  late final _i1.ColumnString contentImg;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Post.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        title,
        html,
        publishDate,
        headerImg,
        contentImg,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class PostInclude extends _i1.IncludeObject {
  PostInclude._({_i2.UserInclude? user}) {
    _user = user;
  }

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => Post.t;
}

class PostIncludeList extends _i1.IncludeList {
  PostIncludeList._({
    _i1.WhereExpressionBuilder<PostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Post.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Post.t;
}

class PostRepository {
  const PostRepository._();

  final attachRow = const PostAttachRowRepository._();

  Future<List<Post>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.find<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<Post?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.findFirstRow<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<Post?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.findById<Post>(
      id,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<List<Post>> insert(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Post>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Post> insertRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Post>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Post>> update(
    _i1.Session session,
    List<Post> rows, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Post>(
      rows,
      columns: columns?.call(Post.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Post> updateRow(
    _i1.Session session,
    Post row, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Post>(
      row,
      columns: columns?.call(Post.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Post>> delete(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Post> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Post>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Post>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Post>(
      where: where(Post.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where?.call(Post.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}

class PostAttachRowRepository {
  const PostAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Post post,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $post = post.copyWith(userId: user.id);
    await session.db.updateRow<Post>(
      $post,
      columns: [Post.t.userId],
      transaction: transaction ?? session.transaction,
    );
  }
}
