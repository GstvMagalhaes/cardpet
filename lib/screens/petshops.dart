// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PetShops extends StatefulWidget {
  PetShops({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PetShops> createState() => _MyPetShopsState();
}

class _MyPetShopsState extends State<PetShops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pet Shops Parceiros',
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.cyan,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              height: 200,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 9.5,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/petshop3.jpg',
                          height: 150,
                          width: 140,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.3),
                          child: const Text('Endereço: Rua '),
                        ),
                        // const Text('Telefone: (31) 3381915185')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0.0, top: 5),
                        child: Text(
                          'Amo Pets',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 7),
                            child: Text(
                              'Cupom: PETCARD',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 8, bottom: 1, right: 8),
                            child: Icon(
                              Icons.discount_outlined,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          '15% De desconto em tudo',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 46, right: 100),
                        child: Text('Doutor Silvio 210'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.cyan,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              height: 200,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 9.5,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/petshop1.jpg',
                          height: 150,
                          width: 140,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.3),
                          child: const Text('Endereço: Rua '),
                        ),
                        // const Text('Telefone: (31) 3381915185')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0.0, top: 5),
                        child: Text(
                          'Seu Pet',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 7),
                            child: Text(
                              'Cupom: PETCARD10',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 8, bottom: 1, right: 8),
                            child: Icon(
                              Icons.discount_outlined,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          '9% De desconto em Raçao',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 46, right: 100),
                        child: Text('Amilcar Cabral 330'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.cyan,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              height: 200,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 1,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/petshop4.jpg',
                          height: 150,
                          width: 130,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.3),
                          child: const Text('Endereço: Rua '),
                        ),
                        // const Text('Telefone: (31) 3381915185')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0.0, top: 5),
                        child: Text(
                          'Animal Pet',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 7),
                            child: Text(
                              'Cupom: CARDPET10',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 8, bottom: 1, right: 8),
                            child: Icon(
                              Icons.discount_outlined,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          '5% De desconto em Ração',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 46, right: 100),
                        child: Text('dos Atleticanos 330'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.cyan,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              height: 200,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 1,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/petshop2.jpg',
                          height: 150,
                          width: 130,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.3),
                          child: const Text('Endereço: Rua '),
                        ),
                        // const Text('Telefone: (31) 3381915185')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 15, top: 5),
                        child: Text(
                          'Finos & Cheirosos',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 7),
                            child: Text(
                              'Cupom: AMOPETCARD',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 8, bottom: 1, right: 8),
                            child: Icon(
                              Icons.discount_outlined,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          '5% desconto Brinquedos',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 46, right: 100),
                        child: Text('Amilcar Cabral 330'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
