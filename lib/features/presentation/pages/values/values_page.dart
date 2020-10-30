import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/pages/values/widgets/values_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class ValuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(LocaleKeys.values.tr()),
      ),
      body: ValuesList(),
    );
  }
}
