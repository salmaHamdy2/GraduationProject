import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:sportsapp/screens/players_screen.dart';
import 'package:sportsapp/screens/players.dart';

//import 'Data/Cubits/cubit/player_detail_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //       create: (context) => PlayerDetailCubit(),
        //     ),
        //   ],
        //   child:

        MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // //  primarySwatch: ,
      // ),
      home: Teams(),
    );
    // );
  }
}
