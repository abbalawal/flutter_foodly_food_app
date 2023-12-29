import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYT-qsV8aObz5Z1qkz3wWK60BdxUj3v-8",
            authDomain: "food-delivery-app-ea8ab.firebaseapp.com",
            projectId: "food-delivery-app-ea8ab",
            storageBucket: "food-delivery-app-ea8ab.appspot.com",
            messagingSenderId: "158763414666",
            appId: "1:158763414666:web:eb55fd55b1bcface40a973"));
  } else {
    await Firebase.initializeApp();
  }
}
