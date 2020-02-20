import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/forUs.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        //padding:EdgeInsets.only(left:5, right:5),
        height: 80,
        width:MediaQuery.of(context).size.width,
        child: Card(
          elevation:8 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home, color: Colors.grey
                  ),
                  SizedBox(height:5),
                  Text(
                    'Accueil'
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  Icon(Icons.video_library, color: Colors.grey,),
                  SizedBox(height:5),
                  Text(
                    'video'
                  )
                ],
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ForusPage()
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.ondemand_video, color:Colors.grey),
                    SizedBox(height:5),
                    Text(
                      'Watch'
                    )
                  ],
                ),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ProfilPage()
                  ));
                },
                child:Column(
                children: <Widget>[
                  Icon(Icons.person, color:Colors.grey),
                  SizedBox(height:5),
                  Text(
                    'Profile'
                  )
                ],
              )
              )
          ],),
        ),
      ),
      
    );
  }
}