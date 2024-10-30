import 'package:flutter_server/src/extensions/user_extension.dart';
import 'package:flutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  Future<User> create(Session session, User user) async {
    return await User.db.insertRow(session, user);
  }

  Future<void> delete(Session session, User user) async {
    await User.db.deleteRow(session, user);
  }

  Future<User> update(Session session, User user) async {
    return await User.db.updateRow(session, user);
  }

  Future<User?> getUserById(Session session, int id) async {
    final User? user = await User.db.findById(session, id);
    user?.img = await user.getPresignedS3ImgUrl();
    return user;
  }

  Future<List<User>> getAllUsers(Session session) async {
    List<User> users = await User.db.find(
      session,
      orderBy: (t) => t.id,
    );
    for (User user in users) {
      user.img = await user.getPresignedS3ImgUrl();
    }
    return users;
  }
}
