import 'package:notes/model/note_model.dart';

class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessfulState extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessfulState(this.notes);
}

final class NotesFailureState extends NotesState {
  final String errorMessage;
  NotesFailureState(this.errorMessage);
}
