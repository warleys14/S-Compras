import 'package:flutter/material.dart';
import 'package:minhas_compras/views/login.dart';

//Tela de Apresentacao onde serão mostradas as funcionalidades do app
class TelaApresentacao extends StatefulWidget {
  @override
  _TelaApresentacaoState createState() => _TelaApresentacaoState();
}

class _TelaApresentacaoState extends State<TelaApresentacao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: 100,
              height: 100,
            ),
            Text(
              "Tela Apresentacao",
              style: TextStyle(color: Colors.blueGrey, fontSize: 20),
            ),
            RaisedButton(
                child: Text("Logar"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                })
          ],
        ),
      ),
    );
  }
}
