// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'dart:io';

import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:projeto_epsa/screens/loginpage.dart';
// import 'package:image_picker/image_picker.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // File? arquivo;
  // final picker = ImagePicker();

  // Future getFileFromGallery() async {
  //   final file = await picker.getImage(source: ImageSource.gallery);
  //   if (file != null) {
  //     setState(() => arquivo = File(file.path));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: SizedBox(
              width: 550,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 180.0, right: 350),
                child: FlatButton(
                  splashColor: Colors.black12,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          title: '',
                        ),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 253, 253, 253),
              ),
              child: SizedBox(
                width: 550,
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 100, right: 30, left: 30, bottom: 50),
                  child: TextFormField(
                    // autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130.0, top: 100),
            child: CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage("assets/images/avatar.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 225.0, left: 180),
            child: Container(
              height: 55,
              width: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1.0],
                  colors: [
                    Colors.cyan,
                    Colors.cyan,
                  ],
                ),
                border: Border.all(
                  width: 2,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 20,
                    ),
                    onPressed: () {}
                    // => getFileFromGallery(),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380.0, left: 30, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460.0, left: 30, right: 30),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550.0, left: 30, right: 30),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Confirme sua senha",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700.0, left: 30),
            child: Row(
              children: [
                // BOTÃO DE CADASTRO DO PET
                EasyOutlinedButton(
                  height: 60,
                  width: 150,
                  label: 'Cadastrar',
                  isRounded: true,
                  icon: const Icon(
                    Icons.check,
                    size: 20,
                    color: Color.fromARGB(255, 0, 255, 34),
                  ),
                  isTrailingIcon: true,
                  color: Colors.cyan,
                  labelColor: Colors.cyan,
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: EasyOutlinedButton(
                    height: 60,
                    width: 150,
                    label: 'Cancelar',
                    isRounded: true,
                    icon: const Icon(
                      Icons.block,
                      size: 20,
                      color: Colors.red,
                    ),
                    isTrailingIcon: true,
                    color: Colors.cyan,
                    labelColor: Colors.cyan,
                    onPressed: () => Navigator.pop(context, false),
                  ),
                ),
              ],
            ),
          ),
        ],
        // padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        // color: Colors.white,
        // child: ListView(
        //   children: <Widget>[
        //     SizedBox(
        //       width: 200,
        //       height: 200,
        //       // child: ClipRRect(
        //       //   borderRadius: BorderRadius.circular(12),
        //       //   child: Image.file(
        //       //     arquivo!,
        //       //     fit: BoxFit.cover,
        //       //   ),
        //       // ),
        //     ),
        //     Container(
        //       height: 56,
        //       width: 56,
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           stops: [0.3, 1.0],
        //           colors: [
        //             Color.fromARGB(255, 255, 158, 73),
        //             Color.fromARGB(255, 255, 126, 13),
        //           ],
        //         ),
        //         border: Border.all(
        //           width: 3.0,
        //           color: const Color(0xFFFFFFFF),
        //         ),
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(56),
        //         ),
        //       ),
        //       child: SizedBox.expand(
        //         child: FlatButton(
        //             child: Icon(
        //               Icons.add,
        //               color: Colors.white,
        //               size: 20,
        //             ),
        //             onPressed: () {}
        //             // => getFileFromGallery(),
        //             ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     TextFormField(
        //       // autofocus: true,
        //       keyboardType: TextInputType.text,
        //       decoration: InputDecoration(
        //         labelText: "Nome",
        //         labelStyle: TextStyle(
        //           color: Colors.black38,
        //           fontWeight: FontWeight.w400,
        //           fontSize: 20,
        //         ),
        //       ),
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     TextFormField(
        //       // autofocus: true,
        //       keyboardType: TextInputType.emailAddress,
        //       decoration: InputDecoration(
        //         labelText: "E-mail",
        //         labelStyle: TextStyle(
        //           color: Colors.black38,
        //           fontWeight: FontWeight.w400,
        //           fontSize: 20,
        //         ),
        //       ),
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     TextFormField(
        //       // autofocus: true,
        //       keyboardType: TextInputType.text,
        //       obscureText: true,
        //       decoration: InputDecoration(
        //         labelText: "Senha",
        //         labelStyle: TextStyle(
        //           color: Colors.black38,
        //           fontWeight: FontWeight.w400,
        //           fontSize: 20,
        //         ),
        //       ),
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     TextFormField(
        //       // autofocus: true,
        //       keyboardType: TextInputType.text,
        //       obscureText: true,
        //       decoration: InputDecoration(
        //         labelText: "Confirme a senha",
        //         labelStyle: TextStyle(
        //           color: Colors.black38,
        //           fontWeight: FontWeight.w400,
        //           fontSize: 20,
        //         ),
        //       ),
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     SizedBox(
        //       height: 50,
        //     ),
        //     Container(
        //       height: 60,
        //       alignment: Alignment.centerLeft,
        //       decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           stops: [0.3, 1],
        //           colors: [
        //             Color.fromARGB(255, 255, 119, 0),
        //             Color.fromARGB(255, 255, 132, 24),
        //           ],
        //         ),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Color.fromARGB(255, 105, 105, 105),
        //             offset: const Offset(
        //               0.3,
        //               1.0,
        //             ),
        //             blurRadius: 2.0,
        //             spreadRadius: 2.0,
        //           ), //BoxShadow
        //           BoxShadow(
        //             color: Color.fromARGB(255, 255, 132, 24),
        //             offset: const Offset(0.0, 0.0),
        //             blurRadius: 0.0,
        //             spreadRadius: 0.0,
        //           ), //BoxShadow
        //         ],
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(5),
        //         ),
        //       ),
        //       child: SizedBox.expand(
        //         child: FlatButton(
        //           child: Text(
        //             "Cadastrar",
        //             style: TextStyle(
        //               fontWeight: FontWeight.w300,
        //               color: Colors.white,
        //               fontSize: 23,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 40,
        //       alignment: Alignment.center,
        //       child: FlatButton(
        //         child: Text(
        //           "Cancelar",
        //           textAlign: TextAlign.center,
        //         ),
        //         onPressed: () => Navigator.pop(context, false),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
