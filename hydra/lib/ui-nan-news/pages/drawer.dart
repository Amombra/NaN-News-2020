import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            drawer: Drawer(
        child:Container(
          padding:EdgeInsets.only(left:8, top:35),
          color:Colors.grey[200],
          child:SingleChildScrollView(
            child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439__340.jpg"),

                ),
              ),
              accountName: Text("Opportune Katché", style: TextStyle(fontWeight: FontWeight.w700,color:Colors.white),),
              accountEmail: Text("katcheopportune@gmail.com", style: TextStyle(fontWeight: FontWeight.w700, color:Colors.white),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/11/29/13/51/alone-1869997__340.jpg"),
              ),
            ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Radiofm()
                      // ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.radio, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Web Radio",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      //  Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Catword()
                      // ));
                    }, 
                    
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.book, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Enseignement",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),

                SizedBox(
                    height:15
                  ),

                Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      //  Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>VideoApp()
                      // ));
                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.live_tv, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Live WebTV",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      //  Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Informations()
                      // ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.video_library, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Vidéo demande",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                  SizedBox(
                    height:15
                  ),

                 Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      //    Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Mapage()
                      // ));
                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.bookmark_border, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Information",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Donation()
                      // ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Don",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                SizedBox(
                    height:15
                  ),

                   Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>Temoignage()
                      // ));
                    },
                        child:Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.supervised_user_circle, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Témoignage",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width:15
                  ),

                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=>CalendarViewApp()
                      // ));
                    },
                        child: Container(
                          padding:EdgeInsets.only(top:20),
                          height:100,
                          width: 100,
                      color:Colors.white,
                      child:Column(
                        children: <Widget>[
                          Icon(Icons.new_releases, color:Colors.purple),
                          SizedBox(height:7),
                          Text(
                            "Programme",
                            style: TextStyle(
                              color:Colors.purple
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  
                ],
                ),
                
            ],
          ),
          )
        )
      ),
    );
  }
}