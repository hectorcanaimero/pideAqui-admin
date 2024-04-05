import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqi0IqH4oK2MOn9f1zpvKfUZW1l2nsUKE",
            authDomain: "sport-trivia-hgcdqn.firebaseapp.com",
            projectId: "sport-trivia-hgcdqn",
            storageBucket: "sport-trivia-hgcdqn.appspot.com",
            messagingSenderId: "632669026467",
            appId: "1:632669026467:web:77431952f3ce930280a716"));
  } else {
    await Firebase.initializeApp();
  }
}
