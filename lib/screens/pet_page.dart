
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:projeto_epsa/models/vacinas.dart';
import '../models/pet.dart';
import 'pet-profile-vacina.dart';
import 'pet-sign-up-page.dart';

class PetPage extends StatefulWidget {
  
  // PetPage({Key? key, required this.pet}) : super(key: key);

  late List<Vacinas> vacinas;

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
          backgroundColor: Colors.blue,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60.0, top: 10),
              child: Text( "ok",
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
                //FALTA FAZER TABELA DAS VACINAS
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
                        backgroundImage: NetworkImage(""),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Text(
                            'Nome: ' '',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        Text(
                          'Tipo: ' '${"widget.pet.tipo"}',
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
                  heroTag: 'next2',
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
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.edit,
                size: 28,
              ),
              label: 'Editar',
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(
                Icons.notifications,
                size: 28,
              ),
              label: 'Notificações',
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(
                Icons.store,
                size: 28,
              ),
              label: 'Pet Shops Parceiros',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
