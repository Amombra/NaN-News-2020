import 'package:flutter/material.dart';


class ProfilPage extends StatefulWidget {


  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {


  @override
  void initState() {
    super.initState();    
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height:250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/5.jpg'),
                      colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                      fit: BoxFit.cover
                      )

                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 110, bottom: 80),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Mon Profil',
                              //textAlign: TextAlign.center,
                              style:TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                fontFamily: "Quillain",
                              )
                            ),

                            SizedBox(width: 20,),
                            Icon(Icons.favorite_border, color:Colors.white, size: 30),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:170,left:30),
                  height:300,
                  width: 300,
                  color:Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height:55),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Text(
                             'NaN News',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                              fontFamily: 'BAARS',
                            ),
                          ),
                          )
                        ],
                      ),
                      SizedBox(height:10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add_location, color: Colors.grey[400]),
                          SizedBox(width: 15,),
                          Text(
                            'Angré Gestoci',
                            
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'BAARS',
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 30),
                          Column(
                            children: <Widget>[
                              Text(
                                '125',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BAARS',
                                ),
                              ),
                              SizedBox(height:7),
                              Text(
                                'Posts',
                                style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'BAARS',
                                color: Colors.grey[400]
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: <Widget>[
                              Text(
                                '249',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BAARS',
                                ),
                              ),
                              SizedBox(height:7),
                              Text(
                                'Followers',
                                style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[400],
                                fontFamily: 'BAARS',
                                ),
                              )
                            ],
                          ),
                           SizedBox(width: 30),
                          Column(
                            children: <Widget>[
                              Text(
                                '130',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BAARS',
                                ),
                              ),
                              SizedBox(height:7),
                              Text(
                                'Following',
                                style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'BAARS',
                                color: Colors.grey[400]
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Container(
                             width: 100,
                             height: 40,
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(5),
                                  child: RaisedButton(
                                 color: Color.fromRGBO(133, 137, 240, 1),
                                 onPressed:(){
                                  //   Navigator.push(context, MaterialPageRoute(
                                  //     builder: (context)=>HomQQQeFacebook()
                                  // ));
                                 },
                                 child: Container(
                                   child:Text(
                                     'Share',
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontSize: 20,
                                       fontWeight: FontWeight.w500,
                                       fontFamily: 'BAARS',
                                     ),
                                   )
                                 ),

                               ),
                             ),
                           ),

                           Container(
                             width: 100,
                             height: 40,
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(5 ),
                                  child: RaisedButton(
                                 color: Color.fromRGBO(133, 137, 240, 1),
                                 onPressed:(){
                                  //   Navigator.push(context, MaterialPageRoute(
                                  //     builder: (context)=>HomQQQeFacebook()
                                  // ));
                                 },
                                 child: Container(
                                   child:Text(
                                     'Suivre',
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontSize: 20,
                                       fontWeight: FontWeight.w500,
                                       fontFamily: 'BAARS',
                                     ),
                                   )
                                 ),

                               ),
                             ),
                           )
                     ],
                   )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:135,left:130),
                  height:85,
                  width: 85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage('assets/1.jpg'),
                      fit: BoxFit.cover
                      
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 320,
              width: 395,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Photos',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'BAARS',
                          ),
                        )
                      ],),

                      SizedBox(height:10),
                      Container(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Row(
                          children: <Widget>[
                            Image.asset('assets/3.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/4.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/2.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/1.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            )
                          ],
                        ),
                        
                        
                          ],
                        )
                      ),
                      //  SizedBox(height:10),
                      Container(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Row(
                          children: <Widget>[
                            Image.asset('assets/3.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/2.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/1.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            ),
                            SizedBox(width:20),
                             Image.asset('assets/4.jpg',
                            fit:BoxFit.cover,
                            height: 100,
                            width: 100,
                            )
                          ],
                        ),
                       
                        
                          ],
                        )
                      ),
                  
                 
                  ],
                ),
              ),
            ),
            SizedBox(height:10),
             Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                           Text(
                            'Review',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'BAARS',
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      pofilDetails( Icons.favorite_border , 'Home'),
                      pofilDetails( Icons.email, 'Boite de reception'),
                      pofilDetails( Icons.star , 'Favoris'),
                      pofilDetails( Icons.person_add , 'Amis'),
                      pofilDetails( Icons.file_download , 'Téléchargement'),

                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Text(
                                'Favorites : ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'BAARS',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17
                                ),
                              ),
                        Icon(Icons.star,color: Colors.amber,),
                        Icon(Icons.star,color: Colors.amber,),
                        Icon(Icons.star,color: Colors.amber,),
                        Icon(Icons.star,color: Colors.amber,),
                        Icon(Icons.star_half,color: Colors.amber,)
                    ],),
                   
                    ],
                  ),
                ),
                  ),

                  Container(
                    color:Colors.white,
                    width:double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin:EdgeInsets.only(bottom: 15),
                            child: Text(
                                  'Se connecter',
                                  textAlign: TextAlign.center,
                                  style:TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                    fontFamily: 'BAARS',
                                  ) ,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  sociallink(Colors.blue, Icons.face, Colors.white),
                                  Text(
                                    'Facebook',
                                    style:TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.w400
                                    )
                                  )
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  sociallink(Color.fromRGBO(133, 137, 240, 1), Icons.phone_android, Colors.white),
                                  Text(
                                    'Google',
                                    style:TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'BAARS',
                                    )
                                  )
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  sociallink(Colors.cyan, Icons.face, Colors.white),
                                  Text(
                                    'Téléphone',
                                    style:TextStyle(
                                    fontSize:15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'BAARS',
                                    )
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    color:Colors.white
                  )
          ],
        ),
          ],
        )
      )
      
    );
  }
}
 Widget pofilDetails(IconData  icones, String name){
  return      Row(
                  children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height:35,
                                width: 35,
                                margin:EdgeInsets.only(bottom:10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(133, 137, 240, 1),
                                ),
                                child: Icon(
                                  icones,
                                  color:Colors.white
                                  ),
                                )
                          ],
                          ),
                          SizedBox(width:30),

                          Column(
                            children: <Widget>[
                              Text(
                                name,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'BAARS',
                                  fontSize: 17
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color:Colors.grey[300]
                            )
                        ],
                      ); 
              }

Widget sociallink(Color backColor, IconData  myIcon, Color couleur){
             return Container(
                            margin:EdgeInsets.only(bottom:10),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 55,
                                      width:55,
                                      decoration:BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:backColor
                                      ),
                                      child:Icon(myIcon, color:couleur, size:40)
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
}

/* */

