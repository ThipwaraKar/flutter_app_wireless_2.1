import 'package:flutter/material.dart';
import 'package:flutter_app_wireless/pages/cart.dart';

class Fav_products extends StatefulWidget {
  @override
  _Fav_productsState createState() => _Fav_productsState();
}

class _Fav_productsState extends State<Fav_products> {
  var Product_on_the_cart = [
    {
      "name": "Asus",
      "picture":"images/products/Asus_ROG.png",
      "price":"1000 Baht per day",
      //product spec options
      "Processor" : "10th Gen Intel",
      "Memory" : "16GB DDR",
      "store" : "Banana IT",
    },
    {
      "name": "Lenovo P340 workstation",
      "picture":"images/products/lenovo_P340.png",
      "price":"999 Baht per day",
      //product spec options
      "Processor" : "Intel i5 8500",
      "Memory" : "8GB DDR4",
      "store" :  "SuperIT",
    },
    {
      "name": "MacBook",
      "picture":"images/products/MacBookPro13.jpg",
      "price":"2500 Baht per day",
      //product spec options
      "Processor" : "Intel i5 8500",
      "Memory" : "8GB DDR4",
      "store" :  "iSora Studio",
    },
    {
      "name": "Leica",
      "picture":"images/products/LeicaXType113.jpg",
      "price":"1000 Baht per day",
      //product spec options
      "Processor" : "Intel i5 8500",
      "Memory" : "8GB DDR4",
      "store" :  "World Camera",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length, // no. of item on the list view
        itemBuilder: (context,index){
          return Single_cart_product(
            cart_product_name: Product_on_the_cart[index]["name"],
            cart_product_Proc: Product_on_the_cart[index]["Processor"],
            cart_product_Mem: Product_on_the_cart[index]["Memory"],
            cart_product_store: Product_on_the_cart[index]["store"],
            cart_product_price: Product_on_the_cart[index]["price"],
            cart_product_picture: Product_on_the_cart[index]["picture"],

          );
        }
    );

  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_Proc;
  final cart_product_Mem;
  final cart_product_store;

  const Single_cart_product({
    this.cart_product_name, this.cart_product_picture,
    this.cart_product_price, this.cart_product_Mem,
    this.cart_product_Proc, this.cart_product_store}) ;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          // leading section
          leading: new Image.asset(cart_product_picture,width: 100.0,
            height: 80.0,),

          // title section
          title: new Text(cart_product_name),

          //subtitle section
          subtitle: new Column(
            children: <Widget>[
              //row inside the column
              new Row(
                children: <Widget>[
                  // this section is for this processor of the product
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Rent price: "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_product_price, style: TextStyle(color: Colors.red),),
                  ),

                  // this section is for the memory of product
                  /* new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Memory"),
              ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_product_Mem, style: TextStyle(color: Colors.red),
                  ),
                ),*/

                  //  new Text("\$$cart_product_price")
                  /*      Expanded(child: new Text("Processor")),

                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 5.0),
                  child: new Text(cart_product_Proc),
                ),

                Expanded(child: new Text("Memory")),*/
                ],
              ),
              new Row(
                children: <Widget>[
                  new Padding(padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                    child: new Text("Store: "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_product_store, style: TextStyle(color: Colors.red),
                    ),
                  ),

                ],
              ),
              // this section is for the product price



            ],
          ),


          trailing:
          FittedBox(
            fit: BoxFit.fill,
            child:
            Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.favorite_border,color: Colors.red),iconSize: 100, onPressed: () {}),


              ],
            ),
          ),
          /*

        trailing:
            FittedBox(
              fit: BoxFit.fill,
              child:   Column(
                children: <Widget>[
                  new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){}),
                  new Text("$cart_product_qty"),
                  new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){}),

                ],
              ),
            ),*/

        )
    );
  }


}
