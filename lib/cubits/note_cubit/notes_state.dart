import 'package:notes/model/note_model.dart';

class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNoteLoadingState extends NotesState {}

final class AddNoteSuccessfulState extends NotesState {
  final List<NoteModel> notes;

  AddNoteSuccessfulState(this.notes);
}

final class AddNoteFailureState extends NotesState {
  final String errorMessage;
  AddNoteFailureState(this.errorMessage);
}
