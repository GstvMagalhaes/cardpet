// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../repositories/pets_repository.dart';
import 'pet-profile-vacina.dart';
import 'pet-sign-up-page.dart';

class PetPage extends StatefulWidget {
  Pet pet;
  PetPage({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.pet.cor,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60.0, top: 10),
              child: Text(
                widget.pet.nome,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                icon: Icon(Icons.pets_rounded),
                text: "Pet",
              ),
              Tab(
                icon: Icon(Icons.health_and_safety_rounded),
                text: "Vacinas",
              )
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(widget.pet.foto),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Text(
                            'Nome: ' '${widget.pet.nome}',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        Text(
                          'Tipo: ' '${widget.pet.tipo}',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 23,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Text(
                            'Peso: 10kg',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 210.0),
                    child: Text(
                      'Raça: Vira-lata',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 80),
                    child: Text(
                      'Data de Nasc: 10/10/2010',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25, right: 8, left: 20, bottom: 8),
                      child: Image.asset(
                        'assets/images/qrcode.png',
                        height: 230,
                        width: 230,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(175.0),
                child: FloatingActionButton(
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
                  child: Icon(Icons.add),
                  backgroundColor: Color.fromARGB(255, 121, 235, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //     bottomNavigationBar: BottomAppBar(
    //       shape: CircularNotchedRectangle(),
    //       child: Container(
    //         height: 75,
    //         child: Row(
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             IconButton(
    //               iconSize: 30.0,
    //               padding: EdgeInsets.only(left: 28.0),
    //               icon: Icon(Icons.home),
    //               onPressed: () {
    //                 // setState(() {
    //                 //   _myPage.jumpToPage(0);
    //                 // });
    //               },
    //             ),
    //             IconButton(
    //               iconSize: 30.0,
    //               padding: EdgeInsets.only(right: 28.0),
    //               icon: Icon(Icons.edit),
    //               onPressed: () {
    //                 // setState(() {
    //                 //   _myPage.jumpToPage(1);
    //                 // });
    //               },
    //             ),
    //             IconButton(
    //               iconSize: 30.0,
    //               padding: EdgeInsets.only(left: 28.0),
    //               icon: Icon(Icons.notifications),
    //               onPressed: () {
    //                 // setState(() {
    //                 //   _myPage.jumpToPage(2);
    //                 // });
    //               },
    //             ),
    //             IconButton(
    //               iconSize: 30.0,
    //               padding: EdgeInsets.only(right: 28.0),
    //               icon: Icon(Icons.store_mall_directory),
    //               onPressed: () {
    //                 // setState(() {
    //                 //   _myPage.jumpToPage(3);
    //                 // });
    //               },
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     floatingActionButton: Container(
    //       height: 65.0,
    //       width: 65.0,
    //       child: FittedBox(
    //         child: FloatingActionButton(
    //           backgroundColor: Colors.amber,
    //           onPressed: () {},
    //           child: Icon(
    //             Icons.sports_esports,
    //             color: Color.fromARGB(255, 255, 255, 255),
    //           ),
    //           // elevation: 5.0,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
