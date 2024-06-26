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
    apiKey: 'AIzaSyAAj4yMya-wr1Qq80lv8KbuWCwuSpSrwz8',
    appId: '1:1078394059379:web:5feb269b1e3d9131ce4806',
    messagingSenderId: '1078394059379',
    projectId: 'catalystapp-677ae',
    authDomain: 'catalystapp-677ae.firebaseapp.com',
    storageBucket: 'catalystapp-677ae.appspot.com',
    measurementId: 'G-JGGX6997QQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDG7wRMjybKeR8orLyZdJpR3yQHQCV7PnA',
    appId: '1:1078394059379:android:f106c3ac8e63c1acce4806',
    messagingSenderId: '1078394059379',
    projectId: 'catalystapp-677ae',
    storageBucket: 'catalystapp-677ae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBodnjtJ7dddibNArR1OhzknAC4jw2UncA',
    appId: '1:1078394059379:ios:c23a2b3c68fc9375ce4806',
    messagingSenderId: '1078394059379',
    projectId: 'catalystapp-677ae',
    storageBucket: 'catalystapp-677ae.appspot.com',
    iosBundleId: 'com.example.catalystApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBodnjtJ7dddibNArR1OhzknAC4jw2UncA',
    appId: '1:1078394059379:ios:b4fe43bbeb13fa57ce4806',
    messagingSenderId: '1078394059379',
    projectId: 'catalystapp-677ae',
    storageBucket: 'catalystapp-677ae.appspot.com',
    iosBundleId: 'com.example.catalystApp.RunnerTests',
  );
}
