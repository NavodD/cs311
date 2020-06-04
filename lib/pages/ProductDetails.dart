import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
   final productDetails_name;
  final productDetails_image;
  final productDetails_oldprise;
  final productDetails_prise;

  ProductDetails({
    this.productDetails_image,
    this.productDetails_name,
    this.productDetails_oldprise,
    this.productDetails_prise
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Shop App'),
      actions: <Widget>[
       
        new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white) , onPressed: null, ),
         new IconButton(icon: Icon(Icons.search,color: Colors.white) , onPressed: null, )
      ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 30),
            height: 300.0,
            child: GridTile(
                footer: new Container(
                child:ListTile(
                leading: new Text(widget.productDetails_name),
                )
              ),
              
              child: Container(
             
                color: Colors.white70,
          
                child: Image.asset(widget.productDetails_image,),
              ),
            
            ),
            
            
          )
        ],
      ),
    );
  }
}