import 'package:ecommerce_flutter/app.dart';
import 'package:ecommerce_flutter/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// -- Entry point of flutter app

Future<void> main() async {
  /// -- Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// GetX Local Storage
  await GetStorage.init();

  /// -- Await Splash Screen until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  /// -- Initialize FireBase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Load all the app
  runApp(const App());
}

