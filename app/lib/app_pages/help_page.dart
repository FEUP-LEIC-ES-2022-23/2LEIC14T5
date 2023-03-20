import 'package:flutter/material.dart';

import '../navigation_drawer.dart' as nav;

class HelpPage extends StatelessWidget{
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const nav.NavigationDrawer(),
      body: const Center(
        child: Text("This will be the help page!"),
      ),
    );
  }
}