import 'package:flutter/material.dart';
import 'package:hydra/ui/interface.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child:Column(
              children: <Widget>[
                SizedBox(height:30),
                Stack(
                  alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Container(
                        height:90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),

                      Container(
                        height:60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
                        ),
                      ),

                      Container(
                        height:30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                ),

                SizedBox(height:40),
              /*  Ligne de login et SignUp */
                Center(
                     child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Interface()
                      ));
                        },
                       child: Container(
                         margin:EdgeInsets.only(left:50),
                         child:Text(
                           'Login',
                           style:TextStyle(
                             color:Colors.white,
                             fontWeight:FontWeight.w300,
                             fontSize: 30,
                             fontFamily: "Quillain",
                             decoration: TextDecoration.underline,
                           )
                         )
                       ),
                      ),
                      SizedBox(width:70),
                       InkWell(
                        onTap: (){},
                       child: Container(
                         margin:EdgeInsets.only(left:20),
                         child:Text(
                           'SignUp',
                           style:TextStyle(
                             color:Colors.white,
                             fontWeight:FontWeight.w300,
                             fontSize: 30,
                             fontFamily: "Quillain",
                             decoration: TextDecoration.underline,
                           )
                         )
                       ),
                      )
                    ],
                  ),
                ),
                SizedBox(height:50),
             Container(
              
              // alignment: Alignment.center,
              child:
                  Column(
                    children: <Widget>[
                      /* Input de Email */
                     Container(
                        margin: EdgeInsets.only(left:35, right:35),
                       child: TextField(
                          keyboardType: TextInputType.emailAddress,
                         style: TextStyle(
                           color:Colors.white
                         ),
                    decoration: InputDecoration(
                       icon: Icon(
                          Icons.account_circle,
                          color:Colors.white
                        ),
                        hintText: "Email",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white),
                  ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.italic
                            )
                    ),
                  ),
                     ),
                    
                  SizedBox(height:20),
                  /* Input de PassWord */
                  Container(
                    margin: EdgeInsets.only(left:35, right:35),
                    child: TextField(
                      obscureText: true,
                       style: TextStyle(
                           color:Colors.white
                         ),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color:Colors.white
                        ),
                        hintText: "Password",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white),
                  ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.italic
                            )
                      ),
                    ),
                  ),
                  SizedBox(
                         height:20
                       ),
                       /* Input de Numéro */
                  Container(
                    margin: EdgeInsets.only(left:35, right:35),
                    child: TextField(
                      textInputAction: TextInputAction.send,
                      keyboardType: TextInputType.number,
                       style: TextStyle(
                         
                           color:Colors.white
                         ),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color:Colors.white
                        ),
                        hintText: "Numéro",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white),
                  ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.italic
                            )
                      ),
                    ),
                  ),
                  SizedBox(
                         height:20
                  ),
                /* Input de Quartier */
                  Container(
                    margin: EdgeInsets.only(left:35, right:35),
                    child: TextField(
                      textInputAction: TextInputAction.send,
                       style: TextStyle(
                           color:Colors.white
                         ),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color:Colors.grey.shade400
                        ),
                        hintText: "Quartier",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white),
                  ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.italic
                            )
                      ),
                    ),
                  ),
                  SizedBox(
                    height:20
                  ),
                  InkWell(
                    onTap: (){},
                      child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right:15),
                      child: Text(
                        'Forget password ?',
                        style: TextStyle(
                          color:Colors.grey[200],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                       SizedBox(
                         height:70
                       ),
                      /*Bouton de connexion */
                      
                       Container(
                         width: 200,
                         height: 50,

                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(20),
                             bottomRight: Radius.circular(20)
                            ),
                              child: RaisedButton(
                             color: Colors.lightGreen,
                             onPressed:(){},
                             child: Container(
                               child:Text(
                                 'SignUp',
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontFamily: "Quillain",
                                   fontSize: 25
                                 ),
                               )
                             ),

                           ),
                         ),
                       )
                      
                    ],
                  )
               
            ),
              ],
            )
          ),
        ),
      )
    );
  }
}