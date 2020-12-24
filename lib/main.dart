import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_app/SegundaTela.dart';
import 'package:meu_app/SplashScreen.dart';
import 'package:meu_app/TerceiraTela.dart';
import 'Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
  _portraitModeOnly();

}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  print(prefs.getInt("key"));
  print('teste');
  if (prefs.getInt("key") == null){
    int valor = 1;
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt("key",valor);
    print('teste');
  }
  print(prefs.getInt("key"));
  Widget rootWidget;
  switch (prefs.getInt("key")) {
    case 1:
      rootWidget = SplashScreenPage();
      break;
    case 2:
      rootWidget = SegundaTela();
      break;
    case 3:
      rootWidget = TerceiraTela();
      break;

  }
  _portraitModeOnly();

  runApp(MaterialApp(home: rootWidget,
    debugShowCheckedModeBanner: false,
  ));
}

void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}