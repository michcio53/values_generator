import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/core/injection/injector.dart';
import 'package:values_generator/features/domain/bloc/favourite_sentences/favorite_sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/presentation/pages/favourites/widgets/favourites_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteSentencesBloc(
        getIt(),
        context.bloc<SnackbarBloc>(),
      )..add(
          const FavoriteSentencesEvent.initiated(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.favourites.tr()),
        ),
        body: FavouritesList(),
      ),
    );
  }
}
