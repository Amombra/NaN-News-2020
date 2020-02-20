import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';
class DetailsArticle extends StatefulWidget {
  @override
  _DetailsArticleState createState() => _DetailsArticleState();
}

class _DetailsArticleState extends State<DetailsArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(
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
                  Icon(Icons.favorite_border, color: Colors.grey,),
                  SizedBox(height:5),
                  Text(
                    "J'aime"
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  Icon(Icons.add_comment, color: Colors.grey,),
                  SizedBox(height:5),
                  Text(
                    "Comments"
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  Icon(Icons.filter_vintage,color: Colors.grey,),
                  SizedBox(height:5),
                  Text(
                    'Profile'
                  )
                ],
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ProfilPage()
                  ));
                },
                child:Column(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.grey,),
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
      body:SingleChildScrollView(
        child:Container(
          child:Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height:MediaQuery.of(context).size.height/2.9,
                    width:MediaQuery.of(context).size.width,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft:Radius.circular(70)
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/4.jpg"),
                        fit:BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                      )
                    ),
                      child: Center(
                         child: Text(
                          'CoronaVirus',
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BAARS',
                            fontSize: 30,
                            letterSpacing: 3
                          ),
                        ),
                      ),
                  ),
                  // Positioned(
                  //   bottom: -60,
                  //   right:-5,
                  //     child: Container(
                  //     height:100,
                  //     width: 100,
                  //     decoration:BoxDecoration(
                  //       shape:BoxShape.circle,
                  //       color: Colors.white,
                  //       //border:Border.all(color:Colors.purple, width: 2),
                  //     )
                  //   ),
                  // ),
                ],
              ),

              SizedBox(height:5),

                  Container(
                    margin: EdgeInsets.only(left:5, right:5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Lorem ipsum ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                              fontFamily: 'BAARS',
                          ),
                        ),

                        IconButton(
                          icon: Icon(Icons.favorite_border, color:Colors.red, size: 35),
                          onPressed: (){},
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color:Colors.grey, size: 35),
                          onPressed: (){},
                        )

                      ],
                    ),
                  ),
                  SizedBox(height:15),
                  Container(
                    margin:EdgeInsets.only(left:8, right:8),
                    height: MediaQuery.of(context).size.height/2,
                    child:
                        Text(
                      "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        wordSpacing: 2,
                        letterSpacing: 2,
                        fontSize: 19,
                        fontFamily: 'BAARS',
                      ),
                     
                    ),
                      
                    
                  ),
            ],
          )
        )
      )
    );
  }
}