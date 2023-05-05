import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String userName = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
