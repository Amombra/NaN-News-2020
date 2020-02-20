import 'package:flutter/material.dart';

class FavoriteDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.grey[200],
      body:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, i){
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(top:20),
                      width: MediaQuery.of(context).size.width,
                      child:Column(
                        children: <Widget>[
                         
                          GestureDetector(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(
                              //   builder: (context)=>DetailsArticle()
                              // ));
                            },
                            child:Container(
                            height:170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/article-two.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                              )
                            ),
                            
                          ),
                          ),

                          SizedBox(height: 20),

                         Padding(
                            padding: const EdgeInsets.only(left:8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  child:Text(
                                    "NaN News N°1 de l'actualité ivoirienne",
                                    //overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight:FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  )
                                ),

                                IconButton(
                                  icon:Icon(Icons.favorite, color:Colors.red, size: 35,),
                                  onPressed: (){},
                                )
                              ],
                            ),
                          ),

                           SizedBox(
                            height: 15,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:8, right:8, bottom:15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Catégorie :'
                                    ),

                                     Text(
                                      'Auteur :'
                                    ),

                                     Text(
                                      'Ajouté :'
                                    )
                                  ],
                                ),
                                // SizedBox(
                                //   width:30
                                // ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Sport'
                                    ),

                                     Text(
                                      'Octave'
                                    ),

                                     Text(
                                      'hier'
                                    )
                                  ],
                                ),
                                RaisedButton(
                                  onPressed: (){},
                                  color: Color.fromRGBO(133, 137, 240, 1),
                                  child: Text(
                                    "Relire l'article",
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    );
                  },
                )
    );
  }
}