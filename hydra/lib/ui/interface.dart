import 'package:flutter/material.dart';
import 'package:hydra/models/hydraModels.dart';
import 'package:hydra/ui/HomeFacebook.dart';
import 'package:hydra/ui/signup.dart';
class Interface extends StatefulWidget {

  
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {

  @override
  Widget build(BuildContext context) {

    List<HydraModels> detailsHydra = [

      HydraModels(
        id: 1,
        name: 'My_Hydra_one',
        lastNmae: 'lastNmae1',
        image:'assets/1.jpg'
      ),

      HydraModels(
        id: 2,
        name: 'My_Hydra_two',
        lastNmae: 'lastNmae2',
        image:'assets/2.jpg'
      ),

      HydraModels(
        id: 3,
        name: 'My_Hydra_three',
        lastNmae: 'lastNmae3',
         image:'assets/3.jpg'
      ),

      HydraModels(
        id: 4,
        name: 'My_Hydra_four',
        lastNmae: 'lastNmae4',
         image:'assets/4.jpg'
      )

];
    return Scaffold(
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
                        onTap: (){},
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>SignUp()
                      ));
                        },
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
                SizedBox(height:70),
             Container(
              
              // alignment: Alignment.center,
              child:
                  Column(
                    children: <Widget>[
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
                            fontSize: 17,
                            fontStyle: FontStyle.italic
                            )
                    ),
                  ),
                     ),
                    
                  SizedBox(height:40),
                  Container(
                    margin: EdgeInsets.only(left:35, right:35),
                    child: TextField(
                      obscureText: true,
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
                        hintText: "Password",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white),
                  ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 17,
                            fontStyle: FontStyle.italic
                            )
                      ),
                    ),
                  ),
                  SizedBox(
                         height:20
                       ),
                  InkWell(
                    onTap: (){
                      
                    },
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
                         height:90
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
                             onPressed:(){
                              //   Navigator.push(context, MaterialPageRoute(
                              //     builder: (context)=>HomQQQeFacebook()
                              // ));
                             },
                             child: Container(
                               child:Text(
                                 'Login',
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