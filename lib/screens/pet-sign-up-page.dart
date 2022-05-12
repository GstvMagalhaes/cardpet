// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_epsa/models/pet.dart';
import 'package:projeto_epsa/screens/pet_page.dart';
import '../controllers/pet_controller.dart';

import 'pet-profile-sign-up.dart';

class PetSignUp extends StatefulWidget {
  const PetSignUp({Key? key, required this.title}) : super(key: key);
  final String title;
  

  @override
  State<PetSignUp> createState() => _MyPetSignUpState();
}

class _MyPetSignUpState extends State<PetSignUp> {

  //CONTROLADOR DAS TABELAS DOS PETS
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
      body: Container(
        color: Color.fromARGB(255, 121, 235, 255),
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
                Text(
                  'Usuario',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 27,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, bottom: 75),
                  child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        size: 35,
                      ),
                      onPressed: () {}),
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
                      visible: controller.tabela.isNotEmpty,
                      child: ListView.separated( 
                      itemCount: controller.tabela.length, 
                      itemBuilder: (BuildContext context, int pet){
                        final List<Pet> tabela = controller.tabela;
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(tabela[pet].foto),
                          ), //Image.network(tabela[i].foto),
                          title: Text(tabela[pet].nome),
                          trailing: Text(tabela[pet].tipo),
                        
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) => PetPage(key: Key(tabela[pet].nome), pet: tabela[pet],)
                          ));
                        },
                        );
                      }, 
                      separatorBuilder: (_,__) => Divider(),
                      padding: EdgeInsets.all(16),
                    ),
                    ),
                    
                    
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 300.0),
                        child: FloatingActionButton(
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
                          child: Icon(Icons.add),
                          backgroundColor: Color.fromARGB(255, 121, 235, 255),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 255, 180, 82),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
