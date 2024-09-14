import 'package:flutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GetCandidateByIdEndpoint extends Endpoint {
  Future<Candidate?> getCandidateById(Session session, int id) async {
    return await Candidate.db.findById(session, id);
  }
}
