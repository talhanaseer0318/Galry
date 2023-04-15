import 'package:flutter/material.dart';
import 'package:galry/screens/login.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  )
                ],
              ),
              child: Image.asset(
                'lib/assets/landing_img.png',
                height: 200,
                width: 260,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Galry',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Every Photo Matters...',
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 40),
                foregroundColor: Colors.white,
                backgroundColor:
                    Color.fromRGBO(204, 51, 102, 1.0), // foreground
              ),
              onPressed: () {
                Get.to(() => Login());
              },
              child: Text(
                'Get Started',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
