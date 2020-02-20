import 'package:flutter/material.dart';

class DetailsVideos extends StatefulWidget {
  @override
  _DetailsVideosState createState() => _DetailsVideosState();
}

class _DetailsVideosState extends State<DetailsVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                     // color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child:Column(
                        children: <Widget>[ 
                           Row(
                                children: <Widget>[
                                  Container(
                                    height:40,
                                    width:40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                        image:AssetImage('assets/article.jpg'),
                                        fit:BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(width:20),
                                  Text(
                                    'Vidéos Interessantes',
                                    style:TextStyle(
                                      color:Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'BAARS'
                                    )
                                  ),

                                  IconButton(
                                    icon:Icon(Icons.add_circle_outline, color:Colors.white60),
                                    onPressed: (){},
                                  )
                                ],
                              ),
                          SizedBox(height:11),
                          Row(
                            children: <Widget>[
                              Text(
                                "Messi Meilleur joueur, ballon d'or 2019, le meilleur ...",
                                style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'BAARS'
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:25),

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
                                    margin: EdgeInsets.only(top:60),
                                    height:80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black45
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.pause,color:Colors.white, size: 45),
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

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             /*Photo*/
                             IconButton(icon:Icon(Icons.favorite_border, color: Colors.grey[300],), onPressed: (){},),
                            Text(
                              '11',
                              style: TextStyle(
                                color:Colors.grey[300],
                                fontFamily: 'BAARS'
                              ),
                              ),
                             IconButton(icon:Icon(Icons.email, color: Colors.grey[300],), onPressed: (){},),
                             Text(
                               '0',
                                style: TextStyle(
                                color:Colors.grey[300],
                                fontFamily: 'BAARS'
                              ),
                               ),
                             IconButton(icon:Icon(Icons.share, color: Colors.grey[300], size:30), onPressed: (){},),
                            Text(
                              '0',
                               style: TextStyle(
                                color:Colors.grey[300],
                                fontFamily: 'BAARS'
                              ),
                              ),
                            ],
                          ),
                          Divider(height: 4, color:Colors.grey[400]),
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