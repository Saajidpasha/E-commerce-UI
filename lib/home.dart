
import 'package:flutter/material.dart';

import 'search_form.dart';
import 'submit_button.dart';

import 'popular_row.dart';

import 'image_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController _tabController;

  List<String> images = ["assets/images/tata_salt.jpg","assets/images/tata_salt.jpg","assets/images/tata_salt.jpg","assets/images/tata_salt.jpg","assets/images/tata_salt.jpg","assets/images/tata_salt.jpg"];

  List<String> imageNames = ["Tata Salt","Tata Salt","Tata Salt","Tata Salt","Tata Salt","Tata Salt"];


  @override

  void initState() {

  _tabController = TabController(length: 6, vsync: this);

    super.initState();
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.transparent,

        elevation: 0,

        leading: IconButton(

          icon: Icon(

            Icons.arrow_back_ios,

            color: Colors.white,
          ),
          onPressed: () {
            //do some stuff
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      extendBodyBehindAppBar: true,

      body:

         SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              //BG IMAGE WITH SEARCH FIELD AND FAVOURITE ICON

              Stack(

                alignment: Alignment.bottomCenter, 
                
                children: [

                ImageContainer.buildImageContainer(context),

                
                
                SearchFormField.buildSearchFormField(context)
              ]),

              //BODY OF THE APP

              buildBodyContainer(context),

               Submit().buildSubmitContainer(context)




            ],
        
        ),
      ),
    );
  }


//BODY CONTAINER

  Widget buildBodyContainer(BuildContext context) {

    return OrientationBuilder(

      builder: (context, orientation) => 
           Container(

              padding: EdgeInsets.all(20),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        Text("OSM Groceries",style: Theme.of(context).textTheme.headline1,),

                        SizedBox(width: 40,),

                          Expanded
                          (
                            child: Column(

                              children: [

                                Text("₹ 480",style: Theme.of(context).textTheme.headline1,),

                                Text("(For Two)",style: const TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),


                                
                              ],
                            ),
                          ),

                      ],
                    ),

           Padding(

                    padding: const EdgeInsets.only(right : 8.0,top: 18.0),

                    child: Row(  

                      mainAxisAlignment: MainAxisAlignment.start,    
                      
                      children: [

                        buildIconTextRow(context),

                        SizedBox(width : 50),

                        buildTimeRow(context),

                        

                    ],),
                  ),

           SizedBox(height : 20),
           
           //ABOUT TEXT

           Padding(

             padding: const EdgeInsets.all(8.0),

             child: Text("All Grocery items available, Masala ingredients,Oil, All Grocery items available, Masala Ingredients, Oil, All Grocery items available, Masala Ingredients Oil etc...",style: Theme.of(context).textTheme.bodyText1,),


           ),

               SizedBox(height : 20),

               //INGREDIENTS TABS

               Text("Ingredients",style: Theme.of(context).textTheme.caption,),

               TabBar(

                 isScrollable: true,

                 controller: _tabController,

               //  indicatorColor: Colors.white,

                 unselectedLabelColor: Colors.black,
                
                 
                 tabs : [

                    tabText(context,"Food Basics"),
                    
                    tabText(context,"Beverages"),

                    tabText(context,"Household"),

                    tabText(context,"Personal Care"),

                    tabText(context,"Baby Items"),

                    tabText(context,"Others"),

                 ]
                 
                 ),


                 //POPULAR ITEMS

                 Container(

                   margin: const EdgeInsets.only(top : 30),
                   
                   child: Column(

                     crossAxisAlignment : CrossAxisAlignment.start,

                     children: [

                      Text("Popular Items",style: Theme.of(context).textTheme.caption,),

                      SizedBox(height : 50),

                      Divider(),

                       buildPopularGrid(context),

                       PopularRow.buildPopularRow(context),

                       PopularRow.buildPopularRow(context),

                       PopularRow.buildPopularRow(context),

                      


                     ],
                   )),



                  
                ],
              ),
            ),
    );
  }



//POPULAR ITEMS


Widget buildPopularGrid(context){

final size = MediaQuery.of(context).size;

  return GridView.builder
  
  (

    itemCount: imageNames.length,

   padding: EdgeInsets.only(bottom : 20),

    physics: ScrollPhysics(),
    
   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 5),

   shrinkWrap: true,
  
   itemBuilder: (context,int index){

     return Container(

          height:size.height / 2,

  

         child: Card(

           color: Colors.white,

           elevation: 2,

     child: Column(

       crossAxisAlignment: CrossAxisAlignment.start,

      children: [


               Container(

                height:  MediaQuery.of(context).orientation == Orientation.landscape ? size.height / 2 :  size.height / 8.5,

                width: size.width / 2,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(29.5),

                  color: Colors.grey,

          image: DecorationImage(

          image: AssetImage(images[index]),


          fit: BoxFit.cover
          )
                ),
        ),

        SizedBox(height : 5),


               Text(imageNames[index],style: Theme.of(context).textTheme.subtitle2,textAlign: TextAlign.start,),

               SizedBox(height : 5),

               Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

              Text("₹ 110 ",style: const TextStyle(color: Colors.orange,fontSize: 20),),

              SizedBox(width: 5,),

              Text("-1",style: Theme.of(context).textTheme.caption,),

              Container(

               height: 42,

               width: 42,

               alignment: Alignment.bottomRight,

               decoration: BoxDecoration(

                     shape: BoxShape.rectangle,

                     color: Colors.orange,

                     borderRadius: BorderRadius.circular(15)

               ),

               child: IconButton(onPressed: (){},icon : Icon(Icons.add,size: 20,),color : Colors.white))

          ],
          )
               
            
      ],
     ),
         ),
       );
   });
}





 //TAB TEXT

Widget tabText(BuildContext context,String text){


  return Container(

    width: MediaQuery.of(context).size.width / 3,

    margin : EdgeInsets.symmetric(vertical : 15),

    padding: EdgeInsets.all(10),

    alignment: Alignment.center,
  
  child: Text(text,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),

  decoration: BoxDecoration(

    color: Colors.orange[300],

    borderRadius: BorderRadius.circular(20)
  ),
  
  );
}

  Row buildTimeRow(BuildContext context) {

    return Row(

                      children: [

                        Icon(Icons.electric_bike,color : Theme.of(context).buttonColor,),

                        SizedBox(width : 10),

                        Text("30 Mins",style: const TextStyle(fontSize : 20,color: Colors.amber),),
                      ],
                        );
  }

  Row buildIconTextRow(BuildContext context) {
    return Row(

                       children: [

                       Icon(Icons.star,color: Theme.of(context).buttonColor,),

                       Text("4.6",style: Theme.of(context).textTheme.bodyText1,),


                          ],
                        );
  }



}




