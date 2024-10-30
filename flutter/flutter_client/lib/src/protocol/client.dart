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
import 'dart:async' as _i2;
import 'package:flutter_client/src/protocol/post/post.model.dart' as _i3;
import 'package:flutter_client/src/protocol/user.model.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointPost extends _i1.EndpointRef {
  EndpointPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'post';

  _i2.Future<_i3.Post> create(_i3.Post post) =>
      caller.callServerEndpoint<_i3.Post>(
        'post',
        'create',
        {'post': post},
      );

  _i2.Future<void> delete(_i3.Post post) => caller.callServerEndpoint<void>(
        'post',
        'delete',
        {'post': post},
      );

  _i2.Future<_i3.Post> update(_i3.Post post) =>
      caller.callServerEndpoint<_i3.Post>(
        'post',
        'update',
        {'post': post},
      );

  _i2.Future<_i3.Post?> getPostById(int id) =>
      caller.callServerEndpoint<_i3.Post?>(
        'post',
        'getPostById',
        {'id': id},
      );

  _i2.Future<_i3.Post?> getPostByIdWithUser(int id) =>
      caller.callServerEndpoint<_i3.Post?>(
        'post',
        'getPostByIdWithUser',
        {'id': id},
      );

  _i2.Future<List<_i3.Post>> getAllPosts() =>
      caller.callServerEndpoint<List<_i3.Post>>(
        'post',
        'getAllPosts',
        {},
      );

  _i2.Future<List<_i3.Post>> getAllPostsWithUsers() =>
      caller.callServerEndpoint<List<_i3.Post>>(
        'post',
        'getAllPostsWithUsers',
        {},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i4.User> create(_i4.User user) =>
      caller.callServerEndpoint<_i4.User>(
        'user',
        'create',
        {'user': user},
      );

  _i2.Future<void> delete(_i4.User user) => caller.callServerEndpoint<void>(
        'user',
        'delete',
        {'user': user},
      );

  _i2.Future<_i4.User> update(_i4.User user) =>
      caller.callServerEndpoint<_i4.User>(
        'user',
        'update',
        {'user': user},
      );

  _i2.Future<_i4.User?> getUserById(int id) =>
      caller.callServerEndpoint<_i4.User?>(
        'user',
        'getUserById',
        {'id': id},
      );

  _i2.Future<List<_i4.User>> getAllUsers() =>
      caller.callServerEndpoint<List<_i4.User>>(
        'user',
        'getAllUsers',
        {},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    post = EndpointPost(this);
    user = EndpointUser(this);
  }

  late final EndpointPost post;

  late final EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'post': post,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
