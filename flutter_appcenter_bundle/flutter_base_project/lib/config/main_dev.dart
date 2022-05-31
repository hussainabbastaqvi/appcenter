import 'package:flutter/material.dart';
import 'package:flutter_appcenter_bundle/flutter_appcenter_bundle.dart';
import 'package:flutter_appcenter_bundle_example/config/app_config.dart';
import 'package:flutter_appcenter_bundle_example/helpers/utils/constants.dart';
import 'package:flutter_appcenter_bundle_example/main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  var flavor = AppConfig(
    flavorName: Constants.developmentFlavor,
    baseUrl: Constants.developmentBaseUrl,
    child: MyApp(),
  );
  await AppCenter.startAsync(
    appSecretAndroid: 'd19ce942-2721-4d93-a26b-4d9cc7c04dd8',
    appSecretIOS: 'd19ce942-2721-4d93-a26b-4d9cc7c04dd8',
    enableDistribute: false,
  );
  await AppCenter.configureDistributeDebugAsync(enabled: false);
  FlutterNativeSplash.remove();
  return runApp(flavor);
}
