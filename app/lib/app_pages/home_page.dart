import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import '../custom_widgets/authentication.dart';
import 'app_state.dart';
import  '../custom_widgets/widgets.dart';

import '../custom_widgets/navigation_drawer.dart' as nav;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const nav.NavigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Consumer<ApplicationState>(
              builder: (context, appState, _) => AuthFunc(
                  loggedIn: appState.loggedIn,
                  signOut: () {
                    FirebaseAuth.instance.signOut();
                  }),
            ),
            const SizedBox(height: 30, ),
            const Text("This will be the home page!\n"),
            if (_clicked) const Text('Made by:\n\nJoão Silva\nHenrique Gardé\nJoão Padrão\nJoão Longras\nSamuel Maciel'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_clicked) {
                      _clicked = false;
                    }
                    else{
                      _clicked = true;
                    }
                  });
                },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
                child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}