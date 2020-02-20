import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hydra/ui-nan-news/pages/VideoPages/uiRadio.dart';
import 'package:hydra/ui-nan-news/pages/VideoPages/video.dart';
import 'package:hydra/ui-nan-news/pages/cinema.dart';
import 'package:hydra/ui-nan-news/pages/follow.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';


class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => new _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with TickerProviderStateMixin {
  
var berlinWallFell = new DateTime.utc(1989, 11, 9);

var madate = DateTime.now().hour;

 @override
    void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController;
    tabController = new TabController(length: 3, vsync: this);

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
               'TV',
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
               'RADIO',
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
               'VIDEO/BUZZ',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
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
          backgroundColor: Color.fromRGBO(133, 137, 240, 1),
        ),
    
        body: 
         new TabBarView(
            controller: tabController,
            children: [
              VideoDesign(),
              Radiofm(),
              VideoDesign(),

            ],
          ),
        
        
      ),
      
    );
    
  }
}

