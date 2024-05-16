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
    apiKey: 'AIzaSyDfHOhXO7u0Ad3fdbDyxrLvUgNmCjTxPC4',
    appId: '1:888345076086:web:c47e4df699fb0f152cda57',
    messagingSenderId: '888345076086',
    projectId: 'hope-2c90e',
    authDomain: 'hope-2c90e.firebaseapp.com',
    storageBucket: 'hope-2c90e.appspot.com',
    measurementId: 'G-45QYQLL8JF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGGEbU6_ngNkzHauWHXnvc4u4JJMCr3XA',
    appId: '1:888345076086:android:89a3512efd6cdb612cda57',
    messagingSenderId: '888345076086',
    projectId: 'hope-2c90e',
    storageBucket: 'hope-2c90e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxPgFCpo-lsZLuyNk8nVh0SD4SjS84SG8',
    appId: '1:888345076086:ios:1e77cc59477305472cda57',
    messagingSenderId: '888345076086',
    projectId: 'hope-2c90e',
    storageBucket: 'hope-2c90e.appspot.com',
    iosClientId: '888345076086-nks7pg110tio4ot818sluu0odadj5v4t.apps.googleusercontent.com',
    iosBundleId: 'com.example.hope',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxPgFCpo-lsZLuyNk8nVh0SD4SjS84SG8',
    appId: '1:888345076086:ios:1e77cc59477305472cda57',
    messagingSenderId: '888345076086',
    projectId: 'hope-2c90e',
    storageBucket: 'hope-2c90e.appspot.com',
    iosClientId: '888345076086-nks7pg110tio4ot818sluu0odadj5v4t.apps.googleusercontent.com',
    iosBundleId: 'com.example.hope',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDfHOhXO7u0Ad3fdbDyxrLvUgNmCjTxPC4',
    appId: '1:888345076086:web:ba1887643b9ea2132cda57',
    messagingSenderId: '888345076086',
    projectId: 'hope-2c90e',
    authDomain: 'hope-2c90e.firebaseapp.com',
    storageBucket: 'hope-2c90e.appspot.com',
    measurementId: 'G-XJ99LFZCE1',
  );
}
