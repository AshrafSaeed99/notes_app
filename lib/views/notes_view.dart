import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_app_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [NotesViewAppBar(), NotesViewBody()]),
        ),
      ),
    );
  }
}
