import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/VideoPages/detailsVideo.dart';

class VideoDesign extends StatefulWidget {
  @override
  _VideoDesignState createState() => _VideoDesignState();
}

class _VideoDesignState extends State<VideoDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
                            Container(
                height:MediaQuery.of(context).size.height,
                child:ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, i){
                    return Container(
                      margin: EdgeInsets.only(top:7),
                      padding:EdgeInsets.all(10),
                     // height: MediaQuery.of(context).size.height/2.5,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child:Column(
                        children: <Widget>[ 
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>DetailsVideos()
                              ));
                            },
                            child: Container(
                              height:200,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                  image:AssetImage('assets/8.jpg'),
                                  fit:BoxFit.cover,
                                  colorFilter: ColorFilter.mode(Colors.black54.withOpacity(.3), BlendMode.darken)
                                )
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.only(left:15, top:15),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "La Tendance à l'état pur ►",
                                      style: TextStyle(
                                        color:Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'BAARS',
                                        fontSize: 23
                                      ),
                                    ),
                                  ),

                                  SizedBox(height:30),

                                  Container(
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black45
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.play_arrow, color:Colors.white, size: 45),
                                      onPressed: (){}
                                    )
                                  ),
                                  
                                  SizedBox(height:5),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right:10),
                                        alignment: Alignment.bottomRight,
                                        height:30,
                                        width: 65,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color:Colors.black54
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '03:09',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight:FontWeight.w600,
                                              fontFamily: 'BAARS'
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 20),

                          Divider(height: 4, color:Colors.grey[400]),

                          SizedBox(height: 10),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             /*Photo*/
                             Container(
                               height:40,
                               width:40,
                               decoration: BoxDecoration(
                                 shape:BoxShape.circle,
                                 image: DecorationImage(
                                   image:AssetImage('assets/article-three.jpg'),
                                   fit:BoxFit.cover,
                                 )
                               ),
                             ),
                             SizedBox(width:10),
                             Text(
                               'NaomieM',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontFamily: 'BAARS',
                                 fontSize: 15,
                                 color: Colors.grey
                               ),
                             ),
                             IconButton(icon:Icon(Icons.add, color: Colors.grey[300],), onPressed: (){},),
                             IconButton(icon:Icon(Icons.favorite_border, color: Colors.grey[300],), onPressed: (){},),

                            // SizedBox(width:40),
                             IconButton(icon:Icon(Icons.share, color: Colors.grey[300],), onPressed: (){},),
                             //SizedBox(width:8),
                             IconButton(icon:Icon(Icons.bookmark_border, color: Colors.grey[300], size:30), onPressed: (){},),
                            ],
                          ),
                        ],
                      )
                    );
                  },
                )
              )
          ],)
        )
      ),
      
    );
  }
}