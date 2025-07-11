import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(    
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(40),
        borderRadius: BorderRadius.circular(12),
      ),  
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Note 1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
            //fontFamily: 'assets/fonts/Poppins-Regular.ttf',
            ),),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,))
          ]),
          SizedBox(height: 10,),
          Text("Note 1", style: TextStyle(fontSize: 20),),
          Spacer(),
          Align(alignment: Alignment.bottomRight, child: Text('12/12/2022'))
        ],
      ),
    );
  }
}
