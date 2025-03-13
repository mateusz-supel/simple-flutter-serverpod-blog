import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
import 'package:flutter_flutter/consts/app_sizes.dart';
import 'package:flutter_flutter/main.dart';
import 'package:flutter_flutter/ui/widgets/author_widget.dart';
import 'package:flutter_flutter/ui/widgets/html_widget.dart';
import 'package:flutter_flutter/ui/widgets/network_image_widget.dart';
import 'package:intl/intl.dart';

class PostsListWidget extends StatefulWidget {
  const PostsListWidget({super.key});

  @override
  State<PostsListWidget> createState() => _PostsListWidgetState();
}

class _PostsListWidgetState extends State<PostsListWidget> {
  List<Post> _posts = [];
  //Exception? _connectionException;
  DateFormat format = DateFormat("MMM dd");

  @override
  void initState() {
    super.initState();
    _loadPosts();
    getUrl();
  }

  Future<void> getUrl() async {}

  void _connectionFailed(dynamic exception) {
    setState(() {
      _posts = [];
      //_connectionException = exception;
    });
  }

  Future<void> _loadPosts() async {
    try {
      final posts = await client.post.getAllPostsWithUsers();
      setState(() {
        _posts = posts;
      });
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Widget _buildHeader(BuildContext context, Post postModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30, child: AuthorWidget(user: postModel.user!)),
        Text(format.format(postModel.publishDate),
            style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }

  Widget _buildHeaderImg(Post postModel) {
    if (postModel.headerImg != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, AppSizes.defaultPadding, 0, 0),
        child: SizedBox(
            //height: 350,
            width: double.infinity,
            child: NetworkImageWidget(url: postModel.headerImg!, radius: 20)),
      );
    }
    return Container();
  }

  Widget _buildContentImg(Post postModel) {
    if (postModel.contentImg != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, AppSizes.defaultPadding, 0, 0),
        child: SizedBox(
            height: 170,
            width: 170,
            child: NetworkImageWidget(url: postModel.contentImg!, radius: 20)),
      );
    }
    return Container();
  }

  Widget _buildArticleContent(Post postModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Transform.translate(
            offset: const Offset(-3, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HtmlWidget(html: postModel.html),
                //LinkButton(text: "Read more >>", url: "")
              ],
            ),
          ),
        ),
        _buildContentImg(postModel)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final Post postModel = _posts[index];
        return Card(
          margin: EdgeInsets.zero,
          color: Theme.of(context).colorScheme.surfaceContainerLowest,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, postModel),
                _buildHeaderImg(postModel),
                const SizedBox(height: AppSizes.defaultPadding),
                _buildArticleContent(postModel),
              ],
            ),
          ),
        );
      },
    );
  }
}
