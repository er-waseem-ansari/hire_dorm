import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget{
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Hello")
          ],
        ),
      ),
    );
  }
}