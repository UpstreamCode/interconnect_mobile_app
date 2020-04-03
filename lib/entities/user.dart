import 'package:firebase_auth/firebase_auth.dart';

class User {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static Future<bool> isLoggedIn() async {
    try {
      final FirebaseUser user = await _firebaseAuth.currentUser();
      return user != null;
    } catch (e) {
      return false;
    }
  }

}