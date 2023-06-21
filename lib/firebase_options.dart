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
    apiKey: 'AIzaSyBmlBWNNR9NKPwHo9ycXih4ZZ15ZjlmL0Q',
    appId: '1:593952442953:web:b0197f3a309150dc570d98',
    messagingSenderId: '593952442953',
    projectId: 'smartcar-d9fe8',
    authDomain: 'smartcar-d9fe8.firebaseapp.com',
    databaseURL: 'https://smartcar-d9fe8-default-rtdb.firebaseio.com',
    storageBucket: 'smartcar-d9fe8.appspot.com',
    measurementId: 'G-TBPNWSP8HJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6Uj-Xp0G1I8j8oH0HYSYmragdf_uFu74',
    appId: '1:593952442953:android:9ca9252f607e315e570d98',
    messagingSenderId: '593952442953',
    projectId: 'smartcar-d9fe8',
    databaseURL: 'https://smartcar-d9fe8-default-rtdb.firebaseio.com',
    storageBucket: 'smartcar-d9fe8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAN9yeIVy6GTS6VTfvxcVEJa_miaEFqr4A',
    appId: '1:593952442953:ios:4050ee698232e11b570d98',
    messagingSenderId: '593952442953',
    projectId: 'smartcar-d9fe8',
    databaseURL: 'https://smartcar-d9fe8-default-rtdb.firebaseio.com',
    storageBucket: 'smartcar-d9fe8.appspot.com',
    iosClientId: '593952442953-g2hmfouu2odk8jk999j1uunk6ct5b0o3.apps.googleusercontent.com',
    iosBundleId: 'com.example.smaCar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAN9yeIVy6GTS6VTfvxcVEJa_miaEFqr4A',
    appId: '1:593952442953:ios:4c4cd7889598fa34570d98',
    messagingSenderId: '593952442953',
    projectId: 'smartcar-d9fe8',
    databaseURL: 'https://smartcar-d9fe8-default-rtdb.firebaseio.com',
    storageBucket: 'smartcar-d9fe8.appspot.com',
    iosClientId: '593952442953-kkm8rvtujpkic2irvj68a53ojivj32ta.apps.googleusercontent.com',
    iosBundleId: 'com.example.smaCar.RunnerTests',
  );
}
