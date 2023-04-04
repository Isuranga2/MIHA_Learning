// ignore_for_file: file_names

import 'package:MIHA_Learning/models/user.dart';

class UserController {
  static User? _user;

  //Setter
  void setUser(User? user) {
    _user = user;
  }

  //Getter
  User? getUser() {
    return _user;
  }
}
