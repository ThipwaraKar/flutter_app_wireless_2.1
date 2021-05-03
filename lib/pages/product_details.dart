import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_wireless/main.dart';

class ProductDetails extends StatefulWidget {
  final productD_name;
  final productD_picture;
  final productD_old_price;
  final productD_price;

  ProductDetails({
    this.productD_name,
    this.productD_picture,
    this.productD_old_price,
    this.productD_price}) ;


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.cyan,
        title: InkWell (
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage() ));},
            child:  Text('MeHaiChao')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
       //   new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productD_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.productD_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                       child : new Text("\$${widget.productD_old_price}",
                       style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child : new Text("\$${widget.productD_price}", style: TextStyle(fontWeight: FontWeight.bold , color: Colors.red),)
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // =========== the first buttons ============
          Row(children: <Widget>[

            // ============== the size button =========
            Expanded(child: MaterialButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: new Text("Processor") ,
                    content: new Text("Choose the processor"),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: new Text("close"),)
                    ],
                  );
                });
              },
            color: Colors.white,
            textColor: Colors.grey,
            child: Row(
              children: <Widget>[
                Expanded(child: new Text("Processor")),
                Expanded(child: new Icon(Icons.arrow_drop_down)),
              ],
            ),
            )
            ),
            // ============== the size button =========
            Expanded(child: MaterialButton( onPressed: (){
              showDialog(context: context, builder: (context){
                return new AlertDialog(
                  title: new Text("Memory") ,
                  content: new Text("Choose the computer Memory"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                      child: new Text("close"),)
                  ],
                );
              });
            },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text("Memory")),
                  Expanded(child: Icon(Icons.arrow_drop_down)),
                ],
              ),
            )
            ),
            // ============== the size button =========
            Expanded(child: MaterialButton( onPressed: (){
              showDialog(context: context, builder: (context){
                return new AlertDialog(
                  title: new Text("Quantity") , //Edit popup name here
                  content: new Text("Choose the Quantity"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                      child: new Text("close"),)
                  ],
                );
              });
            },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text("Qty")), //Edit showing button name here
                  Expanded(child: Icon(Icons.arrow_drop_down)),
                ],
              ),

            )
            ),
          ],
          ),
          // =========== the second buttons ============
          Row(children: <Widget>[

            // ============== the size button =========
            Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.lightBlue,
              textColor: Colors.white,
              elevation: 0.2,

              child: new Text("Rent Now")
            )
            ),
          new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),
            new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),


          ],
          ),
        Divider(color: Colors.cyan,),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product name", style:TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.productD_name),)

            ],
          ),
          // Brand of the product
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style:TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),
          // Condition of product
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style:TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),
      
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
          ),

          //SIMILAR PRODUCT SELECTION
          Container(
            height: 360.0,
            child: Similar_product(),
          )
        ],
      ),
    );
  }
}

class Similar_product extends StatefulWidget {
  @override
  _Similar_productState createState() => _Similar_productState();
}

class _Similar_productState extends State<Similar_product> {
  var product_list = [
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
          return Similar_Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        }
    );
  }
}


class Similar_Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_Single_prod({
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
                child: new Row(children: <Widget>[
                  Expanded(child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16.0),
                  ),),
                  new Text("\฿${product_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold ),)
                ],
                ),
              ),
              child: Image.asset(product_picture,
                fit:  BoxFit.cover,),
            ),),
        ),),
    );
  }
}
