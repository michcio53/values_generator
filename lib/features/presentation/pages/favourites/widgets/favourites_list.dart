import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/favourite_sentences/favorite_sentences_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/app_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/features/presentation/common/widgets/failure_container.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class FavouritesList extends StatelessWidget {
  void _onTileTap(BuildContext context, int index) => AppDialog.alertDialog(
        context: context,
        title: LocaleKeys.delete_item_info.tr(),
        acceptButtonTitle: LocaleKeys.delete.tr(),
        onAcceptClick: () => context.bloc<FavoriteSentencesBloc>()
          ..add(
            FavoriteSentencesEvent.deleted(index),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteSentencesBloc, FavoriteSentencesState>(
      builder: (context, state) {
        return state.map(inProgress: (state) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, success: (state) {
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              onTap: () => _onTileTap(context, index),
              title: Text(
                state.favoriteSentences[index].sentence,
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              color: ProjectColors.darkerGunpowderGray,
            ),
            itemCount: state.favoriteSentences.length,
          );
        }, failure: (state) {
          return FailureContainer(
            state.message,
          );
        });
      },
    );
  }
}
