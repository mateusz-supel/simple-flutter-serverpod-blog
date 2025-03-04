import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
import 'package:flutter_flutter/go_router.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Initialize the Serverpod client for server communication.
final client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.teal);

    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
      ),
      routerConfig: router,
    );
  }
}
