import 'package:flutter/material.dart';
import 'package:flutter_client/flutter_client.dart';
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
          colorSchemeSeed: Colors.white,
          scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        //appBar: AppBar(title: const Text('Adaptive Column of Rows')),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Widget buildRow(BuildContext context, List<String> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.map((item) => Expanded(child: Text(item))).toList(),
    );
  }

  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  double groupAlignment = -1.0;

  Candidate? _candidate;
  Exception? _connectionException;

  Future<void> _loadCandidate() async {
    try {
      final candidate = await client.candidate.getCandidateById(1);
      setState(() {
        _candidate = candidate;
      });
    } catch (e) {
      _connectionFailed(e);
    }
  }

  void _connectionFailed(dynamic exception) {
    setState(() {
      _candidate = null;
      _connectionException = exception;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadCandidate();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: <Widget>[
              NavigationRail(
                selectedIndex: _selectedIndex,
                groupAlignment: groupAlignment,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                labelType: labelType,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.person_outlined),
                    selectedIcon: Icon(Icons.person),
                    label: Text('About me'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.rocket_launch_outlined),
                    selectedIcon: Icon(Icons.rocket_launch),
                    label: Text('Services'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.star_border),
                    selectedIcon: Icon(Icons.star),
                    label: Text('Experience'),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              // This is the main content.
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ),
            ],
          ),
        );

        return Column(
          children: [
            buildRow(context, ['Item 1', 'Item 2']),
            buildRow(context, ['Item 1', 'Item 2', 'Item 3']),
            buildRow(context, ['Item 1']),
          ],
        );
      },
    );
  }
}
