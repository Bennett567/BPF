import 'package:firebase_auth/firebase_auth.dart';

abstract class SignIn {
  Future<FirebaseUser> handleSignIn() async {}
}
