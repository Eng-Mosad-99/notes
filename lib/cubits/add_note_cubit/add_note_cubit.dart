import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constant.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());



  addNote(NoteModel noteModel) async {
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(AddNoteSuccessfulState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
  
}
