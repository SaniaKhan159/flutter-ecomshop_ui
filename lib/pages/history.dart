import 'package:flutter/material.dart';
import 'package:ecomshop_ui/pages/user.dart';

class History extends StatelessWidget {
// History();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(color: Colors.grey[400])),
                        suffixIcon: Icon(Icons.search),
                        labelText: 'Username',
                        labelStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 17),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'History',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _getHItemUI('assets/one.jpg', 'Iphone 12', 5.0, 23, 10),
                  _getHItemUI('assets/two.jpg', 'Note 20 Ultra', 5.0, 23, 10),
                  _getHItemUI('assets/three.jpg', 'Macbook Air', 5.0, 23, 10),
                  _getHItemUI('assets/four.jpg', 'Macbook Pro', 5.0, 23, 10),
                  _getHItemUI('assets/five.jpg', 'Gaming PC', 5.0, 23, 10),
                  _getHItemUI(
                      'assets/six.jpg', 'Backlit Keyboard', 5.0, 23, 10),
                  _getHItemUI('assets/seven.jpg', 'Mercedes', 5.0, 23, 10),
                  _getHItemUI('assets/eight.jpg', 'Ipad', 5.0, 23, 10),
                  _getHItemUI('assets/nine.jpg', 'Roadster', 5.0, 23, 10),
                  _getHItemUI('assets/ten.jpg', 'Royal Field', 5.0, 23, 10),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _getHItemUI(String productImg, String productName,
      double productRating, int productReview, int productPrice) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: AssetImage('$productImg'),
              radius: 20,
            ),
            title: new Text(
              '$productName',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            subtitle: new Row(
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
                new Text('$productRating',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    )),
                new Text('($productReview Review)',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
            trailing: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('\$ $productPrice')],
            ),
          )
        ],
      ),
    );
  }
}
