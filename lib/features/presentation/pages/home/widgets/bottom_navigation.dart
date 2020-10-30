import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/bottom_navigation_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/features/presentation/pages/favourites/favourites_page.dart';
import 'package:values_generator/features/presentation/pages/values/values_page.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: Theme.of(context).primaryColor,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavigationItem(
              iconData: Icons.format_quote,
              title: LocaleKeys.values.tr(),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: context.bloc<SentencesBloc>(),
                    child: ValuesPage(),
                  ),
                ),
              ),
            ),
            BottomNavigationItem(
              iconData: Icons.favorite,
              title: LocaleKeys.favourites.tr(),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavouritesPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
