import 'package:flutter/material.dart';
import 'package:instaapp/src/features/feature1/descriptionpage.dart';
import 'package:instaapp/src/features/feature1/presentation/FollowerPage.dart';
import 'package:instaapp/src/features/feature1/presentation/messenger.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      
      controller: controller,
      children:  <Widget>[
        
        MyHomePage(),
        MessagePage(),
       
      ],
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:instaapp/src/features/feature1/descriptionpage.dart';
// import 'package:instaapp/src/features/feature1/presentation/FollowerPage.dart';
// import 'package:instaapp/src/features/feature1/presentation/messenger.dart';


class MyHomePage extends StatefulWidget {
//const MyHomePage({ Key? key required this.like, required this.send }) : super(key: key);
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

bool like= false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       body:  SafeArea(
         child: Column(
          children: [
          SizedBox(
            height: 50,
            child: Padding(
            padding: const  EdgeInsets.only(right: 10,left: 10, top: 20, bottom: 5),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("InstaGram",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic),),

                Row(
                children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowerPage()),);  
                   setState(() {
                        like= !like;
                      });
                  }, 
                 icon: Icon(Icons.favorite),
                 color: Colors.white,
                 // color: like== true? Colors.white:Colors.pink,
                  ),
               SizedBox( width: 15,),

               IconButton(onPressed: () { 
               Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagePage()),);  
               }, icon: Icon(Icons.messenger_outline_outlined),
               color: Colors.white,),
                ],
                ), 
               
            ],
            ),
          ),
          ),
       
          Stories(),

          SizedBox(height: 20,),

            SizedBox(height: 5,),

             FeedList(),
       
           
             ],
          
         ),
       ),
    );
  }
}





class FeedList extends StatefulWidget {
  const FeedList({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedList> createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {

bool like= false;
bool save= false;
bool sendButton= false;
  
  @override
  Widget build(BuildContext context) {
   
    return Expanded(
    child: SizedBox(
      child: ListView.builder(
       scrollDirection: Axis.vertical,
        shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context,int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Row(
             children: [
            CircleAvatar(
           radius: 20.0,
           backgroundImage: AssetImage("assets/img1.jpg"),
        ),
       SizedBox(width: 5),
       Text("Nitisa Gyawali",
       style: TextStyle(color: Colors.white,
       fontSize: 15,),
       
       ),
         ],
       ),
      
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,
         color: Colors.white,)),  
           ],
            ),
                  ),
              GestureDetector(
                  onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(image: "assets/img2.jpg",  desc: "hello, student student student student student",)),);
                   },
                child: Container(
                 height: 300,
                 width: 380,
                 margin: const EdgeInsets.only(bottom: 10),
                 padding: const EdgeInsets.all(5),
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  ),
                                 child: Column(
                                   children: [
                                  Image.asset("assets/img2.jpg",                                    
                                  fit: BoxFit.cover,
                                  height: 290,
                                   width: MediaQuery.of(context).size.width,
                                  ),
                   
                                   ],
                                 ),
                                ),
              ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[ 
                    IconButton(onPressed: () {
                      setState(() {
                        like= !like;
                      });
                    },
                    
                     icon: Icon(Icons.favorite),
                    color: like== true? Colors.white:Colors.pink,
                    ),

                    SizedBox(width:5),
                    IconButton(onPressed: () {}, icon: Icon(Icons.comment),
                    color: Colors.white,),
                    SizedBox(width:5),
                    IconButton(onPressed: () {
                       setState(() {
                        sendButton= !sendButton;
                      });
                    }, 
                    icon: Icon(Icons.send),
                    color: sendButton== true? Colors.white: Colors.pink,),
                    //color: Colors.white,),
              ],
              ),

              IconButton(onPressed: () {
                  setState(() {
                        save= !save;
                      });
              }, 

             // icon ? Icons.bookmark_border : Icons.favorite_border,
              icon: Icon(save== true? Icons.bookmark_border: Icons.bookmark, ),
              color: Colors.white,
              ),                  
             ],
             ),

             SizedBox( height: 5,),
           
             Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
               child: RichText(
                text: TextSpan(
                 text: '399,050 views. ', 
                 style: TextStyle(
                 color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),

                  children: <TextSpan>[ 
                    TextSpan(
                    text: "Liked by ",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: "Shrijana basnet",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.bold),
                  ),
                  ]
                ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
               child: RichText(
                text: TextSpan(
                 text: 'tejasswiprakash ', 
                 style: TextStyle(
                 color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),

                  children: <TextSpan>[ 
                    TextSpan(
                    text: "Are you guys watching? ",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: ".....more",
                    style: TextStyle(
                    color: Colors.grey, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                  ]
                ),
               ),
             ),

              Padding(
                 padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: RichText(
                text: TextSpan(
                 text: 'view all 27,072 comments ', 
                 style: TextStyle(
                 color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
                ),
                ),
              ),

              Padding(
               padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: RichText(
                text: TextSpan(
                 text: 'queen786_h ', 
                 style: TextStyle(
                 color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),

                  children: <TextSpan>[ 
                    TextSpan(
                    text: "Excited",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                
                  ]
                ),
             ),
              ),

             Padding(
               padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
               child: RichText(
                text: TextSpan(
                 text: 'divyanka_22.44 ', 
                 style: TextStyle(
                 color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),

                  children: <TextSpan>[ 
                    TextSpan(
                    text: "No",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                
                  ]
                ),
               ),
             ),

             Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
               child: RichText(
                text: TextSpan(
                 text: '2 days ago .', 
                 style: TextStyle(
                 color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),

                  children: <TextSpan>[ 
                    TextSpan(
                    text: "See translation",
                    style: TextStyle(
                    color: Colors.white, fontSize: 15,
                    fontWeight: FontWeight.normal),
                  ),
                
                  ]
                ),
               ),
             ),

             SizedBox(height: 5,),

         
             ],
            );
       
     
      }

     ),
    ),
    );
  }
}

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
           child: Row(
             children: [
               CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage("https://live.staticflickr.com/5303/5663781539_f39bd6e5c8_b.jpg",),
              ),
        
              SizedBox(width: 25),
       
                CircleAvatar(
                radius: 25.0,      
                backgroundImage: AssetImage('assets/img1.jpg'),
              ),
       
             SizedBox(width: 25),
              CircleAvatar(
              radius: 25.0,
              child: Icon(Icons.image),
              ),
               SizedBox(width: 25),
             ],
           ),
         ),
    );
  }
}