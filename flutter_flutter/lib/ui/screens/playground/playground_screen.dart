import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({super.key});

  @override
  PlaygroundScreenState createState() => PlaygroundScreenState();
}

class PlaygroundScreenState extends State<PlaygroundScreen> {
  @override
  Widget build(BuildContext context) {
    return SelectableText("Welcome to playground!");
  }
}
