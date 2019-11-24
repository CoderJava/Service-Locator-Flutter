import 'package:dependency_injection_flutter/injector.dart';
import 'package:dependency_injection_flutter/login_service.dart';
import 'package:dependency_injection_flutter/user_profile.dart';
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
  UserProfile userService = locator<UserProfile>();
  UserProfile userService2 = locator<UserProfile>();

  LoginService loginService = locator<LoginService>();
  LoginService loginService2 = locator<LoginService>();

  @override
  Widget build(BuildContext context) {
    userService2.name = 'Linus Torvalds';
    userService2.username = 'Linux';

    loginService.accessToken = 'ini_access_token_baru_ya';

    return Scaffold(
      appBar: AppBar(
        title: Text('Dependency Injection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name 1: ${userService.name}'),
            Text('Name 2: ${userService2.name}'),
            SizedBox(height: 16.0),
            Text('Username 1: ${userService.username}'),
            Text('Username 2: ${userService2.username}'),
            SizedBox(height: 16.0),
            Text('Access token 1: ${loginService.accessToken}'),
            Text('Access token 2: ${loginService2.accessToken}'),
          ],
        ),
      ),
    );
  }
}
