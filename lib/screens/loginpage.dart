// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:projeto_epsa/screens/pet-sign-up-page.dart';
import 'package:projeto_epsa/screens/sign-up-page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       Color.fromARGB(255, 0, 217, 255),
        //       Color.fromARGB(255, 188, 235, 253),
        //       Color.fromARGB(255, 255, 246, 195),
        //       Color.fromARGB(255, 255, 191, 53),
        //     ],
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 27,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 180,
              height: 180,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  )),
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage(),),
                },
                child: Text("Esqueceu sua senha?"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                // border: Border.all(
                //     color: Color.fromARGB(255, 0, 0, 0),
                //     width: 1.0,
                //     style: BorderStyle.solid), //Border.all
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 255, 119, 0),
                    Color.fromARGB(255, 255, 132, 24),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                //BorderRadius.only
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 105, 105, 105),
                    offset: const Offset(
                      0.3,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 132, 24),
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/images/pata.png"),
                          height: 50,
                          width: 50,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PetSignUp(
                          title: '',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                // border: Border.all(
                //     color: Color.fromARGB(255, 0, 0, 0),
                //     width: 1.0,
                //     style: BorderStyle.solid), //Border.all

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                //BorderRadius.only
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 105, 105, 105),
                    offset: const Offset(
                      0.3,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Entrar com Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black87,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/images/google-icon.svg"),
                          height: 40,
                          width: 40,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomePage(),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}