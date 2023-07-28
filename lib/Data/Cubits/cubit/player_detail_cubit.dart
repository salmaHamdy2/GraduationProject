// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:sportsapp/Data/Models/sports_app/sports_app.dart';
// import 'package:sportsapp/Data/Repositories/sports_app_repo.dart';

// part 'player_detail_state.dart';

// class PlayerDetailCubit extends Cubit<PlayerDetailState> {
//   PlayerDetailCubit() : super(PlayerDetailLoading());
//   getPlayers() {
//     SportsAppRepo().getPlayerdetail().then((value) {
//       if (value != null) {
//         emit(PlayerDetailSucsess(ourResponse: value));
//       } else {
//         emit(PlayerDetailError());
//       }
//     });
//   }
// }
