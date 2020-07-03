import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:partner_finder/services/auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:partner_finder/services/signInInterface.dart';

class SignInPage extends StatefulWidget {
  final SignIn googleSignInService;

  @override
  _SignInPageState createState() => _SignInPageState();
  SignInPage(this.googleSignInService);
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('lib/ui/assets/yL3oYd7H2FHDDXRXwjmbMf.jpg'),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            child: SignInButton(Buttons.Google,
                text: 'Bejelentkezés Google-lel', onPressed: () {
              widget.googleSignInService.handleSignIn();
            }),
          ),
        ],
      ),
    );
  }
}
