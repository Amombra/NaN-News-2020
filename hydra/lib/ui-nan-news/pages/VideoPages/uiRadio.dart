import 'package:flutter/material.dart';

class UiRadios extends StatefulWidget {
  @override
  _UiRadiosState createState() => _UiRadiosState();
}

class _UiRadiosState extends State<UiRadios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child:Container(
          height:MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/article-three.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black87.withOpacity(.6), BlendMode.darken)
              )
          ),
          child:Column(
            children: <Widget>[
              
            ],
          )
        )
      )

    );
  }
}