import 'package:flutter/material.dart';
//import 'package:nice_button/nice_button.dart';
import 'Signin.dart';
import 'disponible.dart';

class Etat extends StatefulWidget {
  @override
  _EtatState createState() => _EtatState();
}

class _EtatState extends State<Etat> {
  String value = "Boissons";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'THE CHEZ ABDELKADER',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: 'BodoniMT',
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                // récuperer le nom d'utilisateur
                Text(
                  'Ketfi Raniya',
                  style: TextStyle(
                    fontSize: 20,
                    //color: Colors.white,
                    fontFamily: 'BodoniMT',
                  ),
                ),
                // recupérer le mail
                Text(
                  'hr_ketfi@esi.dz',
                  style: TextStyle(
                    fontSize: 13,
                    //color: Colors.white,
                    fontFamily: 'BodoniMT',
                  ),
                ),
              ],
            )),
            ListTile(
              leading: Icon(
                Icons.storage,
                color: Colors.black,
              ),
              title: Text(
                'Disponible aujourdhui',
                style: TextStyle(
                  fontSize: 17,
                  //color: Colors.white,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.storefront, color: Colors.black),
              title: Text(
                'Commander',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.check_box_outlined, color: Colors.black),
              title: Text(
                'Mes commandes',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text(
                'Mes informations ',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Container(
                child: Align(
              alignment: FractionalOffset.bottomRight,
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  'Log Out ',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'BodoniMT',
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  )
                },
              ),
            )),
            SizedBox(
              height: 100,
            ),
            Container(
              alignment: FractionalOffset.bottomCenter,
              height: 100,
              child: Image(image: AssetImage("assets/images/logo.png")),
            ),
            SizedBox(height: 25),
            Center(
                child: Text(
              'La vie c`est comme une tasse de thé, tout est dans la façon de la préparer. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[750],
                fontSize: 15,
                fontFamily: 'BodoniMT',
              ),
            )),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'Mes commandes :',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'BodoniMT',
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Form(
                child: Column(children: <Widget>[
              DataTable(
                  headingTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'BodoniMT',
                  ),
                  columns: [
                    DataColumn(
                        label: Text(
                      'Commande : ',
                      textAlign: TextAlign.center,
                    )),
                    DataColumn(
                        label: Text(
                      'Etat : ',
                      textAlign: TextAlign.center,
                    )),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("2 thé vert")),
                        DataCell(Text("En cours de préparation")),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text("2 café noir")),
                        DataCell(Text("Prete")),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text("5 croissants")),
                        DataCell(Text("annulée")),
                      ],
                    ),
                  ]),
            ])),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.storage), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          focusElevation: 10.0,
          backgroundColor: Color(0xff427719),
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Metrial {}
