import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsapp/Data/Cubits/cubit/player_detail_cubit.dart';
import 'package:sportsapp/Shared/players_row.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(""),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PlayersRow(
                              property: "Name",
                              value: "",
                            ),
                            PlayersRow(
                              property: "Number",
                              value: "13",
                            ),
                            PlayersRow(
                              property: "Country",
                              value: "Eygpt",
                            ),
                            PlayersRow(
                              property: "Position",
                              value: "Left-back",
                            ),
                            PlayersRow(
                              property: "Age",
                              value: "25",
                            ),
                            PlayersRow(
                              property: "Yellow Cards Num",
                              value: "2",
                            ),
                            PlayersRow(
                              property: "Red Cards Num",
                              value: "1",
                            ),
                            PlayersRow(
                              property: "Goals",
                              value: "7",
                            ),
                            PlayersRow(
                              property: "Assists",
                              value: "4",
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Close",
                              style: GoogleFonts.inter(
                                color: Color(0xFF04764E),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                        actionsPadding: EdgeInsets.all(20),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      );
                    });
              },
              child: Text("show dialog box")),
        ),
      ),
    );
  }
}
