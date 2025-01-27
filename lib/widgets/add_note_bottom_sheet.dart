import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 16),
        child: AddNoteForm(),
      ),
    );
  }

}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
   AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? _title, _description;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFieldWidget(hintText: 'Title', onSaved: (value) => _title = value),
          const SizedBox(height: 16),
          CustomTextFieldWidget(hintText: 'Description', maxLines: 5, onSaved: (value) => _description = value),
          const SizedBox(height: 16),
        CustomButtonWidget(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              print('Title: $_title, Description: $_description');
            } else {
              setState(() {
                _autovalidateMode = AutovalidateMode.always;
              });
            }
          },
        ),
        ],
      ),
    );
  }
}
