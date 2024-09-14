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
import 'package:flutter_client/src/protocol/candidate.modal.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointGetAllCandidates extends _i1.EndpointRef {
  EndpointGetAllCandidates(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'getAllCandidates';

  _i2.Future<List<_i3.Candidate>> getAllCandidates() =>
      caller.callServerEndpoint<List<_i3.Candidate>>(
        'getAllCandidates',
        'getAllCandidates',
        {},
      );
}

/// {@category Endpoint}
class EndpointGetCandidateById extends _i1.EndpointRef {
  EndpointGetCandidateById(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'getCandidateById';

  _i2.Future<_i3.Candidate?> getCandidateById(int id) =>
      caller.callServerEndpoint<_i3.Candidate?>(
        'getCandidateById',
        'getCandidateById',
        {'id': id},
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
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    example = EndpointExample(this);
    getAllCandidates = EndpointGetAllCandidates(this);
    getCandidateById = EndpointGetCandidateById(this);
  }

  late final EndpointExample example;

  late final EndpointGetAllCandidates getAllCandidates;

  late final EndpointGetCandidateById getCandidateById;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'getAllCandidates': getAllCandidates,
        'getCandidateById': getCandidateById,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
