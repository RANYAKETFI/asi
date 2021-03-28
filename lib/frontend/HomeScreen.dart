import 'dart:ui';

import 'package:flutter/material.dart';

import 'authenticate/chose.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Container(
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Ink.image(
              image: AssetImage('assets/images/fs.png'),
              fit: BoxFit.fill,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chose()),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
