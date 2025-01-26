import 'package:flutter/material.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key, required this.title, required this.description, required this.traling});
final String title;
final String description;
final String traling;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            
            title: Text(title, style: TextStyle(fontSize: 26,color: Colors.black),),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(description, style: TextStyle(fontSize: 20,color: Colors.black.withAlpha(170),),),
            ),
            trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.delete, color: Colors.black, size: 30,),),
          ),
           Padding(
             padding: const EdgeInsets.only(right: 16),
             child: Text(traling, style: TextStyle(fontSize: 18,color: Colors.black.withAlpha(140),),),
           ),
        ],
      ),
    );
  }
}