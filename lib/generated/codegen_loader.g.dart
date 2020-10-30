// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "values": "Values",
  "favourites": "Favourites",
  "home_title": "NG Values",
  "type_value": "Type your new value here ...",
  "submit": "Submit",
  "text_to_short": "Text to short",
  "cancel": "Cancel",
  "delete": "Delete",
  "delete_item_info": "Are you sure you want to delete this item?",
  "item_cannot_be_deleted": "Item cannot be deleted",
  "added_to_favourites": "Added to favourites",
  "database_error": "Database error",
  "cannot_read_start_values": "Cannot read start values"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US};
}
