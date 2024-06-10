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
    apiKey: 'AIzaSyCd6LcOaVc4bPR5X1qMTRmH8KIB75vMYtM',
    appId: '1:487695351297:web:1b48d5971c52017a374a00',
    messagingSenderId: '487695351297',
    projectId: 'flutter-to-do-list-8e31f',
    authDomain: 'flutter-to-do-list-8e31f.firebaseapp.com',
    storageBucket: 'flutter-to-do-list-8e31f.appspot.com',
    measurementId: 'G-GRSE1S85TK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgXqf7p62bbmHclhJddLskaVUQdlMQX50',
    appId: '1:487695351297:android:69d9c672f2068b70374a00',
    messagingSenderId: '487695351297',
    projectId: 'flutter-to-do-list-8e31f',
    storageBucket: 'flutter-to-do-list-8e31f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5CV7OuXyew5r9uvaIhtk_FeBzmowQFiU',
    appId: '1:487695351297:ios:09d044de80ccb7af374a00',
    messagingSenderId: '487695351297',
    projectId: 'flutter-to-do-list-8e31f',
    storageBucket: 'flutter-to-do-list-8e31f.appspot.com',
    iosBundleId: 'com.example.flutterToDoList',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9iVn-6Ph5fLkQ2_5e3trgE67Spmri9jY',
    appId: '1:727830725517:ios:6f0305078332755a9b33c4',
    messagingSenderId: '727830725517',
    projectId: 'todolist-10ef1',
    storageBucket: 'todolist-10ef1.appspot.com',
    iosBundleId: 'com.example.flutterToDoList.RunnerTests',
  );
}