import 'package:flutter/material.dart';
import 'package:notes_app/widgets/floatingactionbuttonwidget.dart';
import 'package:notes_app/widgets/notes_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const NotesBodyWidget(),
      floatingActionButton: FloatingActionButtonWidget(),
    );
  }
}
