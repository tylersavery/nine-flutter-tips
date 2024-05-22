import 'package:flutter_dotenv/flutter_dotenv.dart';

AppFlavor flavor = AppFlavor.prod;

enum AppFlavor {
  develop('assets/env/develop_env'),
  prod('assets/env/prod_env'),
  ;

  final String configPath;
  const AppFlavor(this.configPath);
}

class Env {
  static init() async {
    await dotenv.load(fileName: _configPath);
  }

  static String get _configPath {
    const flavorOverride = String.fromEnvironment("FLAVOR");

    switch (flavorOverride) {
      case "develop":
        return AppFlavor.develop.configPath;
      case "prod":
        return AppFlavor.prod.configPath;
      default:
        return flavor.configPath;
    }
  }

  static String get name {
    return dotenv.env['NAME'] ?? 'unset';
  }

  static String? get coolApiPublicKey {
    return dotenv.env['COOL_API_PUBLIC_KEY'];
  }

  static bool get debugMode {
    return dotenv.env['DEBUG_MODE'] == "true";
  }
}
