import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class SegundaTela extends StatefulWidget {


  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}


class _SegundaTelaState extends State<SegundaTela> {
  @override

int i = 0;
  _enviarMensagem(
      ){
    if(valueChoose != null){
      print(valueChoose);
      listaMensagens.add(valueChoose);
      switch (valueChoose){
        case 'item 1':
          listItem.clear();
          listItem.add(listItem2[0]);
          listItem.add(listItem2[1]);
          i=1;
          break;
        case 'item5':
          listItem.clear();
          listItem.add(listItem3[0]);
          listItem.add(listItem3[1]);
          i=2;
          break;
        case 'item6':
          listItem.clear();
          listItem.add(listItem3[0]);
          listItem.add(listItem3[1]);
          i=3;
          break;
      }
      valueChoose = null;

      setState(() {
        tamanhoLista = tamanhoLista + 1;
        _status = !_status;
      });
      _receberMensagem();

    }
  }
  _receberMensagem(
      ){
      switch (i){
        case 1:
          listaMensagens.add('Você escolheu o item 1');
          break;
        case 2:
          listaMensagens.add('Você escolheu o item 5');
          break;
        case 3:
          listaMensagens.add('Você escolheu o item 6');
          break;
      }


      setState(() {
        tamanhoLista = tamanhoLista + 1;
        //_status = !_status;
      });


  }


  List <String>listItem2 = ['item5','item6'];
  List <String>listItem3 = ['item7','item8'];

  String valueChoose;

  List <String>listItem = [


    'item 1',
    'item 2',
    'item 3',
    'item 4',


  ];

  int tamanhoLista = 0;

  List listaMensagens=[];
 bool _status = false;

  Widget build(BuildContext context) {

    var escrevendo = AnimatedContainer(
      height: _status ? 40 : 0,
      duration: Duration(milliseconds: 200),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Escrevendo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          ),
          Lottie.asset('imagens/escrevendo.json',
          width: 40),
        ],
      )
    );

    var listView = Expanded(child: ListView.builder(
        itemCount: tamanhoLista,
        itemBuilder: (context, indice){

          double larguraContainer = MediaQuery.of(context).size.width * 0.8;

          Color corTexto = Colors.grey;
          Alignment alinhamento = Alignment.centerRight;
          if( indice % 2 == 0){
            alinhamento = Alignment.centerLeft;
            corTexto = Colors.white;
          }

          return Align(
            alignment: alinhamento,
            child: Padding(padding:EdgeInsets.all(8),
              child: Container(
                width: larguraContainer,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: corTexto,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text(listaMensagens[indice],
                  style: TextStyle(
                    fontSize: 14,
                  ),),
              ),),

          );
        }
    ));

    var caixaMensagem = Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(child: Padding(
              padding: EdgeInsets.only(right: 8),
              child:
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: DropdownButton(

                      hint: Text('Selecione sua resposta...',
                        style: TextStyle(color: Colors.black),),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down,
                          color: Colors.black),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItem.map<DropdownMenuItem<String>>((String valueItem){
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),

                        ) ;
                      }).toList()
                  ),
                ),
              )
          )),
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.send, color: Colors.blue,),
            mini: true,
            onPressed: _enviarMensagem,
          )
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(child:
      Container(
          child:
          Stack(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.deepPurpleAccent),
                      onPressed: (null),
                    ),
                    Text(
                      'Karina',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(fontSize: 24,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.deepPurpleAccent),
                      onPressed: (null),
                    ),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.deepPurpleAccent, Colors.blueAccent])),
                child: Column(
                  children: [

                    listView,
                    escrevendo,
                    caixaMensagem
                  ],
                ),
              ),
            ],
          )

      )),

    );
  }
}





