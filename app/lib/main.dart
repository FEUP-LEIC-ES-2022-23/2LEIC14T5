import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
   return ChangeNotifierProvider(
     create: (context) => State(),
     child: const MaterialApp(
         home: HomePage(),
     ),
   );
  }
}

class State extends ChangeNotifier{
  //This class will be used to change the state of the app when the use executes actions
}
