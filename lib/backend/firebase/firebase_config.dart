import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDiwihwfHBzFM3gbi06WhjaAUnwJ9Rp7X0",
            authDomain: "plantiful-4tcukb.firebaseapp.com",
            projectId: "plantiful-4tcukb",
            storageBucket: "plantiful-4tcukb.appspot.com",
            messagingSenderId: "49774948480",
            appId: "1:49774948480:web:b95b0292b16796649db665"));
  } else {
    await Firebase.initializeApp();
  }
}
