import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:partner_finder/services/auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInService _googleSignInService;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    _googleSignInService = GoogleSignInService(_googleSignIn, _auth);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 20,
        child: SignInButton(Buttons.Google, text: 'Bejelentkezés Google-lel',
            onPressed: () {
          _googleSignInService.handleSignIn();
        }),
      ),
    );
  }
}
