import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView(
        children: const [
          NoteWidget(),
          NoteWidget(),
          NoteWidget(),
          NoteWidget(),
        ],
      ),
    );
  }
}