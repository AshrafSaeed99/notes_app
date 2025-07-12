import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          CustomTextField(maxLines: 1, hintText: "title"),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Content', maxLines: 5,),
          Spacer(),
          SizedBox(width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimarColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.maxLines, required this.hintText,
  });
  final int maxLines;  
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimarColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText:hintText,
        
      ),
    );
  }
}

OutlineInputBorder buildBorder({Color color = kPrimarColor}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
}
