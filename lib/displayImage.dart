import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/demo.png',
            height: 100,
            width: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(
            'https://www.fnordware.com/superpng/pnggrad16rgb.png',
            width: 125,
            height: 125,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/demo.png',
            image: 'https://www.fnordware.com/superpng/pnggrad16rgb.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 175,
            height: 175,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/demo.png')),
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    ));
  }
}
