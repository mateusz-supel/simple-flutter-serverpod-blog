import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
import 'package:flutter_flutter/ui/screens/home/home_screen.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal, brightness: Brightness.light)),
      home: Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.surfaceDim,
        appBar: AppBar(
            //backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
            title: SelectableText.rich(TextSpan(children: [
              TextSpan(
                  text: "M.",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.secondary)),
              TextSpan(
                  text: "SUPEŁ",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w800)),
              TextSpan(text: "", style: Theme.of(context).textTheme.titleLarge),
            ])),
            centerTitle: false,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 1),
            )),
        body: HomeScreen(),
      ),
    );
  }
}
