
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.title,
    this.description,
    this.imageUrl,
    this.contant,
    this.sourceName,
  });

  final String? title;
  final String? description;
  final String? imageUrl;
  final String? contant;
  final String? sourceName;

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Container(height: 800,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: devHeight*0.09,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //     image: NetworkImage(""), fit: BoxFit.cover)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "title",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price/",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Quantity",
                  ),
                ],
              ),
              Text(
                "from",
              ),
              MaterialButton(onPressed: (){},child: Text("ADD TO CART"),)

            ],
          )
        ],
      ),
    );
  }
}
