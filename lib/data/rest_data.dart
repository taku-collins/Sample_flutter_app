
import 'package:innovative_farming/models/user.dart';
import 'package:innovative_farming/utils/network_util.dart';

class RestData{
  NetworkUtil _netUtil = new NetworkUtil();
  static final Base_url =  "/";
  static final Login_url = Base_url + "/";

  Future<User> login(String username, String password){
    return new Future.value(new User( username, password));
  }

}