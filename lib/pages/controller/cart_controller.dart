import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/deliverymodel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CartController extends GetxController {
  static Database? _db;
  var cartItems = <ItemModel>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'cart_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE cart(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            isSelected INTEGER
          )
        ''');
      },
    );
  }

  Future<void> addItem(ItemModel item) async {
    var dbClient = await db;
    await dbClient!.insert('cart', item.toMap());
    loadItemsFromDB();
  }

  Future<int> addItemToDB(ItemModel item) async {
    var dbClient = await db;
    return await dbClient!.insert('cart', item.toMap());
  }

  Future<void> loadItemsFromDB() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('cart');
    cartItems.assignAll(
      queryResult.map((data) => ItemModel.fromMap(data)).toList(),
    );
  }

  

  Future<void> removeItemFromDB(int id) async {
    var dbClient = await db;
    await dbClient!.delete('cart', where: 'id = ?', whereArgs: [id]);
    loadItemsFromDB(); 
  }

  Future<void> toggleItemSelection(ItemModel item) async {
    item.isSelected = !item.isSelected;
    var dbClient = await db;
    await dbClient!.update(
      'cart',
      item.toMap(),
      where: 'id = ?',
      whereArgs: [item.id],
    );
    loadItemsFromDB();
  }
}
