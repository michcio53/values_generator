import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/failure_container.dart';
import 'package:values_generator/features/presentation/constants/text_styles.dart';

class BodyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SentencesBloc, SentencesState>(builder: (context, state) {
      if (state.currentSentence != null) {
        return Center(
          child: Container(
            margin: const EdgeInsets.all(30),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SingleChildScrollView(
                key: ValueKey(state.currentSentence.uuid),
                child: Text(
                  state.currentSentence.sentence,
                  textAlign: TextAlign.center,
                  style: TextStyles.main,
                ),
              ),
            ),
          ),
        );
      } else if (state.failureMessage.isNotEmpty) {
        return FailureContainer(
          state.failureMessage,
        );
      } else {
        return Container();
      }
    });
  }
}
