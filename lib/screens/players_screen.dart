// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sportsapp/Data/Cubits/cubit/player_detail_cubit.dart';
// import 'package:sportsapp/Shared/players_row.dart';

// class PlayersScreen extends StatelessWidget {
//   const PlayersScreen({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 context.read<PlayerDetailCubit>().getPlayers();
//                 showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return BlocBuilder<PlayerDetailCubit, PlayerDetailState>(
//                         builder: (context, state) {
//                           if (state is PlayerDetailLoading) {
//                             return Center(child: CircularProgressIndicator());
//                           } else if (state is PlayerDetailSucsess) {
//                             return AlertDialog(
//                               content: Column(
//                                 children: [
                                  
//                                   CircleAvatar(
//                                     radius: 50,
//                                     backgroundImage: NetworkImage(state
//                                             .ourResponse
//                                             .result![7]
//                                             .playerImage ??
//                                         "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930"),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                   ),
//                                   PlayersRow(
//                                     property: "Name",
//                                     value: state.ourResponse.result![0]
//                                             .playerName ??
//                                         "",
//                                   ),
//                                   PlayersRow(
//                                     property: "Number",
//                                     value: "13",
//                                   ),
//                                   PlayersRow(
//                                     property: "Country",
//                                     value: "Eygpt",
//                                   ),
//                                   PlayersRow(
//                                     property: "Position",
//                                     value: "Left-back",
//                                   ),
//                                   PlayersRow(
//                                     property: "Age",
//                                     value: "25",
//                                   ),
//                                   PlayersRow(
//                                     property: "Yellow Cards Num",
//                                     value: "2",
//                                   ),
//                                   PlayersRow(
//                                     property: "Red Cards Num",
//                                     value: "1",
//                                   ),
//                                   PlayersRow(
//                                     property: "Goals",
//                                     value: "7",
//                                   ),
//                                   PlayersRow(
//                                     property: "Assists",
//                                     value: "4",
//                                   ),
//                                 ],
//                               ),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text(
//                                     "Close",
//                                     style: GoogleFonts.inter(
//                                       color: Color(0xFF04764E),
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 )
//                               ],
//                               actionsPadding: EdgeInsets.all(20),
//                               shape: const RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20))),
//                             );
//                           } else {
//                             return Center(
//                               child: Text("Error"),
//                             );
//                           }
//                         },
//                       );
//                     });
//               },
//               child: Text("show dialog box")),
//         ),
//       ),
//     );
//   }
// }
