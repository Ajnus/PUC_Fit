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
    apiKey: 'AIzaSyA9nN7m12GGkO0bxgJaY609nM4WTHvRvOI',
    appId: '1:117122046004:web:585add2413740adc195261',
    messagingSenderId: '117122046004',
    projectId: 'puc-fit',
    authDomain: 'puc-fit.firebaseapp.com',
    storageBucket: 'puc-fit.appspot.com',
    measurementId: 'G-WBT33FSWXM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuq6nsxRK_vU68lDbjaxuTq8eXzQzacRU',
    appId: '1:117122046004:android:d154981b5c259ab8195261',
    messagingSenderId: '117122046004',
    projectId: 'puc-fit',
    storageBucket: 'puc-fit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDni3Nx5TO0kVpxbcU4TrAtul_Ua4jfv0E',
    appId: '1:117122046004:ios:6f1207236f6ef506195261',
    messagingSenderId: '117122046004',
    projectId: 'puc-fit',
    storageBucket: 'puc-fit.appspot.com',
    iosClientId: '117122046004-rktqgdk23k4i312d7lu99ppv8plkqo4t.apps.googleusercontent.com',
    iosBundleId: 'com.example.pucFit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDni3Nx5TO0kVpxbcU4TrAtul_Ua4jfv0E',
    appId: '1:117122046004:ios:6f1207236f6ef506195261',
    messagingSenderId: '117122046004',
    projectId: 'puc-fit',
    storageBucket: 'puc-fit.appspot.com',
    iosClientId: '117122046004-rktqgdk23k4i312d7lu99ppv8plkqo4t.apps.googleusercontent.com',
    iosBundleId: 'com.example.pucFit',
  );
}