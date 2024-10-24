import 'package:flutter/material.dart';
import 'navigation_buttons.dart';

class Profile extends StatelessWidget {
  static const String routeName = '/profile';

    @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://img.freepik.com/psd-gratis/ilustracion-3d-avatar-o-perfil-humano_23-2150671126.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Nombre de Usuario',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  _buildProfileButton(
                    icon: Icons.person,
                    title: 'Nombre',
                    onTap: () {
                      // Implementar lógica para editar nombre
                    },
                  ),
                  _buildProfileButton(
                    icon: Icons.calendar_today,
                    title: 'Fecha de unión: 10/10/2024',
                    onTap: () {
                      // Mostrar detalles de la fecha de unión
                    },
                  ),
                  _buildProfileButton(
                    icon: Icons.bar_chart,
                    title: 'Estadísticas',
                    onTap: () {
                      // Navegar a la pantalla de estadísticas
                    },
                  ),
                  _buildProfileButton(
                    icon: Icons.emoji_events,
                    title: 'Logros',
                    onTap: () {
                      // Navegar a la pantalla de logros
                    },
                  ),
                  _buildProfileButton(
                    icon: Icons.settings,
                    title: 'Configuración del perfil',
                    onTap: () {
                      // Navegar a la pantalla de configuración del perfil
                    },
                  ),
                  _buildProfileButton(
                    icon: Icons.logout,
                    title: 'Cerrar sesión',
                    onTap: () {
                      // Implementar lógica de cierre de sesión
                      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                    },
                  ),

                ],
              ),
            ),
          ),
          NavigationButtons(),
        ],
      ),
    );
  }

  Widget _buildProfileButton({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}


