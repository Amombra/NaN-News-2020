import 'package:flutter/material.dart';

class HomeFacebook extends StatefulWidget {
  @override
  _HomeFacebookState createState() => _HomeFacebookState();
}

class _HomeFacebookState extends State<HomeFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        type: BottomNavigationBarType.shifting ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('')
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.access_alarm,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('')
          )
        ],
        ),
        body: SingleChildScrollView(
          child:Container(
            child:Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left:20),
                  height:100,
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Icon(
                      Icons.camera_enhance,
                      color:Colors.white
                    )
                    ],
                    ),
                )
              ],
            )
          )
        ),
        
    );
  }
}