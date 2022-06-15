// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:projeto_epsa/models/vacinas.dart';
import 'package:projeto_epsa/screens/petshops.dart';
import 'package:projeto_epsa/screens/qrcode.dart';
import '../models/pet.dart';
import 'pet-profile-vacina.dart';
import 'pet-sign-up-page.dart';

class PetPage extends StatefulWidget {
  // PetPage({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  late List<Vacinas> vacinas;
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60.0, top: 10),
            child: SizedBox(
              child: Text("Perfil PET"),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SizedBox(
              height: 500,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 100),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://static1.patasdacasa.com.br/articles/8/10/38/@/4864-o-cachorro-inteligente-mostra-essa-carac-articles_media_mobile-1.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  children: [
                    StreamBuilder<QuerySnapshot>(
                      stream: db.collection("pets").snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return SizedBox();
                        }
                        var documentos = snapshot.data!.docs;
                        return Text(
                          "Nome: ${documentos.first['nome']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 25),
                        );
                      },
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    StreamBuilder<QuerySnapshot>(
                      stream: db.collection("pets").snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return SizedBox();
                        }
                        var documentos = snapshot.data!.docs;
                        return Text(
                          "Raça: ${documentos.first['raca']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 100),
            child: Center(
              child: Row(
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: db.collection("pets").snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return SizedBox();
                      }
                      var documentos = snapshot.data!.docs;
                      return Text(
                        "Peso: ${documentos.first['peso']} kg",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: db.collection("pets").snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return SizedBox();
                      }
                      var documentos = snapshot.data!.docs;
                      return Text(
                        "Data: ${documentos.first['data']}",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 23,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Center(
                child: Icon(
              Icons.pets,
              size: 80,
            )),
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.qr_code,
              size: 28,
            ),
            label: 'QR Code',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QrCode(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: Icon(
              Icons.medical_services_rounded,
              size: 28,
            ),
            label: 'Vacinas',
            onTap: () {
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
          SpeedDialChild(
            child: Icon(
              Icons.store,
              size: 28,
            ),
            label: 'Pet Shops Parceiros',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetShops(
                    title: '',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
