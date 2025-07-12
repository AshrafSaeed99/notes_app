import 'package:flutter/material.dart';
import 'package:notes_app/modeles/note_model.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key, required this.color, required this.note});
  final Color color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                note.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red, size: 30),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            note.content,
            style: TextStyle(fontSize: 20, color: Colors.black.withAlpha(5000)),
          ),
          Spacer(),
          Align(alignment: Alignment.bottomRight, 
          child: Text('12/12/2022', style: TextStyle(color: Colors.black.withAlpha(5000), fontSize: 16),),),
        ],
      ),
    );
  }
}
