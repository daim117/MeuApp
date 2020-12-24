import 'package:meu_app/Home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 7,
          backgroundColor: Colors.black,
          navigateAfterSeconds: Home(

          ),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 70,
              child: Lottie.asset('imagens/sofia.json',repeat: false),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 20,
                width: 400,
                child: (
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text(
                    'A partir de agora, tudo é um desafio...',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,),
                    ),
                  ),
                ],
                )


                ),
              ),


              Container(
                width: 200,
                height: 200,
                child: FlareActor("imagens/loading-circle.flr",
                  animation: "Untitled",
                  fit: BoxFit.contain,),
              ),

          ],
        ),
      ],
    );
  }
}

