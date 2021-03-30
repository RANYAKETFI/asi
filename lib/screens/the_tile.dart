import 'package:asi/models/the.dart';
import 'package:flutter/material.dart';

class TheTile extends StatelessWidget {
  final The the;
  TheTile({this.the});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
          ),
          title: Text(the.name),
          subtitle: Text('Price ${the.prix}'),
        ),
      ),
    );
  }
}
