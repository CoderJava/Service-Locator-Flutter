import 'package:service_locator_flutter/login_service.dart';
import 'package:service_locator_flutter/user_profile.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register LoginService as Singleton
  locator.registerSingleton(LoginService());

  // Register UserProfile as Factory
  locator.registerFactory(() => UserProfile());
}
