import 'package:flutter/material.dart';
import 'package:micro_app_home/app/coordinator/home_coordinator.dart';
import 'package:micro_dependency/micro_dependency.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({Key? key}) : super(key: key);

  @override
  _Home1ScreenState createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home 1'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Home 1"),
            TextButton(
              onPressed: () {
                CoordinatorProvider.instance
                    .get<HomeCoordinator>()
                    ?.irParaHome2();
              },
              child: const Text('Ir para Home 2'),
            ),
            TextButton(
              onPressed: () {
                CoordinatorProvider.instance
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
