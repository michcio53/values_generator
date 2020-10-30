import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(LocaleKeys.home_title.tr()),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () => context.bloc<SentencesBloc>()
            ..add(
              const SentencesEvent.liked(),
            ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
