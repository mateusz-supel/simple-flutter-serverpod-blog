import 'package:flutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class GetAllCandidatesEndpoint extends Endpoint {
  Future<List<Candidate>> getAllCandidates(Session session) async {
    return await Candidate.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }
}
