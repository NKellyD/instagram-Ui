import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 20,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
            ),
          );
        });
  }
}
