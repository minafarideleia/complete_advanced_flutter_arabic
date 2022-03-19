import '../response/responses.dart';

const CACHE_HOME_KEY = "CACHE_HOME_KEY";

abstract class LocalDataSource {
  Future<HomeResponse> getHomeData();

  Future<void> saveHomeToCache(HomeResponse homeResponse);
}

class LocalDataSourceImpl implements LocalDataSource {
  // run time cache
  Map<String, CachedItem> cacheMap = Map();

  @override
  Future<HomeResponse> getHomeData() {
    // TODO: implement getHomeData
    throw UnimplementedError();
  }

  @override
  Future<void> saveHomeToCache(HomeResponse homeResponse) async {
    cacheMap[CACHE_HOME_KEY] = CachedItem(homeResponse);
  }
}

class CachedItem {
  dynamic data;

  int cacheTime = DateTime.now().millisecondsSinceEpoch;

  CachedItem(this.data);
}
