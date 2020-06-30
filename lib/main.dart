import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'model/ui/pages/sign_in_page.dart';

void main() => runApp(MaterialApp(
      home: SignInPage(),
    ));
