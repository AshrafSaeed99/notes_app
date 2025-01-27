import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote() {
    emit(AddNoteLoading());
    try {
      // Add note logic here
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
