import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:partner_finder/model/user.dart';
import 'package:partner_finder/services/signInInterface.dart';

class GoogleSignInService implements SignIn {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _auth;
  GoogleSignInService(this._googleSignIn, this._auth);

  @override
  Future<FirebaseUser> handleSignIn() async {
    FirebaseUser user;
    bool isSignedIn = await _googleSignIn.isSignedIn();
    if (isSignedIn) {
      user = await _auth.currentUser();
    } else {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      user = (await _auth.signInWithCredential(credential)).user;
    }
    return user;
  }
}
