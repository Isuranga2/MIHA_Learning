// ignore_for_file: file_names, prefer_final_fields

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSetup {
  static String _DBName = 'my_db.db';

  Future setUpDB() async {
    var db = await openDatabase(_DBName);
    await db.close();
  }

  void createToDoTaskTable() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _DBName);

    // open the database
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE ToDoTask (id INTEGER PRIMARY KEY, task TEXT, isDone BOOLEAN)');
    });
  }

  Future<Database> getDatabaseInstance() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _DBName);

    // open the database
    Database database = await openDatabase(path, version: 1);
    return database;
  }
}
