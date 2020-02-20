/*
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hydra/ui-nan-news/pages/cinema.dart';
import 'package:hydra/ui-nan-news/pages/dancePage.dart';
import 'package:hydra/ui-nan-news/pages/follow.dart';
import 'package:hydra/ui-nan-news/pages/forUs.dart';
import 'package:hydra/ui-nan-news/pages/sportPage.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => new _PageOneState();
}

class _PageOneState extends State<PageOne> with TickerProviderStateMixin {
    int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }


var madate = DateTime.now().hour;

 @override
    void initState() {
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController;
    tabController = new TabController(length: 5, vsync: this);

    var tabBarItem = new TabBar(
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.orange,

      tabs: [
        new Tab(
         child:  Column(
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
        ),

        
        new Tab(
          child:  Column(
                   children: <Widget>[
                      Text(
                    'Cinéma',
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
               ],
             )
        ),

        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Pour Vous',
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
               'Dance',
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
               'Sport',
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



     Widget moncarousel(){
      return Container(
        height:200,
        child: Carousel(

          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 4,),
          dotSize: 4,
          indicatorBgPadding: 10,

          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/b.jpeg'),
            AssetImage('assets/c.jpg'),
            AssetImage('assets/d.jpg'),
            AssetImage('assets/e.jpg'),
          ],
          
        ),
      );
    }


    return new DefaultTabController(
      length: 5,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("NaN News"),
          bottom: tabBarItem,
          backgroundColor: Colors.red,
        ),bottomSheet: Container(
          height: 50,
          margin:EdgeInsets.only(left:15, right:15, top:10, bottom:5),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context)=>FollowPage()
                    // ));
                  },
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.home, color:Colors.grey),
                      Text(
                        "Actualités"
                      )
                    ],
                  ),
                ),

                InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context)=>FollowPage()
                    // ));
                  },
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.live_tv, color:Colors.grey),
                      Text(
                        "Tv/Radio"
                      )
                    ],
                  ),
                ),

                 InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context)=>FollowPage()
                    // ));
                  },
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.mail_outline, color:Colors.grey),
                      Text(
                        "Discussion"
                      )
                    ],
                  ),
                ),

                  InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context)=>FollowPage()
                    // ));
                  },
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.category, color:Colors.grey),
                      Text(
                        "Service"
                      )
                    ],
                  ),
                ),

                  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>FollowPage()
                    ));
                  },
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.person_outline),
                      Text(
                        "Profile"
                      )
                    ],
                  ),
                ),
            ],
          )
        ),
        backgroundColor: Colors.grey[300],

        body: 
         new TabBarView(
            controller: tabController,
            children: [
              Container(),
              ForusPage(),
              CinemaPage(),
              SportPage(),
              DancePage()
            ],
          ),
        
        
      ),
      
    );
    
  }
  

}



 */