// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_actions/easy_actions.dart';
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
  var db = FirebaseFirestore.instance;

  final controllerNome = TextEditingController();
  final controllerData = TextEditingController();
  final controllerRaca = TextEditingController();
  final controllerPelagem = TextEditingController();
  final controllerPeso = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.cyan,
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
                color: Color.fromARGB(255, 253, 253, 253),
              ),
              child: SizedBox(
                width: 550,
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 100, right: 30, left: 30, bottom: 50),
                  child: TextFormField(
                    controller: controllerNome,
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
            padding: const EdgeInsets.only(top: 360.0, left: 30, right: 30),
            child: TextFormField(
              controller: controllerData,
              keyboardType: TextInputType.text,
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
              controller: controllerRaca,
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
              controller: controllerPelagem,
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
              controller: controllerPeso,
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
                  onPressed: () {
                    db.collection("pets").add({
                      "nome": controllerNome.text,
                      "data": controllerData.text,
                      "raca": controllerRaca.text,
                      "pelagem": controllerPelagem.text,
                      "peso": controllerPeso.text,
                    });
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
