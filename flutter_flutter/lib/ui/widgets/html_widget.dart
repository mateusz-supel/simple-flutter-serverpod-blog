import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class HtmlWidget extends StatelessWidget {
  const HtmlWidget(
      {super.key,
      required this.html,
      this.padding,
      this.maxLines,
      this.textOverflow});

  final String html;
  final HtmlPaddings? padding;
  final int? maxLines;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: html,
      style: {
        "#": Style(
            padding: padding, maxLines: maxLines, textOverflow: textOverflow),
        "h1": Style(
            lineHeight: LineHeight.number(1),
            fontWeight: FontWeight.w400,
            fontSize: FontSize(28)),
        "body": Style(
            lineHeight: LineHeight.number(1.4),
            fontWeight: FontWeight.w400,
            fontSize: FontSize(16)),
      },
      onLinkTap: (url, attributes, element) => {
        if (url != null) {_launchInBrowser(Uri.parse(url))}
      },
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
