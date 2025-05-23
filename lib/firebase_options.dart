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
    apiKey: 'AIzaSyCqgQ_-vN8vKf8a1GlYsRLQkLP1TqWjg8E',
    appId: '1:55882192418:web:4b94b76df7f2e6e3ed5c7b',
    messagingSenderId: '55882192418',
    projectId: 'esn-81-firestore',
    authDomain: 'esn-81-firestore.firebaseapp.com',
    storageBucket: 'esn-81-firestore.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD18HN3hVntjbR1VxyRZ3QDv6SvUrml2XM',
    appId: '1:55882192418:android:9d7cb9ca97251f5bed5c7b',
    messagingSenderId: '55882192418',
    projectId: 'esn-81-firestore',
    storageBucket: 'esn-81-firestore.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAR4RIXCXCA5fSAL7hPOcUZZRw_0rjooYE',
    appId: '1:55882192418:ios:a28e99296d5a147ded5c7b',
    messagingSenderId: '55882192418',
    projectId: 'esn-81-firestore',
    storageBucket: 'esn-81-firestore.firebasestorage.app',
    iosClientId: '55882192418-1nqeu1kav8qa89c4p4a8dahcljifsgli.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAR4RIXCXCA5fSAL7hPOcUZZRw_0rjooYE',
    appId: '1:55882192418:ios:a28e99296d5a147ded5c7b',
    messagingSenderId: '55882192418',
    projectId: 'esn-81-firestore',
    storageBucket: 'esn-81-firestore.firebasestorage.app',
    iosClientId: '55882192418-1nqeu1kav8qa89c4p4a8dahcljifsgli.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCqgQ_-vN8vKf8a1GlYsRLQkLP1TqWjg8E',
    appId: '1:55882192418:web:becfcc8657d6f3dfed5c7b',
    messagingSenderId: '55882192418',
    projectId: 'esn-81-firestore',
    authDomain: 'esn-81-firestore.firebaseapp.com',
    storageBucket: 'esn-81-firestore.firebasestorage.app',
  );
}
