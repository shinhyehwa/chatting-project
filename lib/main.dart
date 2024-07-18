import 'package:chatting/di.dart';
import 'package:chatting/src/presentation/my_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      fallbackLocale: const Locale('vi', 'VN'),
      startLocale: const Locale('vi', 'VN'),
      child: const MyApp()));
}
