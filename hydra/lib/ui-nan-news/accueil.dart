import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/article.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
     TabController tabController;
    tabController = new TabController(length: 3, vsync: this);
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/11.jpg"),
                fit:BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
              )
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height:50),
                Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:30, bottom: 60),
                        child:Image.asset(
                          'assets/Logo-nan.png',
                          fit: BoxFit.cover,
                          height:130,
                          width: 130,
                          ),
                      ),
                      
                      // SizedBox(
                      //   width: 250.0,
                      //   child: TyperAnimatedTextKit(
                      //     speed: Duration(seconds: 2),
                      //     text: [
                      //       "It is not enough to do your best,",
                      //       "you must know what to do,",
                      //       "and then do your best",
                      //       "- W.Edwards Deming",
                      //     ],
                      //     textStyle: TextStyle(
                      //         fontSize: 30.0,
                      //         fontFamily: "Bobbers"
                      //     ),
                      //     textAlign: TextAlign.start,
                      //     alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                      //   ),
                      // ),
                      SizedBox(height:15),
                      Container(
                        child:Text(
                          "NEWS FOR ",
                          maxLines: 2,

                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 35,
                            letterSpacing: 4
                          ),
                        )
                      ),

                      Container(
                        child:Text(
                          "OUR TIME ",
                          maxLines: 2,
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 35,
                            letterSpacing: 4
                          ),
                        )
                      ),
                      SizedBox(height:40),
                      Container(
                        margin: EdgeInsets.only(bottom: 80),
                        child:Text(
                          "Personalised for only interest",
                          maxLines: 2,
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            letterSpacing: 1
                            
                          ),
                        )
                      ),

                      SizedBox(height:10),

                      Container(
                         width: 250,
                         height: 50,

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(40),
                              child: RaisedButton(
                             color: Colors.deepPurpleAccent,
                             onPressed:(){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>PageOne()
                              ));
                             },
                             child: Container(
                               child:Text(
                                 'Get started',
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontFamily: "Quillain",
                                   fontSize: 25,
                                   wordSpacing: 3
                                 ),
                               )
                             ),

                           ),
                         ),
                       )

                      
                    ],
                  ),
               
              ],
            ),
          ),
        
      )
      
    );
  }
}