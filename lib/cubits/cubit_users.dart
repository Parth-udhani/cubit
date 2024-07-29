import 'package:bloc/bloc.dart';
import 'package:cubitapp/Model/userModel.dart';

import '../repository/user_repo.dart';
import 'cubit_user_states.dart';

class UserCubit extends Cubit<CubitUserStates> {
  final UsersRepo usersRepo = UsersRepo();

  UserCubit() : super(CubitUserLoading()) {
    getData();
  }

  getData() async {
    List<UsersModel> users = await usersRepo.getUsers();
    emit(CubitUserLoaded(users: users));
  }
}
