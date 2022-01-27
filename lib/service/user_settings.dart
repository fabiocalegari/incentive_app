import 'package:firebase_auth/firebase_auth.dart';

class UserSettings {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User currentUser() {
    try {
      var user = _auth.currentUser!;
      return user;
    } catch (e) {
      rethrow;
    }
  }

  static void logout() {
    _auth.signOut();
  }
}
