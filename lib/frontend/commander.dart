import 'package:flutter/material.dart';
//import 'package:nice_button/nice_button.dart';
import 'CommandesUtilis.dart';
import 'Signin.dart';
import 'disponible.dart';

class Commander extends StatefulWidget {
  @override
  _CommanderState createState() => _CommanderState();
}

class _CommanderState extends State<Commander> {
  String value = "Boissons";
  String dropdownValue;
  String dropdownValue1;
  String dropdownValue2;
  String dropdownValue3;
  String dropdownValue4;
  String dropdownValue5;
  String dropdownValue6;
  String dropdownValue7;
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
            'Faire une commande :',
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
                      'Type : ',
                      textAlign: TextAlign.center,
                    )),
                    DataColumn(
                        label: Text(
                      'Choix : ',
                      textAlign: TextAlign.center,
                    )),
                    DataColumn(
                        label: Text(
                      'Quantité : ',
                      textAlign: TextAlign.center,
                    )),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("B Chaudes")),
                        DataCell(
                          DropdownButton<String>(
                            items: <String>[
                              'Café',
                              'Thé',
                              'crème',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ); //DropMenuItem
                            }).toList(),
                            value: dropdownValue,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                                print("new${newValue}");
                              }); //setState
                            },
                            //OnChange
                            isExpanded: false,
                            hint: Text(
                              'Café',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        DataCell(new DropdownButton<String>(
                          hint: Text("0"),
                          items: <String>[
                            '0',
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                            '6',
                            '7',
                            '8',
                            '9',
                            '10'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue1,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue1 = newValue;
                            }); //setState
                          },
                        ))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text("B Froides")),
                        DataCell(new DropdownButton<String>(
                          hint: Text("Jus"),
                          items: <String>['Jus ', 'Coca'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue2,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue2 = newValue;
                            }); //setState
                          },
                        )),
                        DataCell(new DropdownButton<String>(
                          hint: Text("0"),
                          items: <String>[
                            '0',
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                            '6',
                            '7',
                            '8',
                            '9',
                            '10'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue3,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue3 = newValue;
                            }); //setState
                          },
                        ))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text("Salés")),
                        DataCell(new DropdownButton<String>(
                          hint: Text("Pizza"),
                          items:
                              <String>['Pizza', 'Bourak'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue4,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue4 = newValue;
                            }); //setState
                          },
                        )),
                        DataCell(new DropdownButton<String>(
                          hint: Text("0"),
                          items: <String>[
                            '0',
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                            '6',
                            '7',
                            '8',
                            '9',
                            '10'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue5,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue5 = newValue;
                            }); //setState
                          },
                        ))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text("Sucrés")),
                        DataCell(new DropdownButton<String>(
                          hint: Text("Gateaux"),
                          items:
                              <String>['Gateaux', 'bonbon'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue6,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue6 = newValue;
                            }); //setState
                          },
                        )),
                        DataCell(new DropdownButton<String>(
                          hint: Text("0"),
                          items: <String>[
                            '0',
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                            '6',
                            '7',
                            '8',
                            '9',
                            '10'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          value: dropdownValue7,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue7 = newValue;
                            }); //setState
                          },
                        ))
                      ],
                    ),
                  ]),
              SizedBox(height: 25),
              Text(
                'Remarque :',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'BodoniMT',
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Autre"),
              ),
              SizedBox(height: 25),
              RaisedButton(
                  highlightColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              child: Container(
                                  height: 200.0,
                                  width: 200.0,
                                  child: Column(children: <Widget>[
                                    SizedBox(height: 20),
                                    Center(
                                        child: Text(
                                      'Commande Effectuée  \n    Veuillez patienter ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontFamily: 'BodoniMT',
                                      ),
                                    )),
                                    SizedBox(height: 30),
                                    RaisedButton(
                                        highlightColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            side: BorderSide(
                                                color: Colors.white)),
                                        padding: EdgeInsets.all(10.0),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DispoScreen()),
                                          );
                                        },
                                        color: Color(0xff427719),
                                        textColor: Colors.white,
                                        child: Icon(
                                          Icons.check_circle,
                                          color: Colors.white,
                                          size: 40,
                                        )),
                                  ])));
                        });
                  },
                  color: Color(0xff427719),
                  textColor: Colors.white,
                  child: Text(
                    '        Commander       ',
                    style: TextStyle(
                      fontSize: 25,
                      //color: Colors.white,
                      fontFamily: 'BodoniMT',
                    ),
                  )),
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
