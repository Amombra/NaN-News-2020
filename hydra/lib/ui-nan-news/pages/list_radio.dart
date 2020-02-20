import 'package:flutter/material.dart';

class RadioList extends StatefulWidget {
  @override
  _RadioListState createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 137, 240, 1),
        title: Text(
          'Panoplies de Radio'
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Column(
        children: <Widget>[
          /*Début de la listView */
          Container(
            margin: EdgeInsets.only(left:6, right:2),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return Column(
                  children: <Widget>[
                     Container(
                                   height:2,
                                   color:Colors.grey[200],
                                   width: MediaQuery.of(context).size.width,
                                 ),
                    InkWell(
                      onTap: (){
                       
                      },
                         child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 120,
            
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                
                                Container(
                                  margin: EdgeInsets.only(
                                    left:5,
                                    top:12
                                  ),
                                  padding: EdgeInsets.only(
                                    left:20
                                  ),
                                  decoration:myBoxDecoration(),
                                  child: Text(
                                    "Server Room Radio",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color:Colors.black
                                    ),
                                  ),
                                    height: 40,
                                    width: MediaQuery.of(context).size.width / 1.4
                                    ),
                                    SizedBox(height:7),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height:20,
                                         /// color:Colors.black,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin:EdgeInsets.only(
                                                  top:9.9
                                                ),
                                                height:10,
                                                width: 4,
                                                color:Color.fromRGBO(133, 137, 240, 1),
                                              ),
                                              SizedBox(width: 2,),
                                               Container(
                                                  margin:EdgeInsets.only(
                                                  top:2
                                                ),
                                                height:20,
                                                width: 4,
                                                color:Color.fromRGBO(133, 137, 240, 1),
                                              ),
                                               SizedBox(width: 2,),
                                               Container(
                                                  margin:EdgeInsets.only(
                                                  top:5
                                                ),
                                                height:15,
                                                width: 4,
                                                color:Color.fromRGBO(133, 137, 240, 1),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width:10),
                                        Text(
                                                'Log Audio Log Audio',
                                                
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color:Colors.black
                                                ),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height:6),
                                     Row(
                                          children: <Widget>[
                                            Text(
                                              'Log Audio Log',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color:Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                      
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image: AssetImage("assets/article.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          
        ],
      ))),
    );
  }

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border(
      left: BorderSide(
        color: Color.fromRGBO(133, 137, 240, 1),
        width: 3.0,
      ),
    ),
  );
}
}
