import 'package:easy_localization/easy_localization.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/core/injection/injector.dart';
import 'package:values_generator/features/domain/bloc/launch/launch_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/presentation/constants/presentation_constatns.dart';
import 'package:values_generator/features/presentation/constants/project_assets.dart';
import 'package:values_generator/features/presentation/constants/project_themes.dart';
import 'package:values_generator/features/presentation/pages/failure/failure_page.dart';
import 'package:values_generator/features/presentation/pages/home/home_page.dart';
import 'package:values_generator/features/presentation/pages/splash/splash_page.dart';

class App extends StatelessWidget {
  final GlobalKey navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(ProjectAssets.logoImage), context);

    return EasyLocalization(
      supportedLocales: const [
        PresentationConstants.usLocale,
      ],
      path: ProjectAssets.translationsPath,
      fallbackLocale: PresentationConstants.usLocale,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LaunchBloc>(
            create: (_) => LaunchBloc(
              getIt(),
            )..add(const LaunchEvent.started()),
          ),
          BlocProvider<SnackbarBloc>(
            create: (context) => SnackbarBloc(),
          ),
        ],
        child: MaterialApp(
          title: PresentationConstants.appTitle,
          themeMode: ThemeMode.system,
          theme: ProjectThemes.lightTheme,
          darkTheme: ProjectThemes.darkTheme,
          navigatorKey: navigatorKey,
          home: MultiBlocListener(
            listeners: [
              BlocListener<SnackbarBloc, SnackbarState>(
                listener: (context, state) {
                  state.map(
                    initial: (state) {},
                    visible: (state) {
                      Flushbar(
                        message: state.message,
                        backgroundColor: state.color,
                        duration: const Duration(seconds: 2),
                      )..show(navigatorKey.currentContext);
                    },
                  );
                },
              ),
            ],
            child: BlocBuilder<LaunchBloc, LaunchState>(
              builder: (context, state) {
                return state.map(inProgress: (state) {
                  return SplashPage();
                }, complete: (state) {
                  return HomePage();
                }, failure: (value) {
                  return FailurePage(
                    value.message,
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
