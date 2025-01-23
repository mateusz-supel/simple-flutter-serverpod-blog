import 'package:flutter/material.dart';
import 'package:flutter_flutter/ui/screens/home/home_screen.dart';
import 'package:flutter_flutter/ui/widgets/app_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.secondaryFixed,
      body: const CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverToBoxAdapter(child: HomeScreen()),
        ],
      ),
    );
  }
}
