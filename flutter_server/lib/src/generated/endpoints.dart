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
import '../endpoints/post_endpoint.dart' as _i2;
import '../endpoints/user_endpoint.dart' as _i3;
import 'package:flutter_server/src/generated/post/post.model.dart' as _i4;
import 'package:flutter_server/src/generated/user.model.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'post': _i2.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
      'user': _i3.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i4.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).create(
            session,
            params['post'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i4.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).delete(
            session,
            params['post'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i4.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).update(
            session,
            params['post'],
          ),
        ),
        'getPostById': _i1.MethodConnector(
          name: 'getPostById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).getPostById(
            session,
            params['id'],
          ),
        ),
        'getPostByIdWithUser': _i1.MethodConnector(
          name: 'getPostByIdWithUser',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).getPostByIdWithUser(
            session,
            params['id'],
          ),
        ),
        'getAllPosts': _i1.MethodConnector(
          name: 'getAllPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint).getAllPosts(session),
        ),
        'getAllPostsWithUsers': _i1.MethodConnector(
          name: 'getAllPostsWithUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i2.PostEndpoint)
                  .getAllPostsWithUsers(session),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i5.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i3.UserEndpoint).create(
            session,
            params['user'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i5.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i3.UserEndpoint).delete(
            session,
            params['user'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i5.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i3.UserEndpoint).update(
            session,
            params['user'],
          ),
        ),
        'getUserById': _i1.MethodConnector(
          name: 'getUserById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i3.UserEndpoint).getUserById(
            session,
            params['id'],
          ),
        ),
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i3.UserEndpoint).getAllUsers(session),
        ),
      },
    );
  }
}
