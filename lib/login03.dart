import 'package:flutter/material.dart';
import 'package:puc_fit/gender.dart';
import 'package:flutter_login/flutter_login.dart';

class Login03 extends StatelessWidget {
  const Login03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/03-login-Screen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      FlutterLogin(
        title: 'PUC Fit',
        logo: const AssetImage('assets/icon.png'),
        onLogin: (_) => Future(() => null),
        onSignup: (_) => Future(() => null),
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const GenderScreen(),
          ));
        },
        onRecoverPassword: (_) => Future(() => null),
        messages: LoginMessages(
            userHint: 'e-mail de usuário',
            passwordHint: 'Senha',
            confirmPasswordHint: 'Confirmar',
            loginButton: 'ENTRAR',
            signupButton: 'INSCREVA-SE',
            forgotPasswordButton: 'Esqueci minha senha',
            recoverPasswordButton: 'ENVIAR',
            goBackButton: 'Voltar',
            confirmPasswordError: 'Not match!',
            recoverPasswordDescription: 'Digite o seu e-mail de cadastro',
            recoverPasswordSuccess: 'Senha resgatada com sucesso',
            recoverPasswordIntro: 'Resete sua senha aqui'),
      )
    ]));
  }
}
