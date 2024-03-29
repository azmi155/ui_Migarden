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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCq928B7dKHlAaWMO4CuCy91LHp0U5ZoEM',
    appId: '1:733968784523:web:01a5d503e5c70e7393488e',
    messagingSenderId: '733968784523',
    projectId: 'database-f825f',
    authDomain: 'database-f825f.firebaseapp.com',
    databaseURL: 'https://database-f825f-default-rtdb.firebaseio.com',
    storageBucket: 'database-f825f.appspot.com',
    measurementId: 'G-LRBKN71DCV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlqcYUExhKlI9GFT_grhQKSuixTQUESCM',
    appId: '1:733968784523:android:3bd5b812f612e85793488e',
    messagingSenderId: '733968784523',
    projectId: 'database-f825f',
    databaseURL: 'https://database-f825f-default-rtdb.firebaseio.com',
    storageBucket: 'database-f825f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxKtTxBMakk82a8s7MhX_gwefTXGIE69Y',
    appId: '1:733968784523:ios:e91a4ad0ba15991393488e',
    messagingSenderId: '733968784523',
    projectId: 'database-f825f',
    databaseURL: 'https://database-f825f-default-rtdb.firebaseio.com',
    storageBucket: 'database-f825f.appspot.com',
    androidClientId: '733968784523-l7184b2t35bc94pa21da649jg8mdgfq7.apps.googleusercontent.com',
    iosClientId: '733968784523-cj2kklvs7cicfars4s5mcemhq9ouhd6i.apps.googleusercontent.com',
    iosBundleId: 'com.example.migarden',
  );
}
