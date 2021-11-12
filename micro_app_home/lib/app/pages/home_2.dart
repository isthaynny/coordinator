import 'package:flutter/material.dart';
import 'package:micro_app_home/app/coordinator/home_coordinator.dart';
import 'package:micro_dependency/micro_dependency.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({Key? key}) : super(key: key);

  @override
  _Home2ScreenState createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home 2'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Home 2"),
            TextButton(
              onPressed: () async {
                await CoordinatorProvider.instance
                    .get<HomeCoordinator>()
                    ?.irParaTelaSecundaria();
              },
              child: const Text('Ir para tela Secundaria'),
            ),
          ],
        ),
      ),
    );
  }
}
