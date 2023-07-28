// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sportsapp/Shared/players_row.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Teams extends StatelessWidget {
  Teams({super.key});

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                left: 15,
                right: 10,
              ),
              child: Row(children: [
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: InkWell(
                        onTap: () {
                          //  context
                          //     .read<AllNewsCubit>()
                          //    .getAllNews(_searchController.text);
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
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
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
                            backgroundImage: NetworkImage(
                                'https://images.indianexpress.com/2023/03/ronaldo-portugal.jpg'),
                          ),
                          RichText(
                            text: TextSpan(
                              text: ' Cristiano Ronaldo',
                              style: TextStyle(
                                  color: Color(0xFF090A0A),
                                  fontWeight: FontWeight.bold),
                              children: const <TextSpan>[
                                TextSpan(
                                  text: '\n	 attacker, #7',
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
                            content: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      "https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.14.png"),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                PlayersRow(
                                  property: "Name",
                                  value: " Omar ",
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
