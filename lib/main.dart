import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/screens/welcome_page.dart';
import 'package:shopping/utils/data.dart';

import 'dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the JSON data from the assets
  await loadJsonData();

  runApp(MyApp());
}

Future<void> loadJsonData() async {
  final String jsonData = await rootBundle.loadString('assets/data.json');
  Data.fromJson(jsonData);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/dashboard': (context) => DashboardPage(),
        // Add other routes here
      },
    );
  }
}
