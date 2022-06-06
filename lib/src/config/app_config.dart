final _privateError = UnsupportedError('Use AppConfig() implementation');

class AppConfig {
  const factory AppConfig({
    required String serverBaseUrl,
    required String appName,
    required String apiKey,
    required String policyUrl,
  }) = _AppConfig;

  const AppConfig.none();

  String get serverBaseUrl => throw _privateError;
  String get appName => throw _privateError;
  String get apiKey => throw _privateError;
  String get policyUrl => throw _privateError;
}

class _AppConfig implements AppConfig {
  const _AppConfig({
    required this.serverBaseUrl,
    required this.appName,
    required this.apiKey,
    required this.policyUrl,
  });

  @override
  final String serverBaseUrl;

  @override
  final String appName;
  
  @override
  final String apiKey;

  @override
  final String policyUrl;
}
