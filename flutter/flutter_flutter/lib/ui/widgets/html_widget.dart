import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlWidget extends StatelessWidget {
  const HtmlWidget({super.key, required this.html});

  final String html;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: html,
      style: {
        "#": Style(
            padding: HtmlPaddings.zero,
            maxLines: 4,
            textOverflow: TextOverflow.ellipsis),
        "h1": Style(
            lineHeight: LineHeight.number(1),
            fontWeight: FontWeight.w400,
            fontSize: FontSize(28)),
        "body": Style(
            lineHeight: LineHeight.number(1.4),
            fontWeight: FontWeight.w400,
            fontSize: FontSize(16)),
      },
    );
  }
}
