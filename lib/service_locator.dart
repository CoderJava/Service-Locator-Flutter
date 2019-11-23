import 'package:dependency_injection_flutter/login_service.dart';
import 'package:dependency_injection_flutter/user_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(UserService());
  locator.registerFactory(() => LoginService());
}