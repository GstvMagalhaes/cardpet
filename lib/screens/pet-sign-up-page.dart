import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_epsa/models/pet.dart';
import 'package:projeto_epsa/screens/loginpage.dart';
import 'package:projeto_epsa/screens/pet_page.dart';
import 'package:projeto_epsa/screens/petshops.dart';

import 'pet-profile-sign-up.dart';

class PetSignUp extends StatefulWidget {
  const PetSignUp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PetSignUp> createState() => _MyPetSignUpState();
}

class _MyPetSignUpState extends State<PetSignUp> {
  late List<Pet> items;
  var db = FirebaseFirestore.instance;
  late StreamSubscription<QuerySnapshot> petInscricao;

  // late StreamSubscription<QuerySnapshot> petInscricao = petInscricao;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    petInscricao.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 40, left: 25, top: 25, bottom: 25),
                  child: CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20.0,
                  ),
                  child: Text(
                    'Usuario',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 27,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                //BOTAO PARA DESLOGAR O USUARIO
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, bottom: 75),
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      size: 25,
                    ),
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
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 600,
              child: Container(
                child: Stack(
                  children: [
                    //LISTA DOS PERFIS DOS PETS
                    Visibility(
                      replacement: Center(
                        child: Text(
                          'Clique no + para adicionar um pet',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // visible: controller.tabela.isNotEmpty,
                      child: StreamBuilder<QuerySnapshot>(
                        stream: db.collection("pets").snapshots(),
                        builder: (context, snapshot) {
                          print(snapshot.data);
                          if (snapshot.data == null) {
                            return SizedBox();
                          }
                          // items = snapshot.data!.docs.map((documentSnapshot) => Pet.fromMap(documentSnapshot.data(), documentSnapshot.id),).toList();
                          // return Container();
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(snapshot.data!.docs[index]['nome']),
                                subtitle:
                                    Text(snapshot.data!.docs[index]['raca']),
                                leading: Column(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.delete_forever),
                                      onPressed: () {
                                        db
                                            .collection("pets")
                                            .doc(snapshot.data!.docs[index].id)
                                            .delete();
                                      },
                                    ),
                                  ],
                                ),
                                trailing: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) => PetPage(
                                                  data: snapshot
                                                      .data!.docs[index].id)),
                                            ),
                                          );
                                        },
                                        icon: Icon(Icons.pending))
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  // setState(() {
                  //   _myPage.jumpToPage(0);
                  // });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // setState(() {
                  //   _myPage.jumpToPage(2);
                  // });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(
                  Icons.store_mall_directory,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PetShops(
                        title: '',
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            heroTag: 'next3',
            backgroundColor: Colors.amber,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetProfileSignUp(
                    title: '',
                  ),
                ),
              );
            },
            child: Icon(
              Icons.add,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            // elevation: 5.0,
          ),
        ),
      ),
    );
  }
}
