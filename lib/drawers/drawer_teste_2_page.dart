import 'package:flutter/material.dart';

class DrawerTeste2Page extends StatefulWidget {
  final String title;
  const DrawerTeste2Page({Key key, this.title = "DrawerTeste2"})
      : super(key: key);

  @override
  _DrawerTeste2PageState createState() => _DrawerTeste2PageState();
}

class _DrawerTeste2PageState extends State<DrawerTeste2Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: <Widget>[
                  Image.network(
                    'https://vignette.wikia.nocookie.net/marvel/images/b/bc/Thanos_%28Earth-199999%29_from_Avengers_Infinity_War_-_The_Official_Movie_Special_001.jpg/revision/latest?cb=20190503185709&path-prefix=pt-br',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    color: Color.fromRGBO(128, 128, 128, 0.67),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.network(
                              'https://vignette.wikia.nocookie.net/marvel/images/b/bc/Thanos_%28Earth-199999%29_from_Avengers_Infinity_War_-_The_Official_Movie_Special_001.jpg/revision/latest?cb=20190503185709&path-prefix=pt-br',
                              fit: BoxFit.cover,
                              height: 130,
                              width: 130,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Container(
                                  width: 130,
                                  height: 130,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.grey,
                                    ),
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes
                                        : null,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              'drawer teste',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Premium',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Sair',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
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
