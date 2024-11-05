import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fourth_app/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async{
    Timer(const Duration(seconds: 2),()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //call startTimer function
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/recipe_logo.png",
              width: 200,
              height: 200,
            ),

            const SizedBox(height: 10,),

            Text("My Recipe", style: GoogleFonts.sacramento(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),),

            const SizedBox(height: 10,),

            const CircularProgressIndicator(
              color: Colors.redAccent,
            )

          ],
        ),
      ),
    );
  }
}
