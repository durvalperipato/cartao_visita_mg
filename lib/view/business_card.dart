import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import 'qrcode.dart';

class BusinessCard extends StatefulWidget {
  static const routeName = '/cartaomg';
  final String? link;

  const BusinessCard({Key? key, @required this.link}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  ImageProvider? avatar;

  @override
  void initState() {
    avatar = const AssetImage('assets/images/avatar.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const double widthsize = double.maxFinite;
    double heightsize = MediaQuery.of(context).size.height;
    double maxradius = heightsize < 800 ? 40 : 50;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: widthsize,
              height: heightsize + 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(180, 220, 255, 1),
                    Color.fromRGBO(30, 96, 196, 1),
                    Color.fromRGBO(3, 66, 96, 1),
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: heightsize / 3 + 100, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    const Text(
                      'Durval Peripato Neto',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 2,
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
                            'ENGENHARIA DE INOVAÇÕES',
                            style: TextStyle(
                                fontSize: 13,
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
                                maxRadius: maxradius,
                                child: CircleAvatar(
                                  maxRadius: maxradius - 2,
                                  child: GestureDetector(
                                    onTap: () => launch("tel://19996121114"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: Icon(
                                        FontAwesomeIcons.phoneAlt,
                                        size: maxradius - 10,
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
                                maxRadius: maxradius,
                                child: CircleAvatar(
                                  maxRadius: maxradius - 2,
                                  child: GestureDetector(
                                    onTap: () => launch(
                                        "mailto:durvalperipatoneto@gmail.com?subject=Cliente X&body=Olá"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: Icon(
                                        Icons.email,
                                        size: maxradius - 10,
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
                                maxRadius: maxradius,
                                child: CircleAvatar(
                                  maxRadius: maxradius - 2,
                                  child: GestureDetector(
                                    onTap: () =>
                                        launch("http:www.margirius.com.br"),
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: Icon(
                                        FontAwesomeIcons.weebly,
                                        size: maxradius - 10,
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
                                maxRadius: maxradius,
                                child: CircleAvatar(
                                  maxRadius: maxradius - 2,
                                  child: GestureDetector(
                                    onTap: () async {
                                      const message = WhatsAppUnilink(
                                        phoneNumber: '+55-(19)996121114',
                                        text:
                                            "Olá! Gostaria de tirar uma dúvida sobre a empresa",
                                      );

                                      await launch('$message');
                                    },
                                    child: Container(
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                      child: Icon(
                                        FontAwesomeIcons.whatsapp,
                                        size: maxradius - 10,
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
            ClipPath(
              clipper: CurvePaint(),
              child: SizedBox(
                height: heightsize / 3,
                width: widthsize,
                child: Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: (heightsize / 3) - 80),
              child: Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () async {
                    Image? result = await ImagePickerWeb.getImageAsWidget();

                    if (result != null) {
                      setState(() {
                        avatar = result.image;
                      });
                    } else {
                      avatar = const AssetImage('assets/images/avatar.png');
                    }
                  },
                  child: CircleAvatar(
                    maxRadius: 80,
                    child: CircleAvatar(
                      maxRadius: 76,
                      backgroundImage: avatar,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: heightsize / 3 + 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    maxRadius: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QrCodeScreen(link: widget.link),
                      )),
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        child: const Icon(
                          FontAwesomeIcons.qrcode,
                          size: 15,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Colors.grey[400]!,
                                Colors.grey[300]!,
                                Colors.grey[200]!,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 20,
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          /*  final shortener = BitLyShortener(accessToken: token);
                          final linkData = await shortener.generateShortLink(
                              longUrl:
                                  'https://cartaodevisitamg.web.app/#/cartaomg/${widget.link}'); */
                          var url = WhatsAppUnilink(
                            //phoneNumber: '+55-(19)996121114',
                            text:
                                "Cartão MarGirius: https://cartaodevisitamg.web.app/#/cartaomg/${widget.link} ", //${linkData.link}",
                          );

                          await launch('$url');
                        } catch (e) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Não foi possível gerar o link'),
                            backgroundColor: Colors.red,
                          ));
                        }
                      },
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        child: const Icon(
                          FontAwesomeIcons.link,
                          size: 15,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Colors.grey[400]!,
                                Colors.grey[300]!,
                                Colors.grey[200]!,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
