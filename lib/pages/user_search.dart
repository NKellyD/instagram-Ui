
import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/search_widget.dart';

class UserSearch extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(Icons.search,color: Theme.of(context).colorScheme.primary,),
                Text('Search',style:TextStyle(color: Theme.of(context).colorScheme.primary,))
              ],
            ),
          ),
        ),
      ),
      body: const SearchWidget(),
    );
  }
}
