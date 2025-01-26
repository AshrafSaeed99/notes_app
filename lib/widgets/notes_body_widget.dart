import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item_widget.dart';
import 'package:notes_app/widgets/notes_app_widget.dart';
class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(height: 50),
          NotesAppBarWidget(),
          NoteItemWidget(title: 'Note Title', description: 'Note Description', traling: 'Jan 10, 2024',),

        ],
      ),
    );
  }
}