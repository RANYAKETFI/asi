import 'package:flutter_app/models/the.dart';
import 'package:flutter_app/screens/the_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TheList extends StatefulWidget {
  @override
  _TheListState createState() => _TheListState();
}

class _TheListState extends State<TheList> {
  @override
  Widget build(BuildContext context) {
    final thes = Provider.of<List<The>>(context);
    thes.forEach((the) {
      print("hello im here ");
      print(the.name);
      print(the.prix);
    });

    return ListView.builder(
      itemCount: thes.length,
      itemBuilder: (context, index) {
        return TheTile(the: thes[index]);
      },
    );
  }
}
