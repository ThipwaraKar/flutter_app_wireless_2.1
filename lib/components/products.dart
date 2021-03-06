import 'package:flutter/material.dart';
import 'package:flutter_app_wireless/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Asus",
      "picture":"images/products/Asus_ROG.png",
      "old_price":5000,
      "price":1000,
    },
    {
      "name": "Lenovo",
      "picture":"images/products/lenovo_P340.png",
      "old_price":2500,
      "price":999,
    },
    {
      "name": "Headset",
      "picture":"images/products/HeadsetCorsairGamingHS35.jpg",
      "old_price":300,
      "price":100,
    },
    {
      "name": "Microphone",
      "picture":"images/products/SignoMP704CondenserMicrophone.jpg",
      "old_price":1500,
      "price":500,
    },
    {
      "name": "MacBook",
      "picture":"images/products/MacBookPro13.jpg",
      "old_price":5000,
      "price":2500,
    },
    {
      "name": "Leica",
      "picture":"images/products/LeicaXType113.jpg",
      "old_price":10000,
      "price":1000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return Single_prod(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
        }
    );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_prod({
    this.product_name,
  this.product_picture,
  this.product_old_price,
  this.product_price
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero1"),
        child: Material(
        child: InkWell(
          onTap: ()=> Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new ProductDetails(
                //passing the values of the peoduct to the product detail pages
                productD_name: product_name,
                productD_old_price: product_old_price,
                productD_picture: product_picture,
                productD_price: product_price,
              ))),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                product_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                "\???$product_price",
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "\???$product_old_price",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    decoration
                        :TextDecoration.lineThrough),
              ),
            ),/*new Row(children: <Widget>[
              Expanded(child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16.0),
            ),),
              new Text("\$${product_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold ),)
            ],
          ),*/
          ),
          child: Image.asset(product_picture,
          fit:  BoxFit.cover,),
        ),
        ),
      ),),
    );
  }
}

/*ListTile(
              leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("\$$product_price",style: TextStyle(
                  color:Colors.red, fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                  "\$$product_old_price",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.lineThrough),
              ),
            ),*/