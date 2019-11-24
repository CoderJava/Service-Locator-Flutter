import 'package:dependency_injection_flutter/login_service.dart';
import 'package:dependency_injection_flutter/user_profile.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register LoginService as Singleton
  locator.registerSingleton(LoginService());

  // Register UserProfile as Factory
  locator.registerFactory(() => UserProfile());
}
