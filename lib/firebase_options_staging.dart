// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_staging.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKlVa3d7kr48rx-QbwmRt8xWNTBc40i6s',
    appId: '1:993478204470:android:d2750f66ec34b85d6a4c97',
    messagingSenderId: '993478204470',
    projectId: 'flutter-instagram-clone-f6866',
    storageBucket: 'flutter-instagram-clone-f6866.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiPB5ZhQXzT6j_vPBHUYbfsi9dLdBeQ2s',
    appId: '1:993478204470:ios:37815613c5ef06166a4c97',
    messagingSenderId: '993478204470',
    projectId: 'flutter-instagram-clone-f6866',
    storageBucket: 'flutter-instagram-clone-f6866.firebasestorage.app',
    iosClientId: '993478204470-82808unnqdlu56hruj45q239fbdmvkce.apps.googleusercontent.com',
    iosBundleId: 'com.gambley1.flutterInstagramClone.staging',
  );
}
