import 'package:flutter/material.dart';
import 'package:flutter_flutter/ui/screens/home/widgets/welcome_header.dart';
import 'package:flutter_flutter/ui/screens/post/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: const SelectionArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      WelcomeHeader(),
                      SizedBox(height: 50),
                      PostsListWidget()
                    ],
                  ),
                ),
              ),
            ),
          ))
        ]));
  }
}
