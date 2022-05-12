// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:projeto_epsa/screens/pet-profile-sign-up.dart';
import 'package:projeto_epsa/screens/pet-sign-up-page.dart';
import 'screens/loginpage.dart';

void main() async{
  runApp(MyApp());

  //INICIALIZANDO FIREBASE
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  //EXEMPLO DE CRIACAO DO BANCO DE DADOS NO CLOUD FIRESTORE

  // var ok = FirebaseFirestore.instance.collection("Produtos");
  // ok.doc("produto2").set({
  //   "nome":"teste",
  //   "preco":"2.0"
  // }
  // );
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Pet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: LoginPage(
        title: ' ',
      ),
    );
  }
}


