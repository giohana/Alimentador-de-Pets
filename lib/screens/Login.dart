import 'package:flutter/material.dart';
import 'package:flutter_pets/components/Hyperlink.dart';
import 'package:flutter_pets/components/Input.dart';
import 'package:flutter_pets/components/Submit.dart';
import 'package:flutter_pets/screens/Cadastro.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/image/dogAndCat.png",
                height: 100,
              ),
              SizedBox(
                height: 60,
              ),
              Input(
                ctrl: ddd(),
                keyboard: TextInputType.text,
                label: 'Usúario',
              ),
              SizedBox(
                height: 40,
              ),
              Input(
                ctrl: ddd(),
                keyboard: TextInputType.number,
                label: 'Senha',
              ),
              SubmitBotton(
                ctrl: ddd(), 
                title: 'Entrar',),
              Hyperlink(text: 'Esqueci a senha', ctrl: () => launch('https://www.google.com/')),
              SizedBox(
                height: 10,
              ),
              Hyperlink(
                  text: 'Primeiro acesso', 
                  ctrl: () => { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro()))})
                
            ],
          ),
        ),
      ),
    );
  }
}

ddd() {}

submit(){
  
}
