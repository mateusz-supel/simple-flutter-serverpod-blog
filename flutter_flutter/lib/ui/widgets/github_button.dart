import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GithubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(FontAwesomeIcons.github,
          color: Colors.white), // GitHub icon
      onPressed: () {
        // Handle GitHub button press
        print("GitHub icon pressed");
      },
    );
  }
}
