import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/common/widgets/failure_container.dart';

class FailurePage extends StatelessWidget {
  FailurePage(this.message);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FailureContainer(message),
    );
  }
}
