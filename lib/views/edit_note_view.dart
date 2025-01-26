import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';
import 'package:notes_app/widgets/notes_app_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            NotesAppBarWidget(appBarTitle: 'Edit Note',icon: Icons.check,),
            CustomTextFieldWidget(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFieldWidget(hintText: 'Description', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
