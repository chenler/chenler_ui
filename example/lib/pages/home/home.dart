import 'dart:ui';

import 'package:example/pages/home/components_list.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chenler UI'),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromRGBO(248, 249, 248, 1.0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                height: 120,
                width: double.infinity,
                color: Color.fromRGBO(248, 249, 248, 1.0),
                child:  Image.network("https://www.chenler.com/views/IMJ2V2/images/logo.png", width: 150, color: Colors.blue, ),
              ),
              ComponentsList()
            ],
          ),
        ),

      ),
    );
  }
}
