 import 'dart:convert';

import 'package:http/http.dart' as http;
//import 'package:instaapp/src/features/feature1/presentation/Model/post.dart';

import '../Model/Post.dart';


Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
   
    return Album.fromJson(jsonDecode(response.body));
  } else {
    
    throw Exception('Failed to load album');
  }
}


// Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }

// class SVBC {
//      UserModel  listPostModel =  UserModel();

// Future userRequest() async {

//   try{
//   String url = "https://devapi.smarthealthnepal.com/api/hospitals/list?search=Nepal&latitude=27.7416639&longitude=85.3091559";
//   // http.["Authorization"] = "Bearer 1512|X0jiMa6FVZQ6kYaxa40TnMdv5LD3FKBOrQsMU5NA";

//   var response = await http.get(Uri.parse(url), headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer 1514|Rx9tOlrCKgWm5NQtuObZ3wTCZiIa9vvLMRg1Z9XD',
//     });
//     // listPostModel = jsonDecode(response.body);
//     if(response.statusCode==200) {

//     print(response.body);
//      return UserModelFromJson(response.body);
//     }else {
//       print(response.statusCode);
//     }

//   }
//   catch(e) {
//     print(e);
//          return listPostModel;

//   }

//  // return http.get(Uri.parse(" https://devapi.smarthealthnepal.com/api/hospitals/list"));
// } 
// }


  


// Future<http.Response> fetchData() {
//   return http.get(Uri.parse('https://devapi.smarthealthnepal.com/api/ '));
// }

// Future<Post?> serverrequest() async {
//   try {
//     String url = "https://jsonplaceholder.typicode.com/posts/1";
//     var response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       Post post = postFromJson(response.body);
//       return post;
//     }
//   } catch (e) {
//     print(e);
//   }
// }

