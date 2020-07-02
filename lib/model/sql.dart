import "dart:async";
import 'package:partner_finder/model/user.dart';
import "package:path/path.dart";
import "package:sqflite/sqflite.dart";

class sql{
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'user_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE users(uid INTEGER PRIMARY KEY, display name TEXT, email TEXT)",
      );
    },
    version: 1,
  );
  Future<void> insertUser(User user) async {
  final Database db = await database;

  await db.insert(
    'users',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  final u = User("_displayName", "_email", "_ownerOfClub", "_password", "_id");

  await insertUser(u);
}


}