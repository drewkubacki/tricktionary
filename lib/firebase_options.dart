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
    apiKey: 'AIzaSyBn1zp5_JzzyOQ5oS6CFVmjD3eht7N5HFs',
    appId: '1:28854039543:web:f9f887c0b577e34cd774f2',
    messagingSenderId: '28854039543',
    projectId: 'tricktionary',
    authDomain: 'tricktionary.firebaseapp.com',
    storageBucket: 'tricktionary.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyh8apurykLuIb4SNxWXrAjsmOb8Y2C1g',
    appId: '1:28854039543:android:f02df2720f9e58e2d774f2',
    messagingSenderId: '28854039543',
    projectId: 'tricktionary',
    storageBucket: 'tricktionary.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEAZOYsKaeILrHWCwJHXPdOe36hsCHFHc',
    appId: '1:28854039543:ios:400bd05985121114d774f2',
    messagingSenderId: '28854039543',
    projectId: 'tricktionary',
    storageBucket: 'tricktionary.appspot.com',
    iosClientId: '28854039543-2js670jggkmafbtnbf3p96agtnsljnjg.apps.googleusercontent.com',
    iosBundleId: 'com.example.tricktionary',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEAZOYsKaeILrHWCwJHXPdOe36hsCHFHc',
    appId: '1:28854039543:ios:400bd05985121114d774f2',
    messagingSenderId: '28854039543',
    projectId: 'tricktionary',
    storageBucket: 'tricktionary.appspot.com',
    iosClientId: '28854039543-2js670jggkmafbtnbf3p96agtnsljnjg.apps.googleusercontent.com',
    iosBundleId: 'com.example.tricktionary',
  );
}
