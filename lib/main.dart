import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:partner_finder/services/auth.dart';
import 'package:partner_finder/services/signInInterface.dart';

import 'ui/pages/sign_in_page.dart';

void main() {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SignIn googleSignInService = GoogleSignInService(_googleSignIn, _auth);
  return runApp(MaterialApp(
    home: SignInPage(googleSignInService),
  ));
}
