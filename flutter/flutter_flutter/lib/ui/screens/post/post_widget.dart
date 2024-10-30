import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
import 'package:flutter_flutter/main.dart';
import 'package:flutter_flutter/ui/widgets/html_widget.dart';
import 'package:flutter_html/flutter_html.dart';

class BlogPostWidget extends StatefulWidget {
  const BlogPostWidget({super.key, required this.id});

  final int id;

  @override
  State<BlogPostWidget> createState() => _BlogPostWidgetState();
}

class _BlogPostWidgetState extends State<BlogPostWidget> {
  Post? _post;
  Exception? _connectionException;

  @override
  void initState() {
    super.initState();
    _loadBlogPost(widget.id);
  }

  void _connectionFailed(dynamic exception) {
    setState(() {
      _post = null;
      _connectionException = exception;
    });
  }

  Future<void> _loadBlogPost(int id) async {
    try {
      final post = await client.post.getPostByIdWithUser(id);
      setState(() {
        _post = post;
      });
    } catch (e) {
      _connectionFailed(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_post != null) {
      return HtmlWidget(html: _post!.html);
    }
    return const Placeholder();
  }
}
