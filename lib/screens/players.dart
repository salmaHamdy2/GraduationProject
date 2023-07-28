// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportsapp/Shared/players_row.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Data/Cubits/cubit/player_detail_cubit.dart';

// ignore: must_be_immutable
class Teams extends StatefulWidget {
  Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  TextEditingController _searchController = TextEditingController();

  void initState() {
    // TODO: implement initState
    super.initState();

    if (mounted) {
      context.read<PlayerDetailCubit>().getPlayers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 15, right: 15, bottom: 15),
              child: Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: InkWell(
                        onTap: () {
                          //context
                          //  .read<PlayerDetailCubit>()
                          // .getAllNews(_searchController.text);
                        },
                        child: Icon(Icons.search),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            BlocBuilder<PlayerDetailCubit, PlayerDetailState>(
              builder: (context, state) {
                if (state is PlayerDetailLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is PlayerDetailSucsess) {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.ourResponse.result!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Card(
                          margin: const EdgeInsets.all(10.0),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(state
                                          .ourResponse
                                          .result![index]
                                          .playerImage ??
                                      ""),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text:
                                        '       ${state.ourResponse.result![index].playerName ?? ""}\n',
                                    style: TextStyle(
                                        color: Color(0xFF090A0A),
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            '\n       ${state.ourResponse.result![index].playerType ?? ""}',
                                        style: TextStyle(
                                          color: Color(0xFF72777A),
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '   ,  ${state.ourResponse.result![index].playerNumber ?? ""}',
                                        style: TextStyle(
                                          color: Color(0xFF72777A),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerImage ??
                                              ""),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        PlayersRow(
                                          property: "Name",
                                          value: state.ourResponse
                                                  .result![index].playerName ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Number",
                                          value: state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerNumber ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Country",
                                          value: state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerCountry ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Position",
                                          value: state.ourResponse
                                                  .result![index].playerType ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Age",
                                          value: state.ourResponse
                                                  .result![index].playerAge ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Yellow Cards Num",
                                          value: state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerYellowCards ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Red Cards Num",
                                          value: state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerRedCards ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Goals",
                                          value: state.ourResponse
                                                  .result![index].playerGoals ??
                                              "",
                                        ),
                                        PlayersRow(
                                          property: "Assists",
                                          value: state
                                                  .ourResponse
                                                  .result![index]
                                                  .playerAssists ??
                                              "",
                                        ),
                                      ],
                                    ),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                );
                              });
                        },
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text("Error"),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
