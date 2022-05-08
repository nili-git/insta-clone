import 'package:flutter/material.dart';
//import 'Sever/Server.dart';

class FollowerPage extends StatefulWidget {
  const FollowerPage({ Key? key }) : super(key: key);


  @override
  State<FollowerPage> createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
 
//   SVBC svbc = SVBC();

//   @override
//   void initState() {
// svbc.userRequest();
//   super.initState();
//   }

  // void fetchData() async {
  //   var user = await userRequest();
  //   //loading = false;

  //   //userList = user.data;
  //   //userList = user.data;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  IconButton(onPressed: () { 
                    Navigator.pop(context);},
                   icon: Icon(Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,)),
                    SizedBox(width: 10,),
                    Text("Activity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
             
             SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                 child: Row(
                   children: [
                     CircleAvatar(
                       radius: 25,
                       backgroundColor: Colors.white,
                       child: Icon(
                         Icons.person_add_alt_outlined, color: Colors.black, size: 30,
                         ),
                     ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Follow requests",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                          Text("Approve or ignore requests", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                        ],
                      ),
                    ),
          
                   ],
                 ),
               ),
          
               Padding(
                 padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
                 child: Text("Today",
                 //textAlign: TextAlign.start,
                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),),
               ),
          
               SizedBox(height: 15,),
          
               Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                    CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img7.jpg"),
                 ),
              SizedBox(
                 width: 15,
             ),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'primethriftclothings, durbarlux ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " and ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                         TextSpan(
                          text: " 3 others ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'started following you. ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " 28 m ",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
                      ),
                     ),
          
                    ],
                ),
              ),
          
              ],
              ),
            ),
                  
            SizedBox( height: 10,),
          
            Padding(
                 padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                 child: Text("This week",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, fontSize: 15),),
               ),
          
              SizedBox(height: 20,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                    CircleAvatar(
                         radius: 25,
                         backgroundColor: Colors.white,
                         child: Icon(
                         Icons.water_drop_outlined, color: Colors.black, size: 30,
                         ),
                       ),
                   SizedBox(
                 width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'Follow ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " Tuna Technology,Nabin Gaire(Dade) ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'and others you know to see their photos and', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'videos.', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "2 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
          
                      ),
                     ),
          
                    ],
                ),
              ),
          
              ],
              ),
            ),
          
              SizedBox(height: 25,),
          
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                     CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img3.jpg"),
                 ),
                   SizedBox(
                 width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'Follow ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " Tuna Technology,Nabin Gaire(Dade) ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'and others you know to see their photos and', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'videos.', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "2 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
          
                      ),
                     ),
          
                    ],
                ),
              ),
          
              ],
              ),
            ),
          
          
             SizedBox(height: 25,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                    CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img5.jpg"),
                 ),
                   SizedBox(
                 width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'manisha ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " is on instagram. ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'pramesh.shrestha.566', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                         children: <TextSpan>[ 
                          TextSpan(
                          text: "and 11",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
                      ),
                     
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'others alseo follow them. ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "3 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
          
                      ),
                     ),
          
                    ],
                ),
              ),
          
               Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("follow",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          
              ],
              ),
            ),
             
          
             SizedBox( height: 20,),
          
            Padding(
                 padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                 child: Text("This month",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, fontSize: 15),),
               ),
          
              SizedBox(height: 20,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                    CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img1.jpg"),
                 ),
                   SizedBox(
                 width: 10,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'tara bhattarai2072 ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: " is on",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Instagram.', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                         children: <TextSpan>[ 
                          TextSpan(
                          text: "shrijana.basnet",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "and 11",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
                        
                      ),
          
          
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Others also follow them.', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "3 w",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
          
                      ),
                     ),
          
                    ],
                ),
              ),
             //Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("follow",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          
              ],
              ),
            ),
          
            SizedBox(height: 25,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                      CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img2.jpg"),
                 ),
                   SizedBox( width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'You follow ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "neetu kappor. ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Fightingfyt,', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "you might like",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
          
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Riddhima Kapoor Sahni. ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "7 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                    ],
                ),
              ),
          
            Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 5, 0),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("follow",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          
              ],
              ),
            ),
                  
            SizedBox(height: 25,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                      CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img2.jpg"),
                 ),
                   SizedBox( width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'You follow ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "neetu kappor. ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Fightingfyt,', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "you might like",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
          
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Riddhima Kapoor Sahni. ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "7 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                    ],
                ),
              ),
          
            Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 5, 0),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("follow",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          
              ],
              ),
            ),
                  

                    SizedBox(height: 25,),
              Padding(
                 padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                 child: Row(
                  children: [
                      CircleAvatar(
                         radius: 25,
                         backgroundImage: AssetImage("assets/img2.jpg"),
                 ),
                   SizedBox( width: 15,),
          
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      RichText(
                      text: TextSpan(
                       text: 'You follow ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
          
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "neetu kappor. ",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Fightingfyt,', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "you might like",
                          style: TextStyle(
                          color: Colors.white, fontSize: 14,
                          fontWeight: FontWeight.normal),
                        ),
                        ]
          
                      ),
                     ),
          
                      RichText(
                      text: TextSpan(
                       text: 'Riddhima Kapoor Sahni. ', 
                       style: TextStyle(
                       color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        children: <TextSpan>[ 
                          TextSpan(
                          text: "7 d",
                          style: TextStyle(
                          color: Colors.grey, fontSize: 14,
                          fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                     ),
          
                    ],
                ),
              ),
          
            Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 5, 0),
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("follow",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          
              ],
              ),
            ),
                  
          
             
          
                  
                  
              ],
            ),
          ),
        ),
      


    );
  }
}