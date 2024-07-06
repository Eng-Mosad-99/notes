class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoadingState extends AddNoteState {}

final class AddNoteSuccessfulState extends AddNoteState {}

final class AddNoteFailureState extends AddNoteState {
  final String errorMessage;
  AddNoteFailureState(this.errorMessage);
}
