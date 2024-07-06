import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/add_note_cubit.dart';
import 'package:notes/cubits/cubit/add_note_state.dart';
import 'package:notes/model/note_model.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> addNoteFormKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, desc;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: addNoteFormKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hntText: 'Title',
              onSaved: (data) {
                title = data;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              onSaved: (data) {
                desc = data;
              },
              hntText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoadingState ? true : false,
                  onTap: () {
                    if (addNoteFormKey.currentState!.validate()) {
                      addNoteFormKey.currentState!.save();
                      var noteModel = NoteModel(
                        title: title!,
                        desc: desc!,
                        dateTime: DateTime.now(),
                        color: Colors.blue.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
