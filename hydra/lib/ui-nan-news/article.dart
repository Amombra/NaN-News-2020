import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/models/CatArticle.dart';
import 'package:hydra/ui-nan-news/models/categorie.dart';
import 'package:hydra/ui-nan-news/pages/VideoPages/mainVideoPage.dart';
import 'package:hydra/ui-nan-news/pages/detailArticle.dart';
import 'package:hydra/ui-nan-news/pages/drawer.dart';
import 'package:hydra/ui-nan-news/pages/follow.dart';
import 'package:hydra/ui-nan-news/pages/forUs.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  @override
  Widget build(BuildContext context) {
    List<CatArticle> ourArticle = [
   CatArticle(
            id: 1,
            articleName: "TAfro Djazz",
            content: "Tendance Afro style, Tendance Afro style, Tendance Afro style",
            photo: "assets/1.jpg"
          ),

          CatArticle(
            id: 2,
            articleName: "Coronavirus",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/2.jpg"
          ),

           CatArticle(
            id: 3,
            articleName: "Musique ",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/3.jpg"
           ),

           CatArticle(
            id: 4,
            articleName: "Le Nouchi en CI",
            content: "Certains mots du Nouchi font leur entrée dans le dictionnaire",
            photo: "assets/4.jpg"
          ),

          CatArticle(
            id: 5,
            articleName: "Football ",
            content: "Ballon d'or Messi 10",
            photo: "assets/5.jpg"
          ),

];
    List<Categorie> ourCat=[
      Categorie(
        id:1,
        name:"Pour vous" ,
        article: [
          CatArticle(
            id: 1,
            articleName: "Tendance Afro style",
            content: "Tendance Afro style, Tendance Afro style, Tendance Afro style",
            photo: "assets/1.jpg"
          )
        ]
      ),

       Categorie(
        id:2,
        name:"Santé" ,
        article: [
          CatArticle(
            id: 2,
            articleName: "Coronavirus",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/2.jpg"
          )
        ]
      ),

       Categorie(
        id:3,
        name:"Musique" ,
        article: [
          CatArticle(
            id: 3,
            articleName: "The voice afrique francophone",
            content: "Coronavirus en chine fait bcp de degats",
            photo: "assets/3.jpg"
          )
        ]
      ),

      Categorie(
        id:4,
        name:"Culture" ,
         article: [
          CatArticle(
            id: 4,
            articleName: "Le Nouchi fait son entrée dans le dictionnaire",
            content: "Certains mots du Nouchi font leur entrée dans le dictionnaire",
            photo: "assets/4.jpg"
          )
        ]
      ),

      Categorie(
        id:5,
        name:"Football" ,
         article: [
          CatArticle(
            id: 5,
            articleName: "Football ",
            content: "Ballon d'or Messi 10",
            photo: "assets/5.jpg"
          )
        ]
      ),

      Categorie(
        id:6,
        name:"Dance" ,
        article: [
          CatArticle(
            id: 6,
            articleName: "Baby dance battle ",
            content: "Baby dance battle Baby dance battle Baby dance battleabidjan",
            photo: "assets/6.jpg"
          )
        ]
      ),

      Categorie(
        id:7,
        name:"Société" ,
        article: [
          CatArticle(
            id: 7,
            articleName: "Société ",
            content: "Société Société Société Société",
            photo: "assets/6.jpg"
          )
        ]
      )
    ];
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
    drawer: MyDrawer(),
     backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left:15, right: 15, top:30),
                color:Color.fromRGBO(133, 137, 240, 1),
                height:MediaQuery.of(context).size.height/6.5,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Container(
                     height:35,
                     width: 35,
                     decoration:BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         image:AssetImage('assets/7.jpg'),
                         fit:BoxFit.cover
                       )
                     )
                   ),
                  

                  Container(
                    height:45,
                    width: MediaQuery.of(context).size.width/1.5,
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

              Container(
                height: 60,
                margin: EdgeInsets.only(bottom: 7),
                color: Colors.white,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ourCat.length,
                  itemBuilder: (context, i){
                    return InkWell(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(
                      //     builder: (context)=>,
                      //     ),
                      //     )
                      // },
                        child: Container(
                        height: 50,
                        margin: EdgeInsets.only(top:18, bottom:18, left:18, right:20),
                        child: Text(
                          ourCat[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),
                          ),
                        ),
                    );
                  },
                  )
              ),

              //myCarousel(),
              Container(
                margin: EdgeInsets.only(left:5, right: 5),
                height:MediaQuery.of(context).size.height/3.9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ourArticle.length,
                  itemBuilder: (context, i){
                    return Container(
                      height: 160,
                      width: 130,
                      margin: EdgeInsets.only(left:5),
                      decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(ourArticle[i].photo),
                          fit:BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left:8),
                            alignment: Alignment.center,
                            child: Text(
                              ourArticle[i].articleName,
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

              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>DetailsArticle()
                  ));
                },
                /** */
                    child: Container(
                  height:MediaQuery.of(context).size.height/2,
                  child: ListView.builder(
                    itemCount: ourArticle.length,
                    itemBuilder:(context, i) {
                      return Container(
                        width: MediaQuery.of(context).size.height,
                        margin: EdgeInsets.only(left:8, right: 8, bottom:7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white,
                        ),
                        child:Row(
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 140,
                              decoration: BoxDecoration(
                                image: DecorationImage (
                                  image: AssetImage(ourArticle[i].photo),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 9),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 170,
                                      child: Text(
                                        ourArticle[i].articleName,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                        //maxLines: 2,
                                        
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height:15
                                ),

                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 170,
                                      child: Text(
                                       "Il y'a 2 minutes",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color:Colors.grey
                                        ),
                                        //maxLines: 2,
                                        
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:10
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 170,
                                      child: Text(
                                       "13 comments",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.clip,
                                         style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height:8
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('Likes'),
                                    SizedBox(width: 6,),
                                   Icon(Icons.favorite_border, color:Colors.red),
                                   SizedBox(width: 6,),
                                   Text('|'),
                                   SizedBox(width: 6,),
                                   Text('Comments'),
                                   Icon(Icons.email, color:Colors.grey[300]),
                                  ],
                                ),
                              ],
                            )

                            
                          ],
                        )
                      );
                    },
                    
                    )
                ),
              )

              /*Container(
                margin: EdgeInsets.only(left:5, right: 5),
                height:MediaQuery.of(context).size.height/3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ourArticle.length,
                  itemBuilder: (context, i){
                    return Container(
                      height: 250,
                      width: 150,
                      margin: EdgeInsets.only(left:20),
                      decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(ourArticle[i].photo),
                          fit:BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                        )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left:8),
                            alignment: Alignment.center,
                            child: Text(
                              ourArticle[i].articleName,
                            style:TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: 'BAARS'
                            ) ,
                            )),
                    );
                  },
                  ),
              )*/


            ],
          )
        )
      ),
    );
  }
}


     Widget myCarousel(){
      return Container(
        height:170,
        child: Carousel(

          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 4,),
          dotSize: 4,
          indicatorBgPadding: 10,
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/1.jpg'),
            AssetImage('assets/2.jpg'),
            AssetImage('assets/3.jpg'),
          ], 
        ),
      );
    }