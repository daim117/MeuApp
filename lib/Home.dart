import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:meu_app/Cadastro.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SegundaTela.dart';

_Salvar2() async{
  int valor = 2;
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt("key",valor);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerEmail2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(

      body:SafeArea(child:
      Container(

          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/wallpaper.png"),
                fit: BoxFit.cover,
              )
          ),
          padding:  EdgeInsets.all(0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[


                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Column(

                      children: <Widget>[



                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Image.asset("imagens/logo.png",
                          width: 150,
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 0),
                        child: Text("StartNet",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),),
                        Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text("Bem-vindo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                        ),),),

                        /* Padding(padding: EdgeInsets.only(top: 0),
                          child: Text("Vamos começar",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                          ),),
                        ),*/
                        Padding(padding: EdgeInsets.fromLTRB(40, 60, 40, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(bottom: 0),
                            child: TextField(
                              autocorrect: false,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.white,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              controller: _controllerEmail,

                            ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 0),
                              child: TextField(
                                autocorrect: false,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  labelText: "Senha",
                                  labelStyle: TextStyle(color: Colors.white,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                controller: _controllerSenha,

                              ),
                            ),




                          ],
                        ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 25, 20),
                            child: Align(
                          child: FlatButton(onPressed: (){

                            showDialog(context: context, builder: (context) => CustomDialog(
                              title: "Esqueceu a senha?",
                              description: "Digite aqui seu email:",
                              po: TextField(
                                controller: _controllerEmail2,
                              ),


                            ));


                          }, child: Text("Esqueceu a senha?",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),)),
                          alignment: Alignment.centerRight,
                        )),
                       
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(

                            padding: EdgeInsets.fromLTRB(68, 10, 68, 0),
                            child:
                            RaisedButton(
                                textColor: Colors.deepPurple,
                                color: Colors.white,

                                child: Text("Entrar",
                                style: TextStyle(
                                  fontSize: 20
                                ),),
                                onPressed: (){
                                  if(_controllerEmail.text=='gabriel.daim@hotmail.com' && _controllerSenha.text=='42'){
                                    _Salvar2();
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => SegundaTela()
                                    ));
                                    print("certo");

                                  }else{
                                    print("erro");
                                  }

                                },
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),

                            child: FlatButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Cadastro()
                              ));
                            },
                              child: Text("Não tem uma conta?",
                                style: TextStyle(
                                  color: Colors.white,

                                ),  ),),
                          )
                        ],
                        ),

                        





                      ],
                    ),
                  ),


                ],
              ),
            ),
          )

      ),
      )
    );
  }
}


class CustomDialog extends StatelessWidget{
  final String title, description, buttonText;
  final Image image;
  final TextField po;
  TextEditingController _controllerEmail2 = TextEditingController();


  CustomDialog({this.title,this.description,this.buttonText,this.image,this.po})
  {}@override
  Widget build(BuildContext context){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }


  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: 16,
              bottom: 0,
              left: 16,
              right: 16
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0,10.0)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min ,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset("imagens/esqueceu.gif",
                  width: 120,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.lightBlue[800]
                ),
              ),
              SizedBox(height: 10),

              SizedBox(height: 0,),
              TextField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),

                  labelText: "Digite aqui seu email:",
                  labelStyle: TextStyle(color: Colors.black,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                controller: _controllerEmail2,


              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                    if(_controllerEmail2.text=='gabriel.daim@hotmail.com'){
                      print(_controllerEmail2.text);
                      showDialog(context: context, builder: (context) => CustomDialog2());
                    }else{
                      showDialog(context: context, builder: (context) => CustomDialog3());
                    }

                  },
                  child: Text("Confirmar"),
                ),
              )
            ],

          ),
        ),



      ],
    );
  }
}

class CustomDialog2 extends StatelessWidget{
  TextEditingController _controllerEmail2 = TextEditingController();


  CustomDialog({title,description,buttonText,image})
  {}@override
  Widget build(BuildContext context){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent2(context),
    );
  }


  dialogContent2(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: 16,
              bottom: 0,
              left: 16,
              right: 16
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0,10.0)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min ,
            children: [
              Container(
                width: 200,
                height: 200,
                child: FlareActor("imagens/Correct.flr",
                  animation: "Untitled",
                  fit: BoxFit.contain,
                  snapToEnd: false,),
              ),
              Text("Dica para recuperar senha:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.green
                ),
              ),
              SizedBox(height: 10),
              Text("Resposta para a vida o universo e tudo mais.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black
                ),
                  textAlign: TextAlign.center
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                    if(2==2){
                      print('teste ok');

                    }

                  },
                  child: Text("Entendi"),
                ),
              )
            ],

          ),
        ),



      ],
    );
  }
}

class CustomDialog3 extends StatelessWidget{
  TextEditingController _controllerEmail2 = TextEditingController();


  CustomDialog({title,description,buttonText,image})
  {}@override
  Widget build(BuildContext context){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent3(context),
    );
  }


  dialogContent3(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: 0,
              bottom: 0,
              left: 16,
              right: 16
          ),
          margin: EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0,10.0)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min ,
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 180,
                height: 180,
                child: FlareActor("imagens/Error x.flr",
                  animation: "action",
                  fit: BoxFit.contain,
                snapToEnd: false,),
              ),
              Text("Email não encontrado!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.red[900]
                ),
              ),
              SizedBox(height: 10),
              Container(
                child:
                Align(
                  alignment: Alignment.center,
                  child: Text("É necessário utilizar um email já existente", style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                    if(2==2){
                      print('teste ok2');

                    }

                  },
                  child: Text("Entendi"),
                ),
              )
            ],

          ),
        ),



      ],
    );
  }
}
