import 'package:flutter/material.dart';

class SearchIconWdget extends StatelessWidget {
  const SearchIconWdget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(15),
        borderRadius: BorderRadius.circular(16),
      ),
        child: const Icon(Icons.search, color: Colors.white, size: 36,),
    );
  }
}