import 'package:MIHA_Learning/configs/apiConfig.dart';
import 'package:http/http.dart' as http;

class ToDoAPI{

  Future getTodoByID(int id)async{
    var url = Uri.https(BaseAPI, todos+id.toString());
    var response = await http.get(url);
    if(response.statusCode != 200){
      print("Error");
      print('Response status: ${response.statusCode}');
      return null;
    }else{
      return response.body;
    }    
  }
}