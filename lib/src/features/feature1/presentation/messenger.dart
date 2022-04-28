import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: 
                  [
                    Row(
                    children: [
                      IconButton(onPressed: () {
                      Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,
                      color: Colors.white,
                      size: 20,)),
                      SizedBox( width: 0),
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
                  IconButton(onPressed: () {}, icon: Icon(Icons.video_call_sharp,
                  color: Colors.white, size: 20,)),
                   SizedBox(width: 10,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add,
                  color: Colors.white, size: 20,),),
              
                ],
              ),
              
             SizedBox(height: 15,),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Container(
                  height: 40,
                  width: 350,
                  child: TextField(
                    onTap: (() {
                    }),
                    decoration:  InputDecoration(
                     // textAlignVertical: TextAlignVertical.center,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          
                           enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                             width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                           hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white,
                           fontSize: 15,
                           ),
                        ),
                       // textAlignVertical: TextAlignVertical.center,
                      ),
                    ),
              ),
        
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                //padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(" Messages",
                   style: TextStyle(color: Colors.white,
                   fontSize: 15,
                   fontWeight: FontWeight.bold,),),
               
                  Text(" Requests",
                  style: TextStyle(color: Colors.blue,
                   fontSize: 15,
                   fontWeight: FontWeight.normal,),),
                ],
                
                ),
              ),
        
        
             SizedBox(height: 15,),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img2.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Arpan kuwar", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
        
               SizedBox(height: 15,),
        
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img1.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Asmin Buddha", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
        
            SizedBox( height: 15,),
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img3.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Krisna Regmi", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
                
                SizedBox( height: 15,),
        
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img4.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Bhuwan Gyawali", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
        
        
              SizedBox( height: 15,),
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img5.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Tara paudel", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
        
               SizedBox( height: 15,),
        
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img6.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Ganga Thapa", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
        
               SizedBox( height: 15,),
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img2.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Preeti Khanal", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),
               SizedBox( height: 15,),
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img4.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Shrijana Basnet", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),

               SizedBox( height: 15,),
               Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/img3.jpg'),
                    ),
                    SizedBox(width: 10,),
        
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Bindu kuwar", 
                        style: TextStyle( color: Colors.white, fontSize: 15,),),
                         Text(" Replied to your story . 4 w", style: TextStyle( color: Colors.grey, fontSize: 15,),),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, 
                    icon: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,),),
                  ],),
                ),
              ),

                SizedBox( height: 15,),
               
               Chats( image: "assets/img1.jpg", name: "hello", content: "good morning",),
        
        
             
            ],
          ),
        ),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  String image;
  String name;
  String content;

   Chats({
    Key? key,
        required this.image, required this.name, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
     child: Container(
       child: Row(
         children: [
         CircleAvatar(
         radius: 25,
         backgroundImage: AssetImage(image),
         ),
         SizedBox(width: 10,),
        
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name, 
             style: TextStyle( color: Colors.white, fontSize: 15,),),
              Text(content, style: TextStyle( color: Colors.grey, fontSize: 15,),),
           ],
         ),
         Spacer(),
         IconButton(onPressed: () {}, 
         icon: Icon(Icons.camera_alt_outlined,
         color: Colors.white,),),
       ],),
     ),
              );
  }
}