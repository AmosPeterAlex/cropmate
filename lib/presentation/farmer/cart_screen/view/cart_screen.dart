import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:CartScreen() ,));
}


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ItemCard> cartItems = []; // Maintain a list of items in the cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (direction) {
              // Remove the item from the cart when dismissed
              setState(() {
                cartItems.removeAt(index);
              });
            },
            child: cartItems[index],
          );
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    this.title,
    this.description,
    this.imageUrl,
    this.contant,
    this.sourceName,
  }) : super(key: key);

  final String? title;
  final String? description;
  final String? imageUrl;
  final String? contant;
  final String? sourceName;

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.lightGreenColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: devHeight * 0.2,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  title ?? "",
                  style: TextStyle(
                    fontSize: devHeight * 0.02,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price/"),
                  Text(
                    "Quantity",
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Text(
                  "from",
                ),
                scrollDirection: Axis.horizontal,
              ),
              MaterialButton(
                color: ColorConstants.primaryColor,
                onPressed: () {
                  // Add your logic when the "ADD TO CART" button is clicked
                  // For now, let's add the card to the cartItems list
                  _addToCart(context);
                },
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: ColorConstants.whiteColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _addToCart(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added to cart'),
        duration: Duration(seconds: 2),
      ),
    );

    // Add the item to the cart
    (context.findAncestorStateOfType<_CartScreenState>())?.setState(() {
      (context.findAncestorStateOfType<_CartScreenState>())?.cartItems.add(this);
    });
  }
}
