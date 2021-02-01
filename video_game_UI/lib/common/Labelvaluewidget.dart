import 'package:flutter/material.dart';

class Labelvaluewidget extends StatelessWidget {
  final String value, label;
  final TextStyle labelstyle, valuestyle;

  Labelvaluewidget({this.label, this.value, this.labelstyle, this.valuestyle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(value, style: valuestyle),
        Text(label, style: labelstyle),
      ],
    );
  }
}
