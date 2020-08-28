import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterDesign/src/pages/basic_page.dart';

class Scrollpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _createPageOne(context),
          _createpageTwo(context),
        ],
      ),
    );
  }
}

Widget _createPageOne(BuildContext context) {
  return Stack(
    children: [
      _createImageWithShader(
          'https://i.pinimg.com/originals/b4/90/0e/b4900eb345926ec03e7957b2298dfd77.jpg'),
      _createPageInfo(),
      _createIconPage(context)
    ],
  );
}

Widget _createImageWithShader(String url) {
  return ShaderMask(
    blendMode: BlendMode.srcATop,
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black38, Colors.black87],
      ).createShader(bounds);
    },
    child: Image(
      height: double.infinity,
      image: NetworkImage(
        url,
      ),
      fit: BoxFit.cover,
    ),
  );
}

Widget _createPageInfo() {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: 24.0),
      child: Center(
        child: Column(children: [
          Text(
            'Schnauzer',
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Miniatura',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ]),
      ),
    ),
  );
}

Widget _createIconPage(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        children: [
          Icon(
            Icons.keyboard_arrow_down,
            size: 100.0,
            color: Colors.white,
          )
        ],
      ),
    ),
  );
}

Widget _createpageTwo(BuildContext context) {
  return Stack(
    children: [
      _createImageWithShader(
        'https://i.pinimg.com/originals/03/f0/76/03f0762c1cb74d775bcb5f45500d1fbb.jpg',
      ),
      _createButton(context)
    ],
  );
}

Widget _createButton(BuildContext context) {
  return SafeArea(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RaisedButton(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.cyanAccent)),
              onPressed: () {
                Navigator.pushNamed(context, 'basic');
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Saber más',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
