import 'package:flutter/material.dart';
import 'package:ecomshop_ui/pages/history.dart';
import 'package:ecomshop_ui/pages/user.dart';
import 'package:ecomshop_ui/model/mobile.dart';

class HomePage extends StatelessWidget {
  final List<Mobile> _allMobiles = Mobile.allMobiles();

  HomePage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allMobiles.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => History())),
            leading: new Image.asset(
              'assets/' + '${_allMobiles[index].image}',
              fit: BoxFit.cover,
              width: 100.0,
            ),
            title: new Text(
              '${_allMobiles[index].mobilename}',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    Container(
                      width: 20,
                      child: new IconButton(
                        color: Colors.yellow,
                        iconSize: 10,
                        icon: new Icon(Icons.star),
                        onPressed: () {},
                      ),
                    ),
                    new Text('${_allMobiles[index].rate}',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                        )),
                    new Text('(${_allMobiles[index].review} Review)',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
                new Column(
                  children: [
                    new Row(
                      children: [
                        new Text('${_allMobiles[index].piece} Pieces ',
                            style: TextStyle(
                                fontSize: 11.0, fontWeight: FontWeight.normal)),
                        new Text('\$${_allMobiles[index].price}',
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                new Text('Quantity ${_allMobiles[index].quantity}',
                    style: TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
