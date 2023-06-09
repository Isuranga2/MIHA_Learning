
import 'package:MIHA_Learning/models/firebaseModels/user.dart';
import 'package:MIHA_Learning/services/firebaseServices/userService.dart';

class UserController2{


  Future readAllUsers()async{
    UserService userService = UserService();
    List<User> userList = await userService.readAllUsers();
    //print(userList[0].email);
  }

  Future getUserByID(String userID)async{
    UserService userService = UserService();
    await userService.getUserByID(userID);
  }

  Future writeNewDoc()async{
     UserService userService = UserService();
    await userService.writeNewDoc();
  }

   Future updateDoc()async{
     UserService userService = UserService();
    await userService.updateDoc();
  }
}