import 'package:bai_tap_lon/app.dart';
import 'package:bai_tap_lon/data/repositories/authentication_repository.dart';
import 'package:bai_tap_lon/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Add Widgets Bindings
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Init Theme
  await GetStorage.init();

  // Await Loading
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Init Freebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(
      AuthenticationRepository(),
    ),
  );

  // Init Authentication
  runApp(const App());
}
