import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Botón para ir al perfil del usuario
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla del perfil del usuario
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Perfil del Usuario'),
            ),
            SizedBox(height: 20),

            // Botón para ir a la sección de configuración cambios de pantallas generales
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de configuración
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Configuración'),
            ),
            SizedBox(height: 20),

            // Botón para ir a la sección de lenguas nativas
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de lenguas nativas
                Navigator.pushNamed(context, '/languages');
              },
              child: Text('Lenguas Nativas'),
            ),
            SizedBox(height: 20),

            // Botón para cerrar sesión
            ElevatedButton(
              onPressed: () {
                // Cerrar sesión y navegar de regreso a la pantalla de login
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
              },
              child: Text('Cerrar Sesión'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
