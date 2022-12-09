import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: null,
      ),
    );
  }
}
