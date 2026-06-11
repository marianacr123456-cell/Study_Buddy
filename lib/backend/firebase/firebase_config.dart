import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCG4ey2sI9Am_CPlWjhJ6adZxZQ3oyTFn4",
            authDomain: "studybuddy-2a692.firebaseapp.com",
            projectId: "studybuddy-2a692",
            storageBucket: "studybuddy-2a692.firebasestorage.app",
            messagingSenderId: "266124652410",
            appId: "1:266124652410:web:f6abe178b5303300de30c3",
            measurementId: "G-QFGSEVSN7X"));
  } else {
    await Firebase.initializeApp();
  }
}
