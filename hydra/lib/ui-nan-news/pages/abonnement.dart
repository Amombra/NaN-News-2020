import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Abonnements extends StatefulWidget {
  @override
  _AbonnementsState createState() => new _AbonnementsState();
}

class _AbonnementsState extends State<Abonnements> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    var gridView = new GridView.builder(
        itemCount: 9,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            child: new Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  //alignment: Alignment.center,
                  child:Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height:35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image:DecorationImage(
                                image:AssetImage('assets/article.jpg'),
                                fit:BoxFit.cover
                              )
                            ),
                          ),

                          SizedBox(width:8),

                           Text(
                            'Afrikmag',
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'BAARS',
                              fontSize: 20
                            )
                          ),
                        ],
                      ),
                      SizedBox(height:15),
                          Container(
                            width: 80,
                            child: Text(
                              'AfrikMedia Panafricain',
                              style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BAARS',
                                fontSize: 16
                              )
                            ),
                          ),
                      SizedBox(height:5),
                      Container(
                        height:40,
                        width:100,
                        //color:Color.fromRGBO(133, 137, 240, 1),
                        decoration: BoxDecoration(
                          border: Border.all(width:2, color:Color.fromRGBO(133, 137, 240, 1))
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Suivre',
                            style: TextStyle(
                              color:Color.fromRGBO(133, 137, 240, 1),
                              fontFamily: 'BAARS',
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),
                          ),
                        ),
                      )

                    ],
                  )
                ),
              ),
            ),
            onTap: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                child: new CupertinoAlertDialog(
                  title: new Column(
                    children: <Widget>[
                      new Text(
                        "Follow NaN News",
                        ),

                      new Image.asset("assets/9.jpg",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 200,
                      ),
                      SizedBox(height:10),
                      new Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(133, 137, 240, 1),
                      ),
                    ],
                  ),
                  content: new Text("Selected NaN News "),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: new Text("OK"))
                  ],
                ),
              );
            },
          );
        });

    return new Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left:15, right:15, top:8),
          child: gridView,
        ),
      );
    
  }
}