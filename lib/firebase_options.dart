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
    apiKey: 'AIzaSyAnZEix2fVyQqHjjm3RmR-81oZIFz1yES4',
    appId: '1:710784955224:web:0fb918803bc9485a8bab2d',
    messagingSenderId: '710784955224',
    projectId: 'lawyerdesk',
    authDomain: 'lawyerdesk.firebaseapp.com',
    storageBucket: 'lawyerdesk.appspot.com',
    measurementId: 'G-F85NVZLGY7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRH8-JowRdFKl-v5rWSmZXg6PyAsuvGJw',
    appId: '1:710784955224:android:a6a26d44f677798b8bab2d',
    messagingSenderId: '710784955224',
    projectId: 'lawyerdesk',
    storageBucket: 'lawyerdesk.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMm4rifAKoqtDShlmQpvChBQo19antjeY',
    appId: '1:710784955224:ios:684764a911a751148bab2d',
    messagingSenderId: '710784955224',
    projectId: 'lawyerdesk',
    storageBucket: 'lawyerdesk.appspot.com',
    iosClientId: '710784955224-bb692c5c52nfgn0e503q9kq38th2l0t3.apps.googleusercontent.com',
    iosBundleId: 'lawyerdesk.ai.lawyerDesk',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMm4rifAKoqtDShlmQpvChBQo19antjeY',
    appId: '1:710784955224:ios:684764a911a751148bab2d',
    messagingSenderId: '710784955224',
    projectId: 'lawyerdesk',
    storageBucket: 'lawyerdesk.appspot.com',
    iosClientId: '710784955224-bb692c5c52nfgn0e503q9kq38th2l0t3.apps.googleusercontent.com',
    iosBundleId: 'lawyerdesk.ai.lawyerDesk',
  );
}
