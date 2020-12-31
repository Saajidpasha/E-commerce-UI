

import 'package:flutter/material.dart';

class Submit{


Widget buildSubmitContainer(BuildContext context){



  return   Container(

                       width: MediaQuery.of(context).size.width,

                       padding: const EdgeInsets.all(10),

                       margin: const EdgeInsets.all(10),

                       decoration: BoxDecoration(

                         color: Colors.teal[200],

                         borderRadius: BorderRadius.only(topLeft : Radius.circular(20),topRight: Radius.circular(20))
                       ),

                       child : Row(

                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [

                           Text("1 item | ₹ 55",style: const TextStyle(color: Colors.white,fontSize: 25),),

                           FlatButton.icon(

                             label : Text("View Cart",style: const TextStyle(color: Colors.white,fontSize: 22)),

                             icon: Icon(Icons.shopping_bag,color: Colors.white,),

                             onPressed: (){},
                           ),
                         ],
                       )
                     );

}

}