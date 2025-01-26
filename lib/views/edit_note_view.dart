import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 100),
        child: Column(
          children: [
            CustomTextFieldWidget(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFieldWidget(hintText: 'Description', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
