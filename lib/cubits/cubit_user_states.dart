import '../Model/userModel.dart';

abstract class CubitUserStates{}

class CubitUserLoading extends CubitUserStates{}
class CubitUserLoaded extends CubitUserStates{
  List<UsersModel> users;
  CubitUserLoaded({required this.users});
}
