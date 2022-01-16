/// Enum to define Application Environment instance
enum Environment { DEV, STAGING, PROD }

class EnvironmentConstants {
  static String? _config;

  /// method to set environment
  static String setEnvironment(Environment env) {
    switch (env) {
      case Environment.DEV:
        _config ="https://newsapi.org/";
        break;
      case Environment.STAGING:
        _config = "https://newsapi.org/";
        break;
      case Environment.PROD:
        _config = "https://newsapi.org/";
        break;
    }
    return _config!;
  }


}

