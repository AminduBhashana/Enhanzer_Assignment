import 'dart:async';
import 'package:item_list_app/model/item_model.dart';
import 'package:item_list_app/service/repository/item_repository.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqflite.dart';

class DbHelper implements ItemRepository {
   static const String itemTableName = 'ItemDetails';

  static Future<void> createTable(sql.Database database) async {
    await database.execute('''CREATE TABLE $itemTableName(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              Code TEXT,
              Name TEXT,
              Price REAL
    )''');
  }

  static Future<sql.Database> openDB() async{
  return sql.openDatabase(
    'items_db.db',
    version: 1,
    onCreate: (sql.Database database, int version) async{
      await createTable(database);
    }
  );
 }
 
  Future<void> insertItem(Item item) async {
    final db = await openDB();
    await db.insert(
      itemTableName,
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Item>> getItems() async {
    final db = await openDB();
    final List<Map<String, dynamic>> maps = await db.query(itemTableName);
    return List.generate(maps.length, (i) {
      return Item.fromMap(maps[i]);
    });
  } 
  }

  

  


