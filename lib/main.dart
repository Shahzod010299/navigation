
import 'package:flutter/material.dart';
import 'package:navigation/second_route.dart';

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: Main(),
    routes: {
      'second': (context) => SecondRoute()
    },
  ));
}

class Main extends StatelessWidget {
  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Route'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterLogo(
              size: 90,
            ),
          ),
          Text(
            'Register',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              cursorWidth: 4,
              controller: _editingController,
              cursorColor: Colors.white,
              cursorRadius: Radius.circular(8),
              style: TextStyle(color: Colors.blueAccent),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green.withOpacity(0.2),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(24)),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.green)),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                String userName = _editingController.text.toString();
                if (userName.length >= 3) {
                  print(_editingController.text);
                  Navigator.pushNamed(context, 'second',arguments: userName);
                }
              },
              child: Text('Register user'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: 44,
          ),
        ],
      ),
    );
  }
}
