import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFieldWidget(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFieldWidget(hintText: 'Description', maxLines: 5),
            SizedBox(height: 16),
          CustomButtonWidget(),
          ],
        ),
      ),
    );
  }

}
