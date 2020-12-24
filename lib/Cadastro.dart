import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

class Cadastro extends StatefulWidget {



  @override
  _CadastroState createState() => _CadastroState();
}



class _CadastroState extends State<Cadastro> {


  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:

    Container(

    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("imagens/wallpaper.png"),
    fit: BoxFit.cover,
    )
    ),
      child:Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 0),
              child: Column(
                children: <Widget>[

                  Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Image.asset("imagens/logo.png",
                        width: 150,
                      ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),
                  child: Text("Cadastro",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),),

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
                              hintText: "gabriel.daim@hotmail.com",
                              hintStyle: TextStyle(color: Colors.white70),
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
                              hintText: "*********",
                              hintStyle: TextStyle(color: Colors.white70),
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
                  Padding(padding: EdgeInsets.only(top: 10),
                  child:
                  Container(
                    decoration: BoxDecoration(

                    ),

                  )
                  )


                ],
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

                        child: Text("Cadastrar",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                        onPressed: (){
                          showDialog(context: context, builder: (context) => CustomDialog(
                            title: "Erro!",
                            description: "Novos usuários não estão sendo mais permitidos. Caso já tenha uma conta e não lembre a senha será necessário recupera-la.",

                          ));
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0))),
                  ),

                ],
              ),


            ],
          ),
        ),
      )
    )
      )

      );
  }
}

class CustomDialog extends StatelessWidget{
  final String title, description, buttonText;
  final Image image;

  CustomDialog({this.title,this.description,this.buttonText,this.image})

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
            bottom: 16,
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
                child: FlareActor("imagens/alert.flr",
                  animation: "play",
                  fit: BoxFit.contain,
                  snapToEnd: false,),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                    color: Colors.yellow[700]
                ),
              ),
              SizedBox(height: 24),
              Container(
                  child:
                      Align(
                      alignment: Alignment.center,
                      child: Text(description, style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,),
                      ),
                  ),
              SizedBox(height: 24,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
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