// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC2IN8R873-uSvNZyThjr5rFS0GZFNdf2g',
    appId: '1:870673212460:web:32f1edc073f3b7c7d21d89',
    messagingSenderId: '870673212460',
    projectId: 'my-maps-de378',
    authDomain: 'my-maps-de378.firebaseapp.com',
    storageBucket: 'my-maps-de378.appspot.com',
    measurementId: 'G-1766C35ZH1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUz7mD-WGdZPg6M9s8e8MCKrv7MOTAwnM',
    appId: '1:870673212460:android:4307eb320aad9afad21d89',
    messagingSenderId: '870673212460',
    projectId: 'my-maps-de378',
    storageBucket: 'my-maps-de378.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKQq7vHGDFWzsLeP6Hj6T8vDPIMCHv4oc',
    appId: '1:870673212460:ios:6dcb52b5c98e8385d21d89',
    messagingSenderId: '870673212460',
    projectId: 'my-maps-de378',
    storageBucket: 'my-maps-de378.appspot.com',
    iosBundleId: 'com.example.myMaps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKQq7vHGDFWzsLeP6Hj6T8vDPIMCHv4oc',
    appId: '1:870673212460:ios:6dcb52b5c98e8385d21d89',
    messagingSenderId: '870673212460',
    projectId: 'my-maps-de378',
    storageBucket: 'my-maps-de378.appspot.com',
    iosBundleId: 'com.example.myMaps',
  );
}