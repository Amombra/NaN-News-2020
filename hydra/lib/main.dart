import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/accueil.dart';
import 'package:hydra/ui-nan-news/pages/favorite.dart';
import 'package:hydra/ui-nan-news/pages/firstPage.dart';
//import 'package:hydra/ui/interface.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FovoritePage(),
    );
  }
}

