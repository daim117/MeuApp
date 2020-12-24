import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TerceiraTela extends StatefulWidget {
  @override
  _TerceiraTelaState createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela",
        style: GoogleFonts.lato(),),
      ),

    );
  }
}

