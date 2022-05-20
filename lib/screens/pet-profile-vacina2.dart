// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:projeto_epsa/screens/loginpage.dart';
import 'package:projeto_epsa/screens/pet-profile-vermifugos.dart';
import 'package:projeto_epsa/screens/sign-up-page.dart';
import 'pet-profile-vacina.dart';
import 'pet-profile-vacina2.dart';

import 'pet-sign-up-page.dart';

class PetProfileVacina2 extends StatefulWidget {
  const PetProfileVacina2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PetProfileVacina2> createState() => _MyPetProfileSignUpState();
}

class _MyPetProfileSignUpState extends State<PetProfileVacina2> {
  final formKey = GlobalKey<FormState>();

  final controllerVacina = TextEditingController();
  final controllerData = TextEditingController();
  final controllerPeso = TextEditingController();
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 255, 140, 32),
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
                          //<--- PetSignUp
                          title: '',
                        ),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 350.0, top: 37),
            child: PopupMenuButton(
              onSelected: (value) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PetProfileVermifugo(
                    title: '',
                  ),
                ));
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Vermífugos'),
                  value: 'firstPage',
                ),
                // PopupMenuItem(
                //   child: Text('secondPage'),
                //   value: 'secondPage',
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: SizedBox(
                width: 550,
                height: 800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130.0, top: 90),
            child: CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage("assets/images/avatardog.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0, top: 45),
            child: Text(
              'Carteirinha do PET',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 23,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280.0, left: 30, right: 30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      controller: controllerVacina,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Vacina",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      style: TextStyle(fontSize: 18),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      controller: controllerData,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: "Data",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      style: TextStyle(fontSize: 18),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  SizedBox(
                    height: 45,
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
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480.0, right: 1, left: 265),
            child: SizedBox(
              width: 100,
              height: 25,
              child: EasyOutlinedButton(
                height: 60,
                width: 150,
                label: 'Salvar',
                isRounded: true,
                icon: const Icon(
                  Icons.save,
                  size: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                isTrailingIcon: true,
                color: Color.fromARGB(255, 0, 0, 0),
                labelColor: Color.fromARGB(255, 7, 7, 7),
                onPressed: () {
                  formKey.currentState?.validate();
                  SnackBar snackBar = const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text('Alterações Salvas!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  db.collection("vacinas").add(
                    {
                      "vacina": controllerVacina.text,
                    "data": controllerData.text,
                    "peso": controllerPeso.text
                    }
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 625.0, right: 42, left: 20),
            child: SizedBox(
              child: EasyOutlinedButton(
                height: 50,
                width: 130,
                label: 'Voltar ',
                labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                isRounded: true,
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                isTrailingIcon: true,
                color: Color.fromARGB(255, 0, 0, 0),
                labelColor: Color.fromARGB(255, 7, 7, 7),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PetProfileVacina(
                        title: '',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.add_moderator_outlined,
              size: 28,
            ),
            label: 'Vermifugos',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PetProfileVermifugo(
                  title: '',
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
