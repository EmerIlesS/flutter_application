import 'package:flutter/material.dart';
import 'navigation_buttons.dart';

class Abc extends StatelessWidget {
  static const String routeName = '/abc';

  const Abc({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> abc = [
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
      'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
    ];
    return Scaffold(
   
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: abc.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Center(
                    child: Text(
                      abc[index],
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
          NavigationButtons(),
        ],
      ),
    );
  }
}


