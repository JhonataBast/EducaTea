import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDT61ijc7Z_NMlX0sJeKbGoVLZXkA2kYNc",
            authDomain: "educatea-fb324.firebaseapp.com",
            projectId: "educatea-fb324",
            storageBucket: "educatea-fb324.appspot.com",
            messagingSenderId: "449957651325",
            appId: "1:449957651325:web:a86ac29868196a8cbde214"));
  } else {
    await Firebase.initializeApp();
  }
}
