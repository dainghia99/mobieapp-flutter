// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDyPTCnf6EL7qbPf1GMKWl6BisBJHtD5Z0',
    appId: '1:1010123630805:web:6191553aa6b57712325a5c',
    messagingSenderId: '1010123630805',
    projectId: 'mobie-app-flutter',
    authDomain: 'mobie-app-flutter.firebaseapp.com',
    storageBucket: 'mobie-app-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-PFUh8Y3ONXYzwCaTq0MTKvzCKG1-n7Q',
    appId: '1:1010123630805:android:9dbc7f7982df5d56325a5c',
    messagingSenderId: '1010123630805',
    projectId: 'mobie-app-flutter',
    storageBucket: 'mobie-app-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgPIZGfHdTWIPZEqF2OC8tzoxMGpN6j2o',
    appId: '1:1010123630805:ios:0bd953ab55583df5325a5c',
    messagingSenderId: '1010123630805',
    projectId: 'mobie-app-flutter',
    storageBucket: 'mobie-app-flutter.appspot.com',
    iosBundleId: 'com.example.baiTapLon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgPIZGfHdTWIPZEqF2OC8tzoxMGpN6j2o',
    appId: '1:1010123630805:ios:0bd953ab55583df5325a5c',
    messagingSenderId: '1010123630805',
    projectId: 'mobie-app-flutter',
    storageBucket: 'mobie-app-flutter.appspot.com',
    iosBundleId: 'com.example.baiTapLon',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDyPTCnf6EL7qbPf1GMKWl6BisBJHtD5Z0',
    appId: '1:1010123630805:web:0b568359d5db380f325a5c',
    messagingSenderId: '1010123630805',
    projectId: 'mobie-app-flutter',
    authDomain: 'mobie-app-flutter.firebaseapp.com',
    storageBucket: 'mobie-app-flutter.appspot.com',
  );
}
