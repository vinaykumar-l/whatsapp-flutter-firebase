import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:threads/routes/route.dart';
import 'package:threads/routes/route_names.dart';
import 'package:threads/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
      initialRoute: RouteNames.login,
    );
  }
}
