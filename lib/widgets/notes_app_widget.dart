import 'package:flutter/material.dart';

class NotesAppWidget extends StatelessWidget {
  const NotesAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 24)),
      ],
    );
  }
}