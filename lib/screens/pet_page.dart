import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../repositories/pets_repository.dart';
import 'pet-profile-vacina.dart';


class PetPage extends StatefulWidget {
  Pet pet;
  PetPage({ Key? key, required this.pet }) : super(key: key);

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
          // backgroundColor: widget.pet.cor,
          title: Center(child: Text(widget.pet.nome)
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
          ], indicatorColor: Colors.white ,
        ),
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(24), child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(widget.pet.foto),
                ),
                ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(150.0),
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
        ]),
        
      ),
    );
  }
}