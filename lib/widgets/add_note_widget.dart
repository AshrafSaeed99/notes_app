import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextField(
            cursorColor: kPrimarColor,
            decoration: InputDecoration(
              border: buildBorder(),
              enabledBorder: buildBorder(),
              hintText: 'Title',
            ),
          ),
          TextField(
            maxLines: 10,
            cursorColor: kPrimarColor,
            decoration: InputDecoration(
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
              hintText: 'Content',
              
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Save',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
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
