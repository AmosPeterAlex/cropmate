
import 'package:flutter/material.dart';

class UserHarvestedItemScreen extends StatelessWidget {
  const UserHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                ),
            itemBuilder: (context, index) {
              return Card(child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.green),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(height: devHeight*0.09,
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
                              "Price/"
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
              ));
            }),
      ),
    ));
  }
}
