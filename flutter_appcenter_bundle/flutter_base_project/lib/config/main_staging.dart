import 'package:flutter/material.dart';
import 'package:flutter_appcenter_bundle_example/config/app_config.dart';
import 'package:flutter_appcenter_bundle_example/helpers/utils/constants.dart';
import 'package:flutter_appcenter_bundle_example/main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  var flavor = AppConfig(
    flavorName: Constants.stagingFlavor,
    baseUrl: Constants.stagingBaseUrl,
    child: MyApp(),
  );

  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();
  return runApp(flavor);
}
