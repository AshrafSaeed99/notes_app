import 'package:flutter/material.dart';
import 'package:notes_app/main.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NotesApp(),
      ],
    );
  }
}