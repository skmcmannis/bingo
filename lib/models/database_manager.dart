import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {

  static const String DATABASE_NAME = 'bingo.db';
  static const String DATABASE_SCHEMA = 'assets/schema.sql.txt';
  static const String DATABASE_INSERT = 'assets/insert.sql.txt';
  static const String DATABASE_UPDATE = 'assets/update.sql.txt';
  static const String DATABASE_SELECT = 'assets/select.sql.txt';

  static DatabaseManager _instance;

  final Database db;

  DatabaseManager._({Database database}) : db = database;

  factory DatabaseManager.getInstance() {
    assert(_instance != null);
    return _instance;
  }

  static Future initialize() async {
    final databasePath = await getDatabasesPath();

    final db = await openDatabase(join(databasePath, DATABASE_NAME),
      version: 1,
      onCreate: (Database db, int version) async {
        var sql = await rootBundle.loadString(DATABASE_SCHEMA);
        createTables(db, sql);
      }
    );
    _instance = DatabaseManager._(database: db);
  }

  static void createTables(Database db, String sql) async {
    await db.execute(sql);
  }

  Future insertSquare({int squareIndex, int state}) async {
    db.transaction( (txn) async {
      await txn.rawInsert(await rootBundle.loadString(DATABASE_INSERT),
        [squareIndex,
        state]
      );
    });
  }

  Future updateSquare({int squareIndex, int state}) async {
    db.transaction( (txn) async {
      await txn.rawUpdate(await rootBundle.loadString(DATABASE_UPDATE),
        [state,
        squareIndex]
      );
    });
  }

  Future<List<Map>> getSquareStates() async {
    return await db.rawQuery(await rootBundle.loadString(DATABASE_SELECT));
  }

}