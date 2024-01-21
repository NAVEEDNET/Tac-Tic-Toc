import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'GameScreen.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.asset(
          //   'assets/tic.png',
          //   height: MediaQuery.of(context).size.height,
          //   fit: BoxFit.fitHeight,
          // ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.red, // Add red color
                  Colors.orange, // Add white color
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Tic-Tac-toc',
                      style: GoogleFonts.poppins(
                        color: Colors.deepPurple,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    child: Image.asset(
                      'images/tic.png',
                      height: 200, // Set a specific height for the image
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Play \n Unlimit.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.lightBlueAccent,
                      fontSize: 25.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: MaterialButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => GameScreen(),
                        ),
                        result: false,
                      ),
                      color: Colors.blue, // Change the button color according to your needs
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
