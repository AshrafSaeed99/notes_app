import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon_wdget.dart';

class NotesAppWidget extends StatelessWidget {
  const NotesAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 30),),
        SearchIconWdget(),
      ],
    );
  }
}