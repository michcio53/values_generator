import 'package:flutter/material.dart';

class FailureContainer extends StatelessWidget {
  FailureContainer(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(message),
      ),
    );
  }
}
