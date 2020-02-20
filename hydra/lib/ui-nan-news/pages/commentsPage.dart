import 'package:flutter/material.dart';
import 'package:hydra/ui-nan-news/pages/forUs.dart';
import 'package:hydra/ui-nan-news/pages/myBottonNavigation.dart';
import 'package:hydra/ui-nan-news/pages/profilPage.dart';

class CommentsPage extends StatefulWidget {
  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(133, 137, 240, 1),
        title:  Container(
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
      ),

      bottomNavigationBar: mynavigationBottom(BuildContext, context),
      body: SingleChildScrollView(
        child:Container(
          child: Column(
            children: <Widget>[
              Container(
                height:MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color:Color.fromRGBO(243,248 , 254, 1),
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, i){
                    return Container(
                      margin:EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                               Container(
                               height:40,
                               width:40,
                               decoration: BoxDecoration(
                                 shape:BoxShape.circle,
                                 image: DecorationImage(
                                   image:AssetImage('assets/article.jpg'),
                                   fit:BoxFit.cover,
                                 )
                               ),
                             ),
                             SizedBox(width:20),
                             Text(
                               'Annie Adams',
                               style: TextStyle(
                                 fontWeight: FontWeight.w600,
                                 fontFamily: 'BAARS',
                                 fontSize: 19
                               ),
                             ),
                             SizedBox(width:100),
                              Text(
                               '20 min',
                               style: TextStyle(
                                 fontWeight: FontWeight.w300,
                                 fontFamily: 'BAARS',
                                 fontSize: 18,
                                 color:Colors.grey[400]
                               ),
                             ),
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(
                              left:10,
                              right: 15
                            ),
                            padding:  EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width/1.2,
                            //height:200,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width/1.2,
                                  child: Text(
                                    "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
                                      style: TextStyle(
                                        fontFamily: 'BAARS',
                                        letterSpacing: 2,
                                        wordSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey

                                      ),
                                  ),
                                ),

                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    IconButton(
                                      icon:Icon(
                                        Icons.message,
                                        color:Colors.grey,
                                        ),
                                        onPressed: (){

                                        },
                                    ),
                                    Text(
                                      'Comment(235)',
                                      style: TextStyle(
                                        color:Colors.grey,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'BAARS',
                                      ),
                                    ),

                                     IconButton(
                                      icon:Icon(
                                        Icons.favorite,
                                        color:Colors.redAccent,
                                        ),
                                        onPressed: (){ }, 
                                    ),

                                    Text(
                                      '5k',
                                      style: TextStyle(
                                        color:Colors.grey,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'BAARS',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

Widget mynavigationBottom(BuildContext, context){
  return Container(
        //padding:EdgeInsets.only(left:5, right:5),
        height: 80,
        width:MediaQuery.of(context).size.width,
        child: Card(
          elevation:8 ,
          child:   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin:EdgeInsets.only(left:12, right:12),
                          height:50,
                          width: MediaQuery.of(context).size.width/1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                             color: Colors.grey[200],
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
                              hintText: 'Envoyer un message',
                              prefixIcon:  Icon(Icons.create),
                              hintStyle: TextStyle(
                                color:Colors.black,
                              ),
                              //contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                              enabledBorder:InputBorder.none
                            ),
                            ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send, color:Color.fromRGBO(133, 137, 240, 1), size: 30,),
                          onPressed: (){},
                        )
            ],
          ),
          ),
        );
      
}
      
    
