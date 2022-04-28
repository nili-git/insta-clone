import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
        children: [
             Row(
             children: 
                [
                  Row(
                    children: [
                      
                         Icon(Icons.shopping_bag_outlined),
                        // IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined,
                        //   color: Colors.white,
                        //  size: 20,)),
                        Text(" nitisagyawali",
                        style: TextStyle( 
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),

                          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                         size: 20,)),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined,
                    color: Colors.white, size: 25,)),
                     SizedBox(width: 10,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined,
                    color: Colors.white, size: 25,),),
                
                  ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                children: [
                  Column(
                    children: 
                      [
                        CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/img5.jpg"),
                      ),
                     SizedBox(height: 10,),
                      Text(" Nitisa Gyawali", style: TextStyle( 
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),),
                    ],
                  ),
                  SizedBox(  width: 30,),
      
                 Column(
                   children: [
                    Text("0", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ), ),
                      SizedBox( height: 5,),
                      Text("Posts", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 15,
                      ),
                      ),
                   ],
                  ),
      
                  SizedBox(  width: 30,),
      
                 Column(
                   children: [
                    Text("71", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ), ),
                      SizedBox( height: 5,),
                      Text("Followers", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 15,
                      ),
                      ),
                   ],
                  ),

                    SizedBox(  width: 30,),
      
                 Column(
                   children: [
                    Text("67", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ), ),
                      SizedBox( height: 5,),
                      Text("Following", style: TextStyle( 
                      color: Colors.white,
                      fontSize: 15,
                      ),
                      ),
                   ],
                  ),
      
                ],
      
                ),
              ),
      
        SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
             child: Row(
               children: 
                 [
                   Container(
                  height: 30,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey, 
                    //border: ,
                  ),
                  child: Center(child: Text(" Edit Profile", style: TextStyle( color: Colors.white,))),
                  
                 ),
                 Spacer(),
                 //SizedBox( width: 15,),

                 Container(

                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                    color: Colors.grey,
                      // borderRadius: BorderRadius.only(
                      //                   bottomLeft: Radius.circular(8),
                      //                   bottomRight: Radius.circular(8),
                      //                   topLeft: Radius.circular(0),
                      //                   topRight: Radius.circular(0),
                      //                 ),
                     borderRadius: BorderRadius.circular(5),
                   ),
                   child: 
                   Icon( Icons.person_add, color: Colors.white,),

                 ),
               ],
             ),
           ),

           SizedBox(
             height: 20,
           ),

           Padding(
             padding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
             child: Row(
               children: [
                 Text(" Discover People", style: TextStyle( color: Colors.white, fontSize: 15,),),
                 Spacer(),
                 Text(" See All",style: TextStyle( color: Colors.blue, fontSize: 15,),),
               ],
             ),
           ),
           
           SizedBox( height: 15,),

           Padding(
             padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
             child: Row(
               
                  children: [
              Container(
               height: 200,
               width: 150,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(3),
               ),
           
              //  child: 
              //  CircleAvatar(
              //    radius: 30,
              //  ),
              ),
             SizedBox( width: 4,),
             
              Container(
               height: 200,
               width: 150,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(3),
               ),
           
              //  child: 
              //  CircleAvatar(
              //    radius: 30,
              //  ),
              ),
              
           
              
           
           
           ],
           
             ),
           ),


      
      
      
        ],
        ),
      ),
    );
  }
}