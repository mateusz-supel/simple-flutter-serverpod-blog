import 'package:flutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CandidateEndpoint extends Endpoint {
  Future<Candidate> create(Session session, Candidate candidate) async {
    return await Candidate.db.insertRow(session, candidate);
  }

  Future<void> delete(Session session, Candidate candidate) async {
    await Candidate.db.deleteRow(session, candidate);
  }

  Future<Candidate?> getCandidateById(Session session, int id) async {
    return await Candidate.db.findById(session, id);
  }

  Future<List<Candidate>> getAllCandidates(Session session) async {
    return await Candidate.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }
}
