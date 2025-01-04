import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Widgets/bottomNavigationBar.dart';
import 'package:flutter_application_1/screen/experiencies.dart';
import 'package:flutter_application_1/screen/logIn.dart';
import 'package:flutter_application_1/screen/perfil.dart';
import 'package:flutter_application_1/screen/register.dart';
import 'package:flutter_application_1/screen/user.dart';
import 'package:flutter_application_1/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Amaga la banner de debug
      initialRoute: '/login', // Ruta inicial
      getPages: [
        // Ruta de la pàgina de login
        GetPage(
          name: '/login',
          page: () => LogInPage(),
        ),
        // Ruta de la pàgina de registre
        GetPage(
          name: '/register',
          page: () => RegisterPage(),
        ),
        // Ruta de la pàgina d'inici amb el menú de navegació inferior
        GetPage(
          name: '/home',
          page: () => BottomNavScaffold(child: HomePage()),
        ),
        // Ruta de la pàgina d'usuaris amb el menú de navegació inferior
        GetPage(
          name: '/usuarios',
          page: () => BottomNavScaffold(child: UserPage()),
        ),
        // Ruta de la pàgina d'experiències amb el menú de navegació inferior
        GetPage(
          name: '/experiencies',
          page: () => BottomNavScaffold(child: ExperienciesPage()),
        ),
        // Ruta de la pàgina de perfil amb el menú de navegació inferior
        GetPage(
          name: '/perfil',
          page: () => BottomNavScaffold(child: PerfilPage()),
        ),
      ],
    );
  }
}