// ignore_for_file: constant_identifier_names

class Environments {
  static const String PRODUCTION = '#';
  static const String STAGING = '#';
} 

class ConfigEnvironments {
  static String _currentEnvironments = Environments.STAGING;

  static setEnvironment(String value) => _currentEnvironments = value;

  static String getEnvironment() {
    if (_currentEnvironments == Environments.STAGING) {
      return Environments.STAGING;
    } else if (_currentEnvironments == Environments.PRODUCTION) {
      return Environments.PRODUCTION;
    }
    return Environments.STAGING; // Default
  }
}
