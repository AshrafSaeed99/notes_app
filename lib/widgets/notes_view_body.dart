import 'package:flutter/material.dart';
import 'package:notes_app/modeles/note_model.dart';
import 'package:notes_app/widgets/note_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 12,),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return NoteWidget(
              note: NoteModel(title: 'title 1', content: 'content 1'),
              color: Colors.white,
            );
          },
        ),
      ),
    );
  }
}
