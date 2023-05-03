import 'package:elementos02_05_23/Pages/AnimatedTextKit.dart';
import 'package:elementos02_05_23/Pages/FlutterEasyLoadin.dart';
import 'package:elementos02_05_23/Pages/PhotoViewCustom.dart';
import 'package:elementos02_05_23/Pages/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Pages/EmailValidatorPage.dart';


class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings configuracoes) {
    switch (configuracoes.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'Video Player':
        return MaterialPageRoute(builder: (_) => VideoApp());
      case 'Photo View':
        return MaterialPageRoute(builder: (_) => PhotoViewCustom());
      case 'Animated Text Kit':
        return MaterialPageRoute(builder: (_) => AnimatedText());
      case 'Flutter Easy Loadin':
        return MaterialPageRoute(builder: (_) => FlutterEasyLoadin());
      case 'EmailValidator':
        return MaterialPageRoute(builder: (_) => EmailValidatorPage());

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
