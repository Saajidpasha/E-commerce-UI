import 'package:flutter/material.dart';


class PopularRow{


  //POPULAR ROW

static Widget buildPopularRow(context){

  final size = MediaQuery.of(context).size;

          print(MediaQuery.of(context).orientation  == Orientation.landscape);


  return 

      
    Card(

      elevation: 5,

      shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(29)),

      child: Container(

        padding: EdgeInsets.all(10),

        child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,


            children: [

        Column(
            
          children: [

            Text("Sugar",style: Theme.of(context).textTheme.caption,),

            SizedBox(height : 10),

            Text("₹ 480",style: Theme.of(context).textTheme.headline2,)


          ],
        ),

        Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text("-",style: Theme.of(context).textTheme.caption,),

             SizedBox(height : 10),

            Text("1",style: Theme.of(context).textTheme.caption,),

             SizedBox(height : 10),

            Container(
              
              

              decoration: BoxDecoration(

                shape: BoxShape.rectangle,

                color : Colors.orange,

              ),
            
            
            child: Icon(Icons.add,color: Colors.white,)),



          ],
        ),


            Container(

              height: size.height / 6,

              width: 80,

              decoration: BoxDecoration(

                image: DecorationImage(

                  image: AssetImage("assets/images/bread.jpg"),

                  fit: BoxFit.cover
                )
              ),
            )




            ],
          ),

      ),
    );
 
}

}