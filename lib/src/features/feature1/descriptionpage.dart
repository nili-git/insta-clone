import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

final String image;

final String desc;
const DetailPage({Key? key,  required this.image,  required this.desc   })  : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(
              children: [
                Image.asset(widget.image,
                  fit: BoxFit.cover,
                   width: MediaQuery.of(context).size.width,
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 30.0),
                  child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0,),
                   onPressed: () {
                     Navigator.pop(context);
                   }
                   ),
                ),
              ],
            ),
            
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      child: Text( widget.desc,
                        style: TextStyle(
                        fontSize: 16.0 ,fontWeight:FontWeight.normal,color: Colors.black,
                        ) ,
                        ),
                    ),
                    ),
              ),
            ],
          ),
        ),
    );
  }
}









// import 'package:flutter/material.dart';

// class DetailPage extends StatefulWidget {
//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//             Stack(
//               children: [
//                 Image.asset("assets/img2.jpg", 
//                   fit: BoxFit.cover,
//                    width: MediaQuery.of(context).size.width,
//                 ),
//                  Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 30.0),
//                   child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0,),
//                    onPressed: () {
//                      Navigator.pop(context);
//                    }
//                    ),
//                 ),
//               ],
//             ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
                   
//                     child: Expanded(
//                       child: Text('''
//                       Anuradha Koirala (born 14 April 1949) is a Nepalese social activist and the founder of Maiti Nepal – a non-profit organization in Nepal, dedicated to helping victims of sex trafficking.[2]
//                        She was appointed as 1st Governor of Bagmati Province from (17 January 2018 – 3 November 2019) by Government of Nepal
//                        Currently, Maiti Nepal operates a rehabilitation home in Kathmandu, as well as transit homes at the Indo-Nepal border towns, preventive homes in the countryside, and an academy in Kathmandu. 
//                         ''', 
//                         style: TextStyle(
//                         fontSize: 16.0 ,fontWeight:FontWeight.normal,color: Colors.black,
//                         ) , 
//                         ),
//                     ),
             
//                     ),
//               ),
              
//             ],
//           ),
//         ),
//     );
//   }
// }


