import 'package:get/get.dart';
import 'package:threads/routes/route_names.dart';
import 'package:threads/views/auth/login.dart';
import 'package:threads/views/auth/resgister.dart';
import 'package:threads/views/home.dart';

class Routes {
  static final pages = [
    GetPage(name: RouteNames.home, page: () => Home()),
    GetPage(name: RouteNames.login, page: () => Login()),
    GetPage(name: RouteNames.register, page: () => Register())
  ];
}
