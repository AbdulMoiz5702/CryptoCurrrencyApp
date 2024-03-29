

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthentication {

  signInWithGoogle()async{
    final GoogleSignInAccount ? googleUSer = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication  googleAuth = await googleUSer!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );

    return FirebaseAuth.instance.signInWithCredential(credential);
  }




}