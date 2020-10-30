import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class AppDialog {
  static Future<void> alertDialog({
    @required BuildContext context,
    @required Function() onAcceptClick,
    Function() onRejectClick,
    String title = '',
    String acceptButtonTitle = '',
    Color acceptButtonColor = ProjectColors.tomato,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(
              color: ProjectColors.black,
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(LocaleKeys.cancel.tr()),
              onPressed: () {
                if (onRejectClick != null) {
                  onRejectClick();
                }
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(
                acceptButtonTitle,
                style: TextStyle(
                  color: acceptButtonColor,
                ),
              ),
              onPressed: () {
                onAcceptClick();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
