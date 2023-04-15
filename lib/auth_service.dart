import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:galry/screens/home.dart';
import 'package:galry/screens/landing.dart';
import 'package:galry/screens/login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // 1. handleAuthState()

  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return const LandingPage();
          }
        });
  }

  // 2. signInWithGoogle()

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // 3. signOut

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
