import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final String url;

  LinkButton({required this.text, required this.url});

  void _launchURL() async {
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _launchURL,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            fontSize: 16),
      ),
    );
  }
}
