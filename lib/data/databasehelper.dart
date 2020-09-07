import 'package:innovative_farming/models/user.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io' as io;


class DataBaseHelper{
  static final DataBaseHelper _instance = new DataBaseHelper.internal();
  factory DataBaseHelper() => _instance;

  static Database  _db;

  Future<Database> get db async{
    if(_db != null){
      return _db;
    }

    _db = await initDb();
    return _db;
  }

  DataBaseHelper.internal();

  initDb() async{
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE User(id INTEGER KEY, username TEXT, password TEXT)");
    print("Table is created");
  }

  // Insert into db
  Future<int> saveUser(User user) async{
    var dbClient = await db;
    int res = await dbClient.insert("User", user.toMap());
    return res;
  }

  // Delete user table
  Future<int> deleteUser(User user) async{
    var dbClient = await db;
    int res = await dbClient.delete("User" );
    return res;
  }
}