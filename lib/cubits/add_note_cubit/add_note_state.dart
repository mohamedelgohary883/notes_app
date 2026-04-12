class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteloading extends AddNoteState {}

class AddNoteSuccses extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure({required this.errorMessage});
}
