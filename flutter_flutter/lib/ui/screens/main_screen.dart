import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flutter/ui/widgets/app_bar_widget.dart';
import 'package:flutter_flutter/ui/widgets/bottom_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.child});

  final Widget child;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        context.go('/blog');
      } else if (_selectedIndex == 1) {
        context.go('/playground');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorScheme.secondaryFixed,
        body: CustomScrollView(
          slivers: [
            if (kIsWeb) AppBarWidget(),
            SliverToBoxAdapter(child: widget.child),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
