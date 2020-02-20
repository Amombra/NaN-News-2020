import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/favorite_details.dart';

class FovoritePage extends StatefulWidget {
  @override
  _FovoritePageState createState() => _FovoritePageState();
}

class _FovoritePageState extends State<FovoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromRGBO(133, 137, 240, 1),
        title: Text(
          'Favoris'
        ),
      ),
      backgroundColor: Colors.grey[200],
      body:SafeArea(
              child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.only(left:15, right:15),
            child: Column(
              children: <Widget>[
                              Container(
                height:MediaQuery.of(context).size.height,
                child:FavoriteDetails(),
              ),
              ],
              
            ),
          )
        ),
      ),
    );
  }
}