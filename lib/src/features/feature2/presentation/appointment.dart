

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({ Key? key }) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
 
String dropdownValue = 'Male';
 var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 98, 127, 1),

       body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(
              height: 30,
              child: Padding(
              padding: const  EdgeInsets.only(right: 15,left: 15),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children:const [
                   Icon(Icons.arrow_back_ios, color: Colors.white,),
                  Text("New Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,fontWeight: FontWeight.bold),),
                ],),
                 const Icon(Icons.
                 filter_list_rounded,color: Colors.white,),
              ],
              ),
            ),
            ),

            const SizedBox(height: 20,),
            Container(
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height ,
            decoration:  BoxDecoration(
              color: const Color.fromRGBO(236, 247, 251, 1),
            border:  Border.all( width: 1, color:  const Color.fromRGBO(36, 98, 127, 1),
                  ),
            borderRadius: const BorderRadius.only(
             topRight: Radius.circular(20.0),
             topLeft: Radius.circular(20.0),
           ),
         ),
       child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             GestureDetector(
               onTap:  () async {
               
                 await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2060),).then((value) {
                  data= DateFormat.yMMM().format(value!);
                  setState(() {    
                  });
                },);
               // Navigator.pop(context);
                // setState(() {
                //    datea= DateFormat.yMMM().format(time!);
                // });
                //print("hello");
                
               },
               child: Row(
                 children: 
                      [Text(data== null?"${DateFormat.yMMM().format(DateTime.now())}":"$data", style: TextStyle(
                      color: const Color.fromRGBO(45, 74, 72, 1),
                      fontSize: 15,),),
                       Icon(Icons.arrow_drop_down_sharp),
                    ],
               ),
             ),
             SizedBox(height: 20,),

             Row(
               children: 
                 [SizedBox(
                    height: MediaQuery.of(context).size.height*0.12,
                    width: MediaQuery.of(context).size.width -25,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                         itemCount: 8,
                         itemBuilder: (BuildContext context,int index){
                           return Container(
             
                          // height: MediaQuery.of(context).size.height,
                          //width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(5),
                         padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(width: 1, color: const Color.fromRGBO(45, 74, 72, 1),),
                         borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(" 13",
                              style: TextStyle(
                              color: const Color.fromRGBO(45, 74, 72, 1),
                              fontWeight: FontWeight.bold,),),
                              Spacer(),
                              Text("MON",
                              style: TextStyle(
                             color: const Color.fromRGBO(45, 74, 72, 1),
                             fontWeight: FontWeight.bold,),),
                            ],
                          ),
                          );
                           },
                           ),
                 ),
               ],
             ),

            SizedBox(height: 15,),
             Text("AVAILABLE TIME ", style: TextStyle(
             color: const Color.fromRGBO(45, 74, 72, 1),
             fontWeight: FontWeight.bold,
             ),),
            SizedBox(height: 10,),
            
            Column(
              children: [
                
                AvailableTimeCard(title: "09: 00 AM",),
                AvailableTimeCard(title: "09: 00 AM",),
                AvailableTimeCard(title: "09: 00 AM",),
               
                ],
              ),
            SizedBox(height: 10,),
            Text("PATIENT DETAILS",
            style: TextStyle(
             color: const Color.fromRGBO(45, 74, 72, 1),
             fontWeight: FontWeight.bold,
             ), ),
            SizedBox( height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      //border: InputBorder.none,
                      border: UnderlineInputBorder(),
                      label: Text(" NAME* ",
                      textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 15,),),
                      hintText: " Enter Your Name",
                      hintStyle: TextStyle( color: Colors.black, ),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),

                    ),
                  ),
                ),
              ),
            ),

            SizedBox( height: 15,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text(" AGE* ", style: TextStyle(color: Colors.black, fontSize: 15,),),
                    hintStyle: TextStyle( color: Colors.black, ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                   ),
                ),
            ),
              ),
             SizedBox(height: 15,),
             Text("GENDER", style: TextStyle( color: const Color.fromRGBO(45, 74, 72, 1),
             fontWeight: FontWeight.bold),
             ),
         Padding(
          padding: const EdgeInsets.only(left: 30,),
          child: Row(
           children: 
            [
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10),
              child: ChoiceChip(
                label: Text("MALE",
                style: TextStyle( 
                  color: const Color.fromRGBO(45, 74, 72, 1),
                  ),),
                selected: false,
                disabledColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            SizedBox(width: 10,),
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10),
              child: ChoiceChip(
                label: Text("FEMALE",
                style: TextStyle( color: const Color.fromRGBO(45, 74, 72, 1),),),
                selected: false,
                disabledColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            SizedBox(width: 10,),
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10),
              child: ChoiceChip(
                label: Text("OTHER",
                style: TextStyle( color: const Color.fromRGBO(45, 74, 72, 1),),),
                selected: false,
                disabledColor: const Color.fromRGBO(255, 255, 255, 1),
              
              ),
            ),
            SizedBox(width: 10,),
             
           DropdownButton<String>(
           // value: dropdownValue,
           icon: const Icon(Icons.arrow_drop_down),
           underline: Container(
           //height: 2,
           //color: Colors.deepPurpleAccent,
          ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Male', 'Female', 'Others',]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      ),
            
          ],
    ),
  ),

  SizedBox(height: 15,),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 30, 10),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text(" MENTION VITAL PROBLEM ",
                      textAlign: TextAlign.start, style: TextStyle(color: const Color.fromRGBO(45, 74, 72, 1), fontWeight: FontWeight.bold),),
                      hintText: " Your Problem",
                      hintStyle: TextStyle( color: Colors.black, ),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),

                    ),
                  ),
                ),
              ),
    ),

          SizedBox( height: 20,),
            Text(" Upload your File from previous meet",
            style: TextStyle( 
              color: const Color.fromRGBO(45, 74, 72, 1),
              fontWeight: FontWeight.bold), ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.builder(
                              gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 150,
  
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ),
                              itemCount: 3,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                 // width: MediaQuery.of(context).size.width,
                                  //margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                                       decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)),
                                       padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                                    child:  Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 0, 15, 20),
                                      //  child: Column(
                                      //    children: [
                                      //      Padding(
                                      //        padding: const EdgeInsets.only(right: 2.0),
                                      //        child: Align(alignment: Alignment.topRight,
                                      //        child: GestureDetector( onTap: () {},
                                      //        child: Icon(
                                      //           Icons.highlight_remove_sharp, ),),),
                                      //      ),
                                      //   Padding(
                                      //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      //     child: Image(image: AssetImage('assets/img1.jpg', ),),
                                      //   ),
                                      //    ],
                                      //  ),

                                        child: Image(
                                          image: AssetImage('assets/img1.jpg', ),
                                        ),
                                        
                                        ),
                                        );
                              }
                              ),
                           ),
                          

              ),


               SizedBox(height: 20,),
               Center(
              child: SizedBox(
               width: 250,
               child: MaterialButton(
                 onPressed: () {
                 },

                 color: const Color.fromRGBO(36, 98, 127, 1),
                 child:  const  Text("BOOK VIDEO CONSULT", style:  TextStyle(
                   color: Colors.white, 
                   fontWeight: FontWeight.bold),),
                   shape:  RoundedRectangleBorder
                   (
                     borderRadius:  BorderRadius.circular(20.0),),
                 ),
              ),
            ),
           
                   const SizedBox(height: 10,),
                     Center(
                       child: SizedBox(
                        width: 250,
                        child: MaterialButton(
                          onPressed: () {
                          },
                          color: const Color.fromRGBO(0, 191, 175, 1),
                          child:  const  Text("BOOK APPOINTMENT", style:  TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),),
                            shape:  RoundedRectangleBorder
                            (
                              borderRadius:  BorderRadius.circular(20.0),),
                          ),
                    ),
                     ),


        


    
      
            ],
          ),
        ),
       ),


            ],
            ),
            ),
          ),  

     );  
  }
}

class AvailableTimeCard extends StatelessWidget {
  String title;
   AvailableTimeCard({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     children: 
       [SizedBox(
          height: MediaQuery.of(context).size.height*0.08,
          width: MediaQuery.of(context).size.width -25,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
               itemCount: 8,
               itemBuilder: (BuildContext context,int index){
                 return Container(
                margin: const EdgeInsets.all(8),
               padding: const EdgeInsets.all(15),
               decoration: BoxDecoration(
               color: Colors.white,
               border: Border.all(width: 1, color: const Color.fromRGBO(45, 74, 72, 1),
               ),
               borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(title,
                  style: TextStyle(
                  color: const Color.fromRGBO(45, 74, 72, 1),
                  fontWeight: FontWeight.bold,),),
                ),
                );
                 },
               ),
       ),
     ],
    );
  }
}


   //                           return Container(
      //                         decoration: BoxDecoration ( borderRadius: BorderRadius.circular (13),
      //                         color: Colors.white, ),
      //                         height: 100, width: 90,
      //                        child: Column ( children: [
      //                        Padding(
      //                        padding: const EdgeInsets.only(
      //                        right: 8.0,
      //                        ), child: Align(
      //                        alignment: Alignment.topRight,
      //                        child: GestureDetector(
      //                        onTap: () {
      //                        controller.remove(index);
      //                        if (prescriptionController
      //                       .hasPresError.value==
      //                         false) { setState(() {
      //                         prescriptionController
      //                         .hasPresError.value = true;
      //                          });
      //           }
      //           },
      //        child: const Icon(
      //          Icons.highlight_remove_sharp))),
      // ),
      //  Container(
      //   child: controller.prescriptionFilePaths[index].path.endsWith(".pdf")
      //      ? Icon (  Icons.picture_as_pdf, size: 70.r, color: secondaryColor,
      //    )
      //      : Image.file(
      //       File(controller.prescriptionFilePaths[index].path),
      //    height: 70. r, fit: BoxFit.cover,
      // )),
      //             ],
      //   ));