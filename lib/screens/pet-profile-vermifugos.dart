// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_memberPetProfileVacina_use

import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:projeto_epsa/screens/loginpage.dart';
import 'package:projeto_epsa/screens/sign-up-page.dart';
import 'pet-profile-vacina.dart';
import 'pet-profile-vacina2.dart';
import 'pet-profile-vermifugos2.dart';

import 'pet-sign-up-page.dart';

class PetProfileVermifugo extends StatefulWidget {
  const PetProfileVermifugo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PetProfileVermifugo> createState() => _MyPetProfileSignUpState();
}

class _MyPetProfileSignUpState extends State<PetProfileVermifugo> {
  final formKey = GlobalKey<FormState>();
  // String firstpage = 'First Page';
  // String secondpage = 'First Page';
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
                  builder: (context) => const PetProfileVacina(
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
                  child: Text('Vacinas'),
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
                // child: Padding(
                //   padding: const EdgeInsets.only(
                //       top: 70, right: 30, left: 30, bottom: 50),
                //   child: TextFormField(
                //     keyboardType: TextInputType.text,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(25.0),
                //       ),
                //       labelText: "Vacina",
                //       fillColor: Color.fromARGB(255, 255, 255, 255),
                //       filled: true,
                //       labelStyle: TextStyle(
                //         color: Colors.black54,
                //         fontWeight: FontWeight.w500,
                //         fontSize: 17,
                //       ),
                //     ),
                //     style: TextStyle(fontSize: 18),
                //   ),
                // ),
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
            padding: const EdgeInsets.only(left: 140.0, top: 45),
            child: Text(
              'Vermifugos',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 23,
              ),
            ),
          ),
          /*
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
          */
          /*Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 30, right: 30),
            child: SizedBox(
              height: 45,
              child: Form(
                 key: formKey,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: "Vacina",
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
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
            ),
          ),
          */
          Padding(
            padding: const EdgeInsets.only(top: 280.0, left: 30, right: 30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Produto",
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Dose",
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 45,
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
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obrigatório';
                          }
                        },
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  // ),
                  // SizedBox(
                  //   height: 45,
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.text,
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //       ),
                  //       labelText: "Médico",
                  //       fillColor: Color.fromARGB(255, 255, 255, 255),
                  //       filled: true,
                  //       labelStyle: TextStyle(
                  //         color: Colors.black54,
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 17,
                  //       ),
                  //     ),
                  //     style: TextStyle(fontSize: 18),
                  //     validator: (String? value) {
                  //       if (value == null || value.isEmpty) {
                  //         return 'Campo obrigatório';
                  //       }
                  //     },
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  // ),
                  // SizedBox(
                  //   height: 45,
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.datetime,
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //       ),
                  //       labelText: "Data da Próxima",
                  //       fillColor: Color.fromARGB(255, 255, 255, 255),
                  //       filled: true,
                  //       labelStyle: TextStyle(
                  //         color: Colors.black54,
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 17,
                  //       ),
                  //     ),
                  //     style: TextStyle(fontSize: 18),
                  //     validator: (String? value) {
                  //       if (value == null || value.isEmpty) {
                  //         return 'Campo obrigatório';
                  //       }
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.only(top: 315.0, left: 30, right: 30),
            child: SizedBox(
              height: 45,
              child: Form(
                key: formKey2,
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: "Data",
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
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
            ),
          ),
          */
          // Padding(
          //   padding: const EdgeInsets.only(top: 380.0, left: 30, right: 30),
          //   child: SizedBox(
          //     height: 45,
          //     child: Form(
          //        key: formKey3,
          //       child: TextFormField(
          //         keyboardType: TextInputType.text,
          //         decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(25.0),
          //           ),
          //           labelText: "Peso",
          //           fillColor: Color.fromARGB(255, 255, 255, 255),
          //           filled: true,
          //           labelStyle: TextStyle(
          //             color: Colors.black54,
          //             fontWeight: FontWeight.w500,
          //             fontSize: 17,
          //           ),
          //         ),
          //         style: TextStyle(fontSize: 18),
          //         validator: (String? value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Campo obrigatório';
          //           }
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 445.0, left: 30, right: 30),
          //   child: SizedBox(
          //     height: 45,
          //     child: Form(
          //       child: TextFormField(
          //         key: formKey4,
          //         keyboardType: TextInputType.text,
          //         decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(25.0),
          //           ),
          //           labelText: "Médico",
          //           fillColor: Color.fromARGB(255, 255, 255, 255),
          //           filled: true,
          //           labelStyle: TextStyle(
          //             color: Colors.black54,
          //             fontWeight: FontWeight.w500,
          //             fontSize: 17,
          //           ),
          //         ),
          //         style: TextStyle(fontSize: 18),
          //         validator: (String? value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Campo obrigatório';
          //           }
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 510.0, left: 30, right: 30),
          //   child: SizedBox(
          //     height: 45,
          //     child: Form(
          //       child: TextFormField(
          //         key: formKey5,
          //         keyboardType: TextInputType.datetime,
          //         decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(25.0),
          //           ),
          //           labelText: "Data da Próxima",
          //           fillColor: Color.fromARGB(255, 255, 255, 255),
          //           filled: true,
          //           labelStyle: TextStyle(
          //             color: Colors.black54,
          //             fontWeight: FontWeight.w500,
          //             fontSize: 17,
          //           ),
          //         ),
          //         style: TextStyle(fontSize: 18),
          //         validator: (String? value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Campo obrigatório';
          //           }
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 550.0, right: 1, left: 265),
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
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 625.0, right: 42, left: 240),
            child: SizedBox(
              child: EasyOutlinedButton(
                height: 50,
                width: 160,
                label: 'Proxima',
                labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                isRounded: true,
                icon: const Icon(
                  Icons.arrow_forward_ios,
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
                      builder: (context) => PetProfileVermifugo2(
                        title: '',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 625.0, right: 240, left: 45),
          //   child: SizedBox(
          //     height: 35,
          //     // width: 100,
          //     child: RaisedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => PetSignUp(
          //               title: '',
          //             ),
          //           ),
          //         );
          //       },
          //       color: Color.fromARGB(255, 57, 123, 209),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(30),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: <Widget>[
          //           Icon(
          //             Icons.arrow_back_ios,
          //             color: Colors.white,
          //           ),
          //           Text(
          //             'Voltar',
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w700,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
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
          //  Padding(
          //    padding: const EdgeInsets.only(top: 600.0, right: 200),
          //    child: Center(
          //      child: Container(
          //        height: 50.0,
          //        child: RaisedButton(
          //          onPressed: () {},
          //          shape: RoundedRectangleBorder(
          //              borderRadius: BorderRadius.circular(30.0)),
          //          padding: EdgeInsets.all(0.0),
          //          child: Ink(
          //            decoration: BoxDecoration(
          //                gradient: LinearGradient(
          //                  colors: [
          //                    Color.fromARGB(255, 0, 156, 13),
          //                    Color.fromARGB(255, 0, 209, 17)
          //                  ],
          //                  begin: Alignment.centerLeft,
          //                  end: Alignment.centerRight,
          //                ),
          //                borderRadius: BorderRadius.circular(30.0)),
          //            child: Container(
          //              constraints:
          //                  BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
          //              alignment: Alignment.center,
          //              child: Text(
          //                "Cadastrar",
          //                textAlign: TextAlign.center,
          //                style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                  color: Color.fromARGB(255, 255, 255, 255),
          //                ),
          //              ),
          //            ),
          //          ),
          //        ),
          //      ),
          //    ),
          //  ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 650.0, left: 200),
          //   child: Center(
          //     child: Container(
          //       height: 50.0,
          //       child: RaisedButton(
          //         onPressed: () {},
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(30.0)),
          //         padding: EdgeInsets.all(0.0),
          //         child: Ink(
          //           decoration: BoxDecoration(
          //               gradient: LinearGradient(
          //                 colors: [
          //                   Color.fromARGB(255, 187, 1, 1),
          //                   Color.fromARGB(255, 243, 0, 0)
          //                 ],
          //                 begin: Alignment.centerLeft,
          //                 end: Alignment.centerRight,
          //               ),
          //               borderRadius: BorderRadius.circular(30.0)),
          //           child: Container(
          //             constraints:
          //                 BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
          //             alignment: Alignment.center,
          //             child: Text(
          //               "Cancelar",
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 color: Color.fromARGB(255, 255, 255, 255),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
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
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.bloodtype,
              size: 28,
            ),
            label: 'Vacinas',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PetProfileVacina(
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
