// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../Models/sports_app/sports_app.dart';


// class SportsAppRepo {
//   Future<SportsApp?> getPlayerdetail() async {
//     try {
//       var response = await http.get(Uri.parse(
//           "https://apiv2.allsportsapi.com/football/?&met=Players&playerId=103051168&APIkey=62e2370627c73854ecf77d0eef6d91e88b461d60d91bab231a1d42301b62470e"));

//       Map<String, dynamic> deCodedResponse = json.decode(response.body);

//       if (response.statusCode == 200) {
//         SportsApp data = SportsApp.fromJson(deCodedResponse);

//         return data;
//       } else {
//         return null;
//       }
//     } catch (error) {
//       print("Error : $error");
//     }
//   }
// }
