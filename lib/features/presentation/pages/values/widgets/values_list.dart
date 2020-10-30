import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/app_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/features/presentation/common/widgets/failure_container.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class ValuesList extends StatelessWidget {
  void _onTileTap(BuildContext context, int index) => AppDialog.alertDialog(
        context: context,
        title: LocaleKeys.delete_item_info.tr(),
        acceptButtonTitle: LocaleKeys.delete.tr(),
        onAcceptClick: () => context.bloc<SentencesBloc>()
          ..add(
            SentencesEvent.deleted(index),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SentencesBloc, SentencesState>(
      builder: (context, state) {
        if (state.failureMessage.isNotEmpty) {
          return FailureContainer(state.failureMessage);
        } else {
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              onTap: () => _onTileTap(context, index),
              title: Text(state.sentences[index].sentence),
            ),
            itemCount: state.sentences.length,
            separatorBuilder: (context, index) => const Divider(
              color: ProjectColors.darkerGunpowderGray,
            ),
          );
        }
      },
    );
  }
}
