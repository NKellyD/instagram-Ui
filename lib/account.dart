import 'package:flutter/material.dart';
import 'package:instagram_ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Account'),
            InkWell(
              onTap: (){
                Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
              },
                child:
                const Icon(Icons.sunny))
          ],
        ),
      ),
      body: Center(child: Text('account'),),
    );
  }
}
