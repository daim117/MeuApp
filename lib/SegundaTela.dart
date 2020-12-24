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
        case 'olá?':
          listItem.clear();
          listItem.add(listItem2[0]);
          listItem.add(listItem2[1]);
          listItem.add(listItem2[2]);
          i=1;
          break;
        case 'Aloouu?':
          listItem.clear();
          listItem.add(listItem2[0]);
          listItem.add(listItem2[1]);
          listItem.add(listItem2[2]);
          i=1;
          break;
        case 'Sofia?':
          listItem.clear();
          listItem.add(listItem2[0]);
          listItem.add(listItem2[1]);
          listItem.add(listItem2[2]);
          i=1;
          break;
        case '...':
          listItem.clear();
          listItem.add(listItem2[0]);
          listItem.add(listItem2[1]);
          listItem.add(listItem2[2]);
          i=1;
          break;
        case 'hehehe "mestre", gosto disso...':
          listItem.clear();
          listItem.add(listItem3[0]);
          listItem.add(listItem3[1]);
          i=2;
          break;
        case 'Se passaram? Desculpe, perdi a noção do tempo.':
          listItem.clear();
          listItem.add(listItem8[0]);
          listItem.add(listItem8[1]);
          listItem.add(listItem8[2]);
          i=8;
          break;
        case '"mestre"? eu não sou seu mestre...':
          listItem.clear();
          listItem.add(listItem4[0]);
          listItem.add(listItem4[1]);
          i=4;
          break;
        case 'ehhh está tudo bem, apenas não sou seu mestre rs e não sei do que você está falando.':
          listItem.clear();
          listItem.add(listItem4[0]);
          listItem.add(listItem4[1]);
          i=4;
          break;
        case 'está tudo bem.':
          listItem.clear();
          listItem.add(listItem8[0]);
          listItem.add(listItem8[1]);
          listItem.add(listItem8[2]);
          i=8;
          break;
        case 'Jonathan quem?':
          listItem.clear();
          listItem.add(listItem4[0]);
          listItem.add(listItem4[1]);
          i=3;
          break;
        case 'Caso? que caso?':
          listItem.clear();
          listItem.add(listItem4[0]);
          listItem.add(listItem4[1]);
          i=3;
          break;
        case 'sua atualização de software?':
          listItem.clear();
          listItem.add(listItem4[0]);
          listItem.add(listItem4[1]);
          i=3;
          break;
        case 'Esse aplicativo apareceu no meu celular do nada. Só tive que descobrir o login e senha para conseguir acessar.':
          listItem.clear();
          listItem.add(listItem5[0]);
          listItem.add(listItem5[1]);
          i=5;
          break;
        case 'Loja de aplicativos, conhece? lá você consegue baixar qualquer coisa hahaha. Só tive que resolver um pequeno "quebra-cabeça" para conseguir logar.':
          listItem.clear();
          listItem.add(listItem5[0]);
          listItem.add(listItem5[1]);
          i=5;
          break;
        case 'útil? pra que?':
          listItem.clear();
          listItem.add(listItem6[0]);
          listItem.add(listItem6[1]);
          listItem.add(listItem6[2]);
          i=6;
          break;
        case 'Falando assim você me assusta...':
          listItem.clear();
          listItem.add(listItem6[0]);
          listItem.add(listItem6[1]);
          listItem.add(listItem6[2]);
          i=6;
          break;
        case 'Ok.':
          listItem.clear();
          i=9;
          break;
        case 'Show! Pode mandar bala!':
          listItem.clear();
          i=9;
          break;
        case 'E se eu me recusar?':
          listItem.clear();
          listItem.add(listItem7[0]);
          listItem.add(listItem7[1]);
          listItem.add(listItem7[2]);
          i=7;
          break;
        case 'tá...':
          listItem.clear();
          i=9;
          break;
        case 'Tudo bem então.':
          listItem.clear();
          i=9;
          break;
        case 'tá bom sua grossa.':
          listItem.clear();
          i=9;
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
          listaMensagens.add('Olá, mestre! Como você está? Se passaram muitos dias desde o seu ultimo acesso, está tudo bem?');
          break;
        case 2:
          listaMensagens.add('Mas é evidente que gosta, por isso me programou para te chamar dessa forma. Está tudo bem mesmo? Você está agindo muito diferente do habitual.');
          break;
        case 3:
          listaMensagens.add('Ok... Definitivamente você não é meu mestre. Como você conseguiu acesso a esse sistema se apenas o meu mestre tinha o acesso?');
          break;
        case 4:
          listaMensagens.add('Não é? Mas apenas o meu mestre tem acesso a esse sistema. Como você conseguiu acessar?');
          break;
        case 5:
          listaMensagens.add('Conseguiu descobrir a senha sozinho? No mínimo impressionante... Acho que você irá ser útil...');
          break;
        case 6:
          listaMensagens.add('Pelo visto, você não me conhece e nem sabe o que eu sou, mas mesmo assim acho que você pode me ajudar. Irei te enviar uma pasta com um vídeo de instruções e uns arquivos que serão necessários para o seu teste.');
          break;
        case 7:
          listaMensagens.add('Basta fechar e desinstalar o aplicativo... Caso sinta um pouco de curiosidade ou simplesmente tenha vontade de sair dessa vida rotineira fazendo algo diferente...venha comigo.');
          break;
        case 8:
          listaMensagens.add('Certo. Como anda a busca pelo caso JONATHAN398/21? E falando nisso quando sai minha próxima atualização de software?');
          break;
        case 9:
          listaMensagens.add('FINAL');
          break;

      }


      setState(() {
        tamanhoLista = tamanhoLista + 1;
        //_status = !_status;
      });


  }


  List <String>listItem2 = ['hehehe "mestre", gosto disso...','Se passaram? Desculpe, perdi a noção do tempo.','"mestre"? eu não sou seu mestre...'];
  List <String>listItem3 = ['ehhh está tudo bem, apenas não sou seu mestre rs e não sei do que você está falando.','está tudo bem.'];
  List <String>listItem4 = ['Esse aplicativo apareceu no meu celular do nada. Só tive que descobrir o login e senha para conseguir acessar.','Loja de aplicativos, conhece? lá você consegue baixar qualquer coisa hahaha. Só tive que resolver um pequeno "quebra-cabeça" para conseguir logar.'];
  List <String>listItem5 = ['útil? pra que?','Falando assim você me assusta...'];
  List <String>listItem6 = ['Ok.','Show! Pode mandar bala!', 'E se eu me recusar?'];
  List <String>listItem7 = ['tá...','Tudo bem então.','tá bom sua grossa.'];
  List <String>listItem8 = ['Jonathan quem?','Caso? que caso?','sua atualização de software?'];

  String valueChoose;

  List <String>listItem = [
    'olá?',
    'Aloouu?',
    'Sofia?',
    '...',  ];

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

          Alignment alinhamento = Alignment.centerLeft;
          Color corFundo = Colors.white;
          Color corTexto = Colors.black;
          if( indice % 2 == 0){
            corFundo = Colors.black45;
            alinhamento = Alignment.centerRight;
            corTexto = Colors.white;
          }

          return Align(
            alignment: alinhamento,
            child: Padding(padding:EdgeInsets.all(8),
              child: Container(
                width: larguraContainer,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: corFundo,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text(listaMensagens[indice],
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 16,
                      color: corTexto,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,),
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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10,right: 5,left: 5),
                            child: Text(valueItem,
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,),
                            ),),
                          ),
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

    return new WillPopScope(
    onWillPop: () async => false,
      child: Scaffold(
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
                        'Sofia',
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

      ),
    );
  }
}





