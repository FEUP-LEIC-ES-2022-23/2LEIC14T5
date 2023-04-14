import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
// import 'guest_book_message.dart'; N sei oq é q isto faz
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart'; Tb n sei oq faz


class AppState extends StatefulWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<AppState> {
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  Widget build(BuildContext context) {
    return Text('sheesh');
  }

}