import 'package:flutter/material.dart';

class BorderTextField extends StatelessWidget {
  BorderTextField({
    this.onChanged,
    this.labelText,
    this.errorText,
    this.maxLines = 4,
    this.autofocus,
    this.textCapitalization = TextCapitalization.sentences,
  });

  final Function(String) onChanged;
  final String errorText;
  final String labelText;
  final int maxLines;
  final bool autofocus;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLines: maxLines,
      autofocus: true,
      textCapitalization: textCapitalization,
      cursorColor: Theme.of(context).accentColor,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
