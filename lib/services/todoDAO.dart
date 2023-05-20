// ignore_for_file: file_names

import 'package:MIHA_Learning/models/todoTask.dart';
import 'package:MIHA_Learning/utils/databaseSetup.dart';

// Handle all CRUD operation of ToDoTask Table
class ToDoDAO {
  var dbConnection;

  //Insert a row
  Future<int> insertTODO(ToDoTask toDoTask) async {
    int outputID = -1;

    // Insert some records in a transaction
    dbConnection = await DatabaseSetup().getDatabaseInstance();
    await dbConnection.transaction((txn) async {
      outputID = await txn.rawInsert(
          'INSERT INTO ToDoTask(task, isDone) VALUES("${toDoTask.task}", ${toDoTask.isDone})');
    });

    print('inserted1: $outputID');
    return outputID;
  }

  //Update a row

  //Read all row
  Future<List<Map>> readTODO() async {
    dbConnection = await DatabaseSetup().getDatabaseInstance();
    List<Map> list = await dbConnection.rawQuery('SELECT * FROM ToDoTask');
    print(list);
    return list;
  }

  //Read a rows

}
