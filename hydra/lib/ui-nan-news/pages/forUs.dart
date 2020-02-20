import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hydra/ui-nan-news/pages/abonnement.dart';
import 'package:hydra/ui-nan-news/pages/drawer.dart';
import 'package:hydra/ui-nan-news/pages/follow.dart';
import 'package:hydra/ui-nan-news/pages/list_radio.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';
import 'package:hydra/ui-nan-news/pages/VideoPages/mainVideoPage.dart';



class ForusPage extends StatefulWidget {
  @override
  _ForusPageState createState() => new _ForusPageState();
}

class _ForusPageState extends State<ForusPage> with TickerProviderStateMixin {
  
var berlinWallFell = new DateTime.utc(1989, 11, 9);

var madate = DateTime.now().hour;

 @override
    void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController;
    tabController = new TabController(length: 7, vsync: this);

    var tabBarItem = new TabBar(
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.orange,

      tabs: [
        new Tab(
         child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 Text(
               'Suivre',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold
               ),
             ),
           
               ],
             )
           ],
         ),
        ),

        
        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Pour vous',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),

        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Politique',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),

        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Titrologie',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),

        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Football',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),

        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Comedie',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),

        new Tab(
         child: Column(
           children: <Widget>[
             Text(
               'Musique',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold
               ),
             )
           ],
         ),
        ),
      ],
      controller: tabController,
      indicatorColor: Colors.white,
    );


    return new DefaultTabController(
      length: 7,
      child: new Scaffold(
        appBar: new AppBar(
          title: Container(
           // margin: EdgeInsets.only(bottom:18),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Container(
                      height:45,
                      width: MediaQuery.of(context).size.width/1.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                         color: Colors.white24,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                             color:Colors.white
                           ),
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color:Colors.white),
                          hintText: 'Rechercher',
                          hintStyle: TextStyle(
                            color:Colors.white,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          enabledBorder:InputBorder.none

                        ),
                        ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        border:Border.all(width: 3, color:Colors.white)
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'N',
                          style:TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                    )

                    ],
                  ),
          ),
          
          bottom: tabBarItem,
          backgroundColor: Color.fromRGBO(133, 137, 240, 1)
          
        ),
        drawer:Drawer(
        child:Container(
          padding:EdgeInsets.only(left:8, top:35),
          color:Colors.grey[200],
          child:SingleChildScrollView(
            child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/article-three.jpg"),

                ),
              ),
              accountName: Text("NaN News", style: TextStyle(fontWeight: FontWeight.w700,color:Colors.white),),
              accountEmail: Text("nan.news@gmail.com", style: TextStyle(fontWeight: FontWeight.w700, color:Colors.white),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/article-two.jpg"),
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
                            "Radio",
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
                            "NaN News 0",
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
                            "TV",
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
                            "NaN News 1",
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
    

    bottomNavigationBar: Container(
        //padding:EdgeInsets.only(left:5, right:5),
        height: 80,
        width:MediaQuery.of(context).size.width,
        child: Card(
          elevation:8 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                 onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ForusPage()
                  ));
                },
                  child: Column(
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.grey
                    ),
                    SizedBox(height:5),
                    Text(
                      'Accueil'
                    )
                  ],
                ),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>VideoPage()
                  ));
                },
                 child: Column(
                  children: <Widget>[
                    Icon(Icons.video_library, color: Colors.grey,),
                    SizedBox(height:5),
                    Text(
                      'video'
                    )
                  ],
                ),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>RadioList()
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
        body: 
         new TabBarView(
            controller: tabController,
            children: [
              Abonnements(),
              FollowPage(),
              FollowPage(),
              FollowPage(),
              FollowPage(),
              FollowPage(),
              FollowPage(),
            ],
          ),
        
        
      ),
      
    );
    
  }
}

