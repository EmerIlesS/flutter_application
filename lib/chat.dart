import 'package:flutter/material.dart';
import 'navigation_buttons.dart';

class Chat extends StatelessWidget {
  static const String routeName = '/chat';

  const Chat({super.key});

   @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> conversations = [
      {
        'title': 'Buenos días',
        'messages': [
          {'text': '¡Buenos días!', 'isUser': false},
          {'text': '¿Cómo amaneciste?', 'isUser': false},
          {'text': 'Buenos días, amanecí bien, gracias.', 'isUser': true},
        ]
      },
      {
        'title': 'Buenas tardes',
        'messages': [
          {'text': 'Buenas tardes.', 'isUser': false},
          {'text': '¿Cómo va tu día?', 'isUser': false},
          {'text': 'Buenas tardes, mi día va bien.', 'isUser': true},
        ]
      },
      {
        'title': 'Buenas noches',
        'messages': [
          {'text': 'Buenas noches.', 'isUser': false},
          {'text': '¿Qué tal estuvo tu día?', 'isUser': false},
          {'text': 'Buenas noches, mi día estuvo productivo.', 'isUser': true},
        ]
      },
    ];
    return Scaffold(
 
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: conversations.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(conversations[index]['title']),
                    trailing: Icon(Icons.chat_bubble_outline),
                    onTap: () {
                      _showConversationDialog(context, conversations[index]);
                    },
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
  
  void _showConversationDialog(BuildContext context, Map<String, dynamic> conversation) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(conversation['title']),
          content: SingleChildScrollView(
            child: Column(
              children: (conversation['messages'] as List<Map<String, dynamic>>).map((message) {
                return Align(
                  alignment: message['isUser'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: message['isUser'] ? Colors.blue[100] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(message['text']),
                  ),
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

