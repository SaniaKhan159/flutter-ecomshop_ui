import 'package:flutter/material.dart';

class User extends StatelessWidget {
  User();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'Ecom App UI',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              color: Colors.black,
              icon: new Icon(Icons.notifications),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    new SnackBar(content: Text('This is a snackbar')));
              }),
          IconButton(
            color: Colors.black,
            icon: new Icon(Icons.person_rounded),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => User()));
            },
          ),
        ],
      ),
      body: new Container(
        margin: EdgeInsets.all(10),
        color: Color(0xfb5b3ba),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/Sample_User_Icon.png'),
                      backgroundColor: Colors.white,
                    ),
                    title: new Text(
                      'User',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'abc@gmail.com',
                          style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: new Text(
                            'logout',
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    'Account Information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'FullName',
                      hintText: 'User',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'user@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: '+0900-78601',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'New York,Random Street House No. 72',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Female',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      hintText: 'October,13 1999',
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
