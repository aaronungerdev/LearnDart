//Eager Singelton
//Lazy Singelton

class ProductConfig {
  ProductConfig(this.apiKey);

  static final ProductConfig instance = ProductConfig('a');
  final String apiKey;

  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return instance;
  }

  static ProductLazySingleton? _init() {
    return null;
  }
}
