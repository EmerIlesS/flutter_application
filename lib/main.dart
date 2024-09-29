import 'package:flutter/material.dart';

// Importa las pantallas que ya has creado
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(LenguasVivasApp());
}

class LenguasVivasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenguas Vivas Putumayo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // Ruta inicial: puede ser la de bienvenida o login
      initialRoute: WelcomeScreen.routeName, // Cambiar a '/login' si es necesario
      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        MainScreen.routeName: (context) => MainScreen(), // Añadir la pantalla principal
      },
    );
  }
}
