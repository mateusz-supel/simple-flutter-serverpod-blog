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
import '../endpoints/create_candidate_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import 'package:flutter_server/src/generated/candidate.modal.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'candidate': _i2.CandidateEndpoint()
        ..initialize(
          server,
          'candidate',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
    };
    connectors['candidate'] = _i1.EndpointConnector(
      name: 'candidate',
      endpoint: endpoints['candidate']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'candidate': _i1.ParameterDescription(
              name: 'candidate',
              type: _i1.getType<_i4.Candidate>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['candidate'] as _i2.CandidateEndpoint).create(
            session,
            params['candidate'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'candidate': _i1.ParameterDescription(
              name: 'candidate',
              type: _i1.getType<_i4.Candidate>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['candidate'] as _i2.CandidateEndpoint).delete(
            session,
            params['candidate'],
          ),
        ),
        'getCandidateById': _i1.MethodConnector(
          name: 'getCandidateById',
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
              (endpoints['candidate'] as _i2.CandidateEndpoint)
                  .getCandidateById(
            session,
            params['id'],
          ),
        ),
        'getAllCandidates': _i1.MethodConnector(
          name: 'getAllCandidates',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['candidate'] as _i2.CandidateEndpoint)
                  .getAllCandidates(session),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
  }
}
