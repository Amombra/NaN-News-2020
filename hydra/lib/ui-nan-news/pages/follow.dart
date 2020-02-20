import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/commentsPage.dart';
import 'package:hydra/ui-nan-news/pages/detailArticle.dart';

class FollowPage extends StatefulWidget {
  @override
  _FollowPageState createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
              /* Container(
                margin: EdgeInsets.only(left:5, right: 5, top:10),
                height:MediaQuery.of(context).size.height/4.8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i){
                    return Container(
                      height: 160,
                      width: 100,
                      margin: EdgeInsets.only(left:5),
                      decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/article.jpg'),
                          fit:BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left:8),
                            alignment: Alignment.center,
                            child: Text(
                              'djjjehjj',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: 'BAARS'
                            ) ,
                            )),
                    );
                  },
                  ),
              ),
              SizedBox(height:5),*/
              /** */
              Container(
                height:MediaQuery.of(context).size.height,
                child:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, i){
                    return Container(
                      margin: EdgeInsets.only(top:7),
                      padding:EdgeInsets.all(10),
                     // height: MediaQuery.of(context).size.height/2.5,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child:Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                             /*Photo*/
                             Container(
                               height:40,
                               width:40,
                               decoration: BoxDecoration(
                                 shape:BoxShape.circle,
                                 image: DecorationImage(
                                   image:AssetImage('assets/1.jpg'),
                                   fit:BoxFit.cover,
                                 )
                               ),
                             ),
                             SizedBox(width:20),
                             Text(
                               'Johana Doe',
                               style: TextStyle(
                                 fontWeight: FontWeight.w600,
                                 fontFamily: 'BAARS',
                                 fontSize: 20
                               ),
                             ),
                             SizedBox(width:70),
                             IconButton(icon:Icon(Icons.share, color: Colors.grey[300],), onPressed: (){},),
                             SizedBox(width:8),
                             IconButton(icon:Icon(Icons.bookmark_border, color: Colors.grey[300], size:33), onPressed: (){},),
                            ],
                          ),
                          SizedBox(height: 20), 
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>DetailsArticle()
                              ));
                            },
                            child: Container(
                              height:150,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                  image:AssetImage('assets/article-two.jpg'),
                                  fit:BoxFit.cover,
                                  colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                                )
                              ),
                              child: Container(
                                padding:EdgeInsets.only(left:15, bottom:20),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "NaN News il y'a 12 minutes ►",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'BAARS',
                                    fontSize: 23
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20),

                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                child: Text(
                                  'Jane Doe is superstar Executive Director of Important Charity',
                                  style: TextStyle(
                                    fontFamily: 'BAARS',
                                    fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                         
                          SizedBox(height: 20),

                          Divider(height: 4, color:Colors.grey[400]),

                          SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon:Icon(Icons.message, color:Colors.grey[400]),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder:(context)=>CommentsPage()
                                  ));
                                },
                              ),
                               SizedBox(width: 15),

                              Text(
                                'Comment(235)',
                                style: TextStyle(
                                  color:Colors.grey[400],
                                  fontFamily: 'BAARS',
                                  fontSize: 17
                                ),
                              ),

                              SizedBox(width: 25),
                              Icon(Icons.favorite, color:Colors.redAccent),
                              SizedBox(width: 10),
                              Text(
                                '521k',
                                style: TextStyle(
                                  color:Colors.grey[400],
                                  fontFamily: 'BAARS',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    );
                  },
                )
              ),
              
            ],
          )
        )
      ),
    );
  }
}