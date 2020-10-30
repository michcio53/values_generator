import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/core/injection/injector.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';
import 'package:values_generator/features/presentation/pages/home/widgets/body_container.dart';
import 'package:values_generator/features/presentation/pages/home/widgets/bottom_navigation.dart';
import 'package:values_generator/features/presentation/pages/home/widgets/home_appbar.dart';
import 'package:values_generator/features/presentation/pages/values_creation/values_creation_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SentencesBloc(
        getIt(),
        getIt(),
        context.bloc<SnackbarBloc>(),
      )..add(
          const SentencesEvent.initiated(),
        ),
      child: BlocBuilder<SentencesBloc, SentencesState>(
        builder: (context, state) {
          return Scaffold(
            appBar: HomeAppbar(),
            body: BodyContainer(),
            bottomNavigationBar: BottomNavigation(),
            floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: context.bloc<SentencesBloc>(),
                    child: ValuesCreationPage(),
                  ),
                ),
              ),
              child: Icon(
                Icons.add,
                color: MediaQuery.of(context).platformBrightness == Brightness.light
                    ? ProjectColors.black
                    : ProjectColors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
