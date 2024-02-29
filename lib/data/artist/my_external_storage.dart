import 'package:cached_annotation/cached_annotation.dart';

class MyExternalStorage extends CachedStorage {
  final Map<String, Map<String, dynamic>> _cache = {};

  @override
  Future<void> delete(String key) async {
    _cache.remove(key);
  }

  @override
  Future<void> deleteAll() async {
    _cache.clear();
  }

  @override
  Future<Map<String, dynamic>> read(String key) async {
    return _cache[key] ?? {};
  }

  @override
  Future<void> write(String key, Map<String, dynamic> data) async {
    _cache[key] = data;
  }
}
