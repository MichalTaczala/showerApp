import 'package:path/path.dart';
import 'package:shower_app/models/shower_data.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static final SqlHelper instance = SqlHelper._init();
  static Database? _database;

  SqlHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('shower_data.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const intType = 'INTEGER NOT NULL';
    const textType = 'TEXT NOT NULL';

    await db.execute('''
CREATE TABLE showerData (
  id $idType,
  seconds $intType,
  date $textType
)
''');
  }

  Future<void> insertShowerData(ShowerData data) async {
    final db = await instance.database;
    await db.insert('showerData', data.toJson());
  }

  Future<List<ShowerData>> fetchShowerData() async {
    final db = await instance.database;
    final result = await db.query('showerData');
    return result.map((json) => ShowerData.fromJson(json)).toList();
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
