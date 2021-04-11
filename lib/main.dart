import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutter_app_wireless/components/horizontal_listview.dart';
import 'package:flutter_app_wireless/components/products.dart';
import 'package:flutter_app_wireless/pages/cart.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/it_service.jpg'),
          AssetImage('images/business.jpg'),
          AssetImage('images/csm_ads.jpg'),
          AssetImage('images/display.jpg'),
          AssetImage('images/frontiers.jpg'),
          AssetImage('images/workers-it.jpg'),
        ],
        autoplay: true, //10 6.22
        dotSize: 5.0,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.cyan,
        title: Text('MeHaiChao'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(accountName: Text('TheMint K.'),
                accountEmail: Text('Thipwara_ITCS424@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.deepOrange
              ),
            ),
            //Body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('HomePage'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person , color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.black,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget> [
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(9.0),
          child: new Text('Categories'),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(21.0),
            child: new Text('Recent products'),),

          Container(
            height: 350.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

