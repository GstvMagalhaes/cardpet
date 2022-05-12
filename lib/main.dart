// ignore_for_file: prefer_const_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:projeto_epsa/screens/pet-profile-sign-up.dart';
import 'package:projeto_epsa/screens/pet-sign-up-page.dart';
import 'screens/loginpage.dart';

void main() async {
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
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/loading.json'),

      // Column(
      //   children: [
      ///TODO Add your image under assets folder
      //     Image.asset('assets/logo_icon.png'),
      //     const Text('Cake app', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)
      //   ],
      // ),
      backgroundColor: Color.fromARGB(255, 255, 156, 42),
      nextScreen: LoginPage(
        title: '',
      ),
      splashIconSize: 250,
      duration: 6000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         centerTitle: true,
//       ),
//     );
//   }
// }