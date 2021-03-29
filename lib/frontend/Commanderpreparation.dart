import 'package:asi/frontend/Admin.dart';
import 'package:asi/frontend/Signin.dart';
import 'package:asi/frontend/commander.dart';
import 'package:flutter/material.dart';

class PrepScreen extends StatefulWidget {
  @override
  _PrepScreenState createState() => _PrepScreenState();
}

class _PrepScreenState extends State<PrepScreen> {
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
                SizedBox(
                  height: 30,
                ),
                // récuperer le nom d'utilisateur
                Text(
                  'Abdelkader timimoune',
                  style: TextStyle(
                    fontSize: 20,
                    //color: Colors.white,
                    fontFamily: 'BodoniMT',
                  ),
                ),
                // recupérer le mail
                Text(
                  'abdelkadertim@gmail.com',
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
                'Commandes',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box_outlined, color: Colors.black),
              title: Text(
                'Commandes en préparation',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BodoniMT',
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrepScreen()),
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
            'Commandes en Préparation',
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
          DataTable(
            headingTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'BodoniMT',
            ),
            columns: [
              DataColumn(
                  label: Text(
                'Client',
                textAlign: TextAlign.center,
              )),
              DataColumn(
                  label: Text(
                'Contenu',
                textAlign: TextAlign.center,
              )),
              DataColumn(
                  label: Text(
                'répondre',
                textAlign: TextAlign.center,
              )),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("Ketfi Raniya")),
                  DataCell(
                    Text("2 thé vert\n1Croissant"),
                  ),
                  DataCell(
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color: Colors.white)),
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text(
                          'Livrer',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'BodoniMT',
                          ),
                        )),
                  )
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("Maya Larbi ")),
                  DataCell(
                    Text("3 Croissants"),
                  ),
                  DataCell(
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color: Colors.white)),
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text(
                          'Livrer',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'BodoniMT',
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
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
