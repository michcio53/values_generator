import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences_creation/sentences_creation_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/border_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class ValuesCreationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SentencesCreationBloc, SentencesCreationState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: BorderTextField(
            onChanged: (value) => context.bloc<SentencesCreationBloc>()
              ..add(
                SentencesCreationEvent.updated(value),
              ),
            errorText: state.standardTextInput.invalid ? state.standardTextInput.error.message : null,
            labelText: LocaleKeys.type_value.tr(),
          ),
        );
      },
    );
  }
}
