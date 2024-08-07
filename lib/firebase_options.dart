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
    apiKey: 'AIzaSyAHswJX4s3l6RCxoU6mCWG7tJXblZ269c4',
    appId: '1:261631506169:web:2a363c72df8aeff876d428',
    messagingSenderId: '261631506169',
    projectId: 'atticecommerce',
    authDomain: 'atticecommerce.firebaseapp.com',
    storageBucket: 'atticecommerce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYQtBQKAy5lSSlXSpnzgkamYgyAXhtkSE',
    appId: '1:261631506169:android:b466561d9de4820876d428',
    messagingSenderId: '261631506169',
    projectId: 'atticecommerce',
    storageBucket: 'atticecommerce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8XibXrn6C_jE4L8RXjGix37EFFEkaRKE',
    appId: '1:261631506169:ios:8ec791ec61ecccf576d428',
    messagingSenderId: '261631506169',
    projectId: 'atticecommerce',
    storageBucket: 'atticecommerce.appspot.com',
    iosBundleId: 'com.example.attic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8XibXrn6C_jE4L8RXjGix37EFFEkaRKE',
    appId: '1:261631506169:ios:8ec791ec61ecccf576d428',
    messagingSenderId: '261631506169',
    projectId: 'atticecommerce',
    storageBucket: 'atticecommerce.appspot.com',
    iosBundleId: 'com.example.attic',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAHswJX4s3l6RCxoU6mCWG7tJXblZ269c4',
    appId: '1:261631506169:web:49025309d87c84f676d428',
    messagingSenderId: '261631506169',
    projectId: 'atticecommerce',
    authDomain: 'atticecommerce.firebaseapp.com',
    storageBucket: 'atticecommerce.appspot.com',
  );
}
