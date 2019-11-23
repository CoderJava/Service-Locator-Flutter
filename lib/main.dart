import 'package:dependency_injection_flutter/service_locator.dart';
import 'package:dependency_injection_flutter/user_service.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  final UserService userService = locator<UserService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dependency Injection'),
      ),
      body: Center(
        child: Text(userService.username),
      ),
    );
  }
}


