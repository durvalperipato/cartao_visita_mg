import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor:
        Color.fromRGBO(3, 66, 96, 1), // navigation bar color
    statusBarColor: Color.fromRGBO(10, 20, 30, 1), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão de Visita',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Comfortaa',
      ),
      home: const MyHomePage(title: 'Gerador de Cartão de Visitas MG'),
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
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromRGBO(180, 220, 255, 1),
                  Color.fromRGBO(30, 96, 196, 1),
                  Color.fromRGBO(3, 66, 96, 1),
                ])),
            child: Container(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              margin: const EdgeInsets.only(
                top: 300,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Durval Peripato Neto',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 2,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5),
                          child: Text(
                            'GESTÃO DE PRODUTOS',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white60,
                                letterSpacing: 2),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 50,
                                child: CircleAvatar(
                                  maxRadius: 48,
                                  child: GestureDetector(
                                    onTap: () => launch("tel://19996121114"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: const Icon(
                                        FontAwesomeIcons.phoneAlt,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(-2, -2),
                                              blurRadius: 6,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(2, 2),
                                              blurRadius: 6,
                                            ),
                                          ],
                                          gradient: const RadialGradient(
                                            colors: [
                                              Color.fromRGBO(6, 57, 115, 1),
                                              Color.fromRGBO(6, 57, 115, 1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 50,
                                child: CircleAvatar(
                                  maxRadius: 48,
                                  child: GestureDetector(
                                    onTap: () => launch(
                                        "mailto:durvalperipatoneto@gmail.com?subject=Cliente X&body=Olá"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: const Icon(
                                        Icons.email,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(-2, -2),
                                              blurRadius: 6,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(2, 2),
                                              blurRadius: 6,
                                            ),
                                          ],
                                          gradient: const RadialGradient(
                                            colors: [
                                              Color.fromRGBO(6, 57, 115, 1),
                                              Color.fromRGBO(6, 57, 115, 1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 50,
                                child: CircleAvatar(
                                  maxRadius: 48,
                                  child: GestureDetector(
                                    onTap: () =>
                                        launch("http:www.margirius.com.br"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: const Icon(
                                        FontAwesomeIcons.weebly,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(-2, -2),
                                              blurRadius: 6,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(2, 2),
                                              blurRadius: 6,
                                            ),
                                          ],
                                          gradient: const RadialGradient(
                                            colors: [
                                              Color.fromRGBO(6, 57, 115, 1),
                                              Color.fromRGBO(6, 57, 115, 1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 50,
                                child: CircleAvatar(
                                  maxRadius: 48,
                                  child: GestureDetector(
                                    onTap: () async {
                                      const link = WhatsAppUnilink(
                                        phoneNumber: '+55-(19)996121114',
                                        text:
                                            "Olá! Gostaria de tirar uma dúvida sobre a empresa",
                                      );

                                      await launch('$link');
                                    },
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: const Icon(
                                        FontAwesomeIcons.whatsapp,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(-2, -2),
                                              blurRadius: 6,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(2, 2),
                                              blurRadius: 6,
                                            ),
                                          ],
                                          gradient: const RadialGradient(
                                            colors: [
                                              Color.fromRGBO(6, 57, 115, 1),
                                              Color.fromRGBO(6, 57, 115, 1),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: CurvePaint(),
            child: SizedBox(
              height: 250,
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170),
            child: const Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                maxRadius: 80,
                child: CircleAvatar(
                  maxRadius: 76,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class CurvePaint extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
