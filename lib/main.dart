import 'package:business_card_mg/core/routes.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

void main() {
  /* SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor:
        Color.fromRGBO(3, 66, 96, 1), // navigation bar color
    statusBarColor: Color.fromRGBO(10, 20, 30, 1), // status bar color
  )); */
  FluroRoutes.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão de Visita',
      onGenerateRoute: FluroRoutes.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Comfortaa',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Digest link = sha1.convert('durvalperipatoneto'.codeUnits);

              Navigator.of(context).pushNamed(
                '/cartaomg/$link',
              );
            },
            child: const Text('Login')),
      ),
    );
  }
}
