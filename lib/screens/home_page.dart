import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'New Trend',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.cartPlus),
          color: Colors.black,
        )
      ],
    ));
  }
}
