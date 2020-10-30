import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/core/injection/injector.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences_creation/sentences_creation_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/presentation/pages/values_creation/widgets/values_creation_appbar.dart';
import 'package:values_generator/features/presentation/pages/values_creation/widgets/values_creation_form.dart';

class ValuesCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SentencesCreationBloc(
        getIt(),
        context.bloc<SentencesBloc>(),
        context.bloc<SnackbarBloc>(),
      ),
      child: BlocConsumer<SentencesCreationBloc, SentencesCreationState>(
        listener: (context, state) {
          if (state.isSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: ValuesCreationAppBar(),
            body: ValuesCreationForm(),
          );
        },
      ),
    );
  }
}
