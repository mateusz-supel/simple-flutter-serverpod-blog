import 'package:aws_common/aws_common.dart';
import 'package:flutter_server/src/extensions/post_extension.dart';
import 'package:flutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:flutter_server/src/extensions/user_extension.dart';

class PostEndpoint extends Endpoint {
  Future<Post> create(Session session, Post post) async {
    return await Post.db.insertRow(session, post);
  }

  Future<void> delete(Session session, Post post) async {
    await Post.db.deleteRow(session, post);
  }

  Future<Post> update(Session session, Post post) async {
    return await Post.db.updateRow(session, post);
  }

  Future<Post?> getPostById(Session session, int id) async {
    final Post? post = await Post.db.findById(session, id);
    post?.img = await post.getPresignedS3ImgUrl();
    return post;
  }

  Future<Post?> getPostByIdWithUser(Session session, int id) async {
    final Post? post = await Post.db.findById(
      session,
      id,
      include: Post.include(user: User.include()),
    );
    post?.img = await post.getPresignedS3ImgUrl();
    post?.user?.img = await post.user?.getPresignedS3ImgUrl();
    return post;
  }

  Future<List<Post>> getAllPosts(Session session) async {
    List<Post> posts = await Post.db.find(
      session,
      orderBy: (t) => t.id,
    );
    for (Post post in posts) {
      post.img = await post.getPresignedS3ImgUrl();
    }
    return posts;
  }

  Future<List<Post>> getAllPostsWithUsers(Session session) async {
    List<Post> posts = await Post.db.find(
      session,
      orderBy: (t) => t.id,
      include: Post.include(user: User.include()),
    );
    for (Post post in posts) {
      post.img = await post.getPresignedS3ImgUrl();
      post.user?.img = await post.user?.getPresignedS3ImgUrl();
    }
    return posts;
  }
}
