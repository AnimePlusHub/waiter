import 'package:waiter/helper/enum.dart';
import 'package:waiter/state/appState.dart';

class AuthState extends AppState{
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
  late String userJwt;

  //注销账号
  void logoutCallback() async{
    authStatus = AuthStatus.NOT_LOGGED_IN;
    userJwt = '';

  }
}