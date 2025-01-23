import 'package:flutter/material.dart';
import 'package:flutter_flutter/consts/app_sizes.dart';
import 'package:flutter_flutter/ui/screens/post/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: AppSizes.postsWidth),
                child: const SelectionArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppSizes.mediumPadding),
                      PostsListWidget(),
                      SizedBox(height: AppSizes.mediumPadding),
                    ],
                  ),
                ),
              ),
            ),
          ))
        ]);
  }
}
