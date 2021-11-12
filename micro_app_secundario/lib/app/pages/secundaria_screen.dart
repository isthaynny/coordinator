import 'package:flutter/material.dart';

class SecundariaScreen extends StatefulWidget {
  const SecundariaScreen({Key? key}) : super(key: key);

  @override
  _SecundariaScreenState createState() => _SecundariaScreenState();
}

class _SecundariaScreenState extends State<SecundariaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secundaria'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Secundaria"),
            TextButton(
              onPressed: () {},
              child: const Text('Ir para Home 2'),
            ),
          ],
        ),
      ),
    );
  }
}
