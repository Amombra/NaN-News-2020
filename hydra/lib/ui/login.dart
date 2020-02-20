/*import 'package:flutter/material.dart';
import 'package:hydra/models/hydraModels.dart';
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
      backgroundColor: Colors.grey[100],
      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child:Column(
              children: <Widget>[
                Container(
                  height:660,
                  child:ListView.builder(
                      scrollDirection: Axis.vertical,
                     itemCount: detailsHydra.length,
                     itemBuilder: (context, i){
                       return Container(
                         margin: EdgeInsets.only(left:50, right: 50, bottom:20),
                         //height:100,
                         width: 150,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           border:Border.all(width:1, color:Colors.grey[200]),
                           color:Colors.white
                         ),
                         child:Column(
                           children: <Widget>[
                             Container(
                               height:150,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image:AssetImage(detailsHydra[i].image),
                                   fit: BoxFit.cover,
                                   colorFilter:ColorFilter.mode(Colors.black54, BlendMode.darken)
                                 ),
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(30),
                                   topRight: Radius.circular(30),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:5
                             ),
                             Text(
                               'Bootcamp Flutter',
                               style:TextStyle(
                                 color:Colors.red,
                                 fontSize:20,
                                 fontWeight:FontWeight.bold
                               )
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left:10),
                               child: Row(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.center,
                                     child: Text(
                                      detailsHydra[i].name,
                                       style: TextStyle(
                                         //color:Colors.white,
                                         fontWeight: FontWeight.w400,
                                         fontSize: 20
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height:10),
                             Padding(
                               padding: const EdgeInsets.only(left:10),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Text(
                                    detailsHydra[i].lastNmae,
                                     textAlign:TextAlign.justify ,
                                   ),
                                   Icon(Icons.star, color:Colors.amber),
                                 
                                 ],
                               ),
                             ),
                           ],
                         )
                       );
                     },
                    ),
                )
              ],
            )
          ),
        ),
      )
    );
  }
}*/