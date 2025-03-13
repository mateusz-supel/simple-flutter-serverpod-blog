import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String url;

  const SocialMediaButton({
    required this.icon,
    required this.color,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon, color: color),
      onPressed: _launchInBrowser,
    );
  }

  Future<void> _launchInBrowser() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
