import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_container.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(color: Colors.white, fontSize: 30)),
        Spacer(),
        SearchContainer(),
      ],
    );
  }
}

