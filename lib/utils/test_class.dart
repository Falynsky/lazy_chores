// import 'package:cached_annotation/cached_annotation.dart';
// import 'package:hive/hive.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class TestClass {
//   static Future<void> test() async {
//     // final lazyBox = await Hive.openLazyBox<String>('hugePeopleBox');
//     // await lazyBox.put('name', 'Falu');
//     // String? name = await lazyBox.get('name');
//     // print(name);

//     PersistentStorageHolder.storage = MyStorageImpl.create();

//     await PersistentStorageHolder.read('dsad');
//   }
// }

// class MyStorageImpl extends CachedStorage {
//   MyStorageImpl(this._storage);

//   final SharedPreferences _storage;
  
//   static Future<MyStorageImpl> create() async {
//     return MyStorageImpl(await SharedPreferences.getInstance());
//   }

//   @override
//   Future<Map<String, dynamic>> read(String key) async {
//     return await _storage.reasetd(key);
//   }

//   @override
//   Future<void> write(String key, Map<String, dynamic> data) async {
//     await _storage.write(key, data);
//   }

//   @override
//   Future<void> delete(String key) async {
//     await _storage.delete(key);
//   }

//   @override
//   Future<void> deleteAll() async {
//     await _storage.deleteAll();
//   }
// }
