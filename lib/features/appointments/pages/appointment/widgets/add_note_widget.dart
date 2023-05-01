import 'package:flutter/material.dart';
import 'package:freeWoma/core/core.dart';
import 'package:freeWoma/utils/utils.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final conNote = TextEditingController();
    final fnNotes = FocusNode();
    final keyForm = GlobalKey<FormState>();
    return Parent(
      appBar: const MyAppBar().call(
        title: Text(
          'NOTES & QUESTIONS',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.space24,
        ),
        child: AutofillGroup(
          child: Form(
            key: keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.space16,
                  ),
                  child: TextF(
                    autofillHints: const [AutofillHints.name],
                    key: const Key("notes"),
                    controller: conNote,
                    labelText: 'NOTES & QUESTIONS',
                    hintText: 'Enter Notes for client',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    readOnly: false,
                    curFocusNode: fnNotes,
                    textInputAction: TextInputAction.done,
                    prefixIcon: Icon(
                      Icons.note_add,
                      size: Dimens.space24,
                      color: Theme.of(context).textTheme.titleSmall?.color,
                    ),
                    validator: (String? value) => value != null
                        ? (value.length < 3
                            ? Strings.of(context)!.errorEmptyField
                            : null)
                        : null,
                  ),
                ),
                Button(
                  title: 'save',
                  onPressed: () {
                    if (keyForm.currentState?.validate() ?? false) {
                      context.popWithData(context, conNote.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
