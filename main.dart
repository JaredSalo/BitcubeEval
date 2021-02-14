import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:web_salo/pages/WrapperPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BitCubeEVAL Platform',
      debugShowCheckedModeBanner: false,
      home: WrapperPage(),
    );
  }
}

// Classes moved to external file.
>>>>>>> Initial design commit
