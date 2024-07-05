import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/cubit/add_note_cubit.dart';
import '../cubits/cubit/add_note_state.dart';
import 'add_note_form.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailureState) {
          print("Failure : ${state.errorMessage}");
        }
        if (state is AddNoteSuccessfulState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ModalProgressHUD(
            inAsyncCall: state is AddNoteLoadingState ? true : false,
            child: const AddNoteForm(),
          ),
        );
      },
    );
  }
}
