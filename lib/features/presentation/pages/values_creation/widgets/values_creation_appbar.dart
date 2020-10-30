import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences_creation/sentences_creation_bloc.dart';
import 'package:values_generator/features/presentation/common/widgets/rounded_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class ValuesCreationAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SentencesCreationBloc, SentencesCreationState>(builder: (context, state) {
      return AppBar(
        actions: [
          if (state.isSubmitting) ...[
            const Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ProjectColors.white,
                  ),
                ),
              ),
            ),
          ] else ...[
            Center(
              child: RoundedButton(
                isActive: state.standardTextInput.valid,
                text: LocaleKeys.submit.tr(),
                onTap: () => context.bloc<SentencesCreationBloc>()
                  ..add(
                    const SentencesCreationEvent.submitted(),
                  ),
              ),
            ),
          ],
          Container(width: 10),
        ],
      );
    });
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
