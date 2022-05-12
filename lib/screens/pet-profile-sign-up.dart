// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import '../controllers/pet_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pet-sign-up-page.dart';

class PetProfileSignUp extends StatefulWidget {
  PetProfileSignUp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PetProfileSignUp> createState() => _MyPetProfileSignUpState();
}

class _MyPetProfileSignUpState extends State<PetProfileSignUp> {

  var controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PetController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 255, 180, 82),
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
                        builder: (context) => PetSignUp(
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
                color: Color.fromARGB(255, 121, 235, 255),
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
                      labelText: "Nome do Pet",
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
              backgroundImage: AssetImage("assets/images/avatardog.png"),
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
                    Color.fromARGB(255, 255, 158, 73),
                    Color.fromARGB(255, 255, 126, 13),
                  ],
                ),
                border: Border.all(
                  width: 2.0,
                  color: const Color(0xFFFFFFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {}
                    // => getFileFromGallery(),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360.0, left: 30, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Data de Nascimento",
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
            padding: const EdgeInsets.only(top: 430.0, left: 30, right: 30),
            child: TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Raça",
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
            padding: const EdgeInsets.only(top: 500.0, left: 30, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Pelagem",
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
            padding: const EdgeInsets.only(top: 570.0, left: 30, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(fontSize: 18),
            ),
          ),
          // Center(
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 60.0, right: 200),
          //     child: FloatingActionButton.extended(
          //       backgroundColor: Color.fromARGB(255, 16, 190, 0),
          //       onPressed: () {},
          //       icon: Icon(Icons.check),
          //       label: Text("Cadastrar"),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 620.0, right: 200),
            child: Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 0, 156, 13),
                            Color.fromARGB(255, 0, 209, 17)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Cadastrar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 620.0, left: 200),
            child: Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 187, 1, 1),
                            Color.fromARGB(255, 243, 0, 0)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Cancelar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Center(
          //   child: FloatingActionButton.extended(
          //     label: Text('Cadastrar'), // <-- Text
          //     backgroundColor: Color.fromARGB(255, 56, 177, 0),
          //     icon: Icon(
          //       // <-- Icon
          //       Icons.check,
          //       size: 24.0,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          // Center(
          //   child: FloatingActionButton.extended(
          //     label: Text('Cancelar'), // <-- Text
          //     backgroundColor: Color.fromARGB(255, 226, 0, 0),
          //     icon: Icon(
          //       // <-- Icon
          //       Icons.block,
          //       size: 24.0,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
