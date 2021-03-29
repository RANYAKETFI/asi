import 'package:asi/frontend/commander.dart';
import 'package:flutter/material.dart';

import 'CommandesUtilis.dart';
import 'Signin.dart';

class DispoScreen extends StatefulWidget {
  @override
  _DispoScreenState createState() => _DispoScreenState();
}

class _DispoScreenState extends State<DispoScreen> {
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Commander()),
                );
              },
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
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Etat()),
                )
              },
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
            'Disponible aujourdhui :',
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
              child: Column(
            children: <Widget>[
              DataTable(
                  headingTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'BodoniMT',
                  ),
                  columns: [
                    DataColumn(label: Text('Boissons chaudes : ')),
                  ],
                  rows: [
                    DataRow(
                      cells: [DataCell(Text('Thé vert'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Café noir'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Café crème'))],
                    )
                  ]),
              DataTable(
                  headingTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'BodoniMT',
                  ),
                  columns: [
                    DataColumn(
                        label: Text(
                      'Boissons froides : ',
                      textAlign: TextAlign.center,
                    )),
                  ],
                  rows: [
                    DataRow(
                      cells: [DataCell(Text('Jus pressé'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Coca Cola 25 cl'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Jus Rouiba '))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Jus aux bananes '))],
                    )
                  ]),
              DataTable(
                  headingTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'BodoniMT',
                  ),
                  columns: [
                    DataColumn(
                        label: Text(
                      'Sucrés : ',
                      textAlign: TextAlign.center,
                    )),
                  ],
                  rows: [
                    DataRow(
                      cells: [DataCell(Text('Petit Pain'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Croissant '))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Galette '))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Gateaux aux chocolats'))],
                    ),
                  ]),
              DataTable(
                  headingTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'BodoniMT',
                  ),
                  columns: [
                    DataColumn(
                        label: Text(
                      'Salés : ',
                      textAlign: TextAlign.center,
                    )),
                  ],
                  rows: [
                    DataRow(
                      cells: [DataCell(Text('Bourak'))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Pizza '))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Coca fermée '))],
                    ),
                    DataRow(
                      cells: [DataCell(Text('Souflet'))],
                    )
                  ]),
            ],
          ))
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Commander()),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
