import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:galry/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 40),
                foregroundColor: Colors.white,
                backgroundColor:
                    const Color.fromRGBO(204, 51, 102, 1.0), // foreground
              ),
              onPressed: () {
                AuthService().signOut();
              },
              child: Text(
                'Sign Out',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
