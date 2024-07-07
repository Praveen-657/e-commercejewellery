import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;

  const CategoryPage({Key? key, this.title, this.image, this.tag}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag!,
              child: Material(
                child: Container(
                  height: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image!),
                          fit: BoxFit.cover

                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.1),
                            ]
                        )
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios, color: Colors.white,),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FadeInUp(duration: Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.search, color: Colors.white,),
                                      onPressed: () {},
                                    )),
                                FadeInUp(duration: Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.favorite, color: Colors.white,),
                                      onPressed: () {},
                                    )),
                                FadeInUp(duration: Duration(milliseconds: 1300),
                                    child: IconButton(
                                      icon: Icon(Icons.shopping_cart,
                                        color: Colors.white,), onPressed: () {},
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FadeInUp(duration: Duration(milliseconds: 1200),
                            child: Text(widget.title!, style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1400), child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("New Product", style: TextStyle(color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                      Row(
                        children: <Widget>[
                          Text("View More",
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios, size: 11,
                            color: Colors.grey,)
                        ],
                      ),
                    ],
                  )),
                  Wrap(
                    spacing: 10,
                    // gap between adjacent chips (decrease to fit more items in a row)
                    runSpacing: 20,
                    // gap between lines
                    alignment: WrapAlignment.start,
                    // alignment of items
                    children: [
                      makeProduct(image: 'assets/images/bangles.jpg',
                          title: 'Bangles',
                          price: '50000'),
                      makeProduct(image: 'assets/images/necklace.jpeg',
                          title: 'Necklace',
                          price: '150000'),
                      makeProduct(image: 'assets/images/chokar.jpg',
                          title: 'Chokar',
                          price: '200000'),
                      makeProduct(image: 'assets/images/bracelet.jpg',
                          title: 'Bracelet',
                          price: '100000'),
                      makeProduct(image: 'assets/images/chain.jpeg',
                          title: 'Chain',
                          price: '80000'),
                      makeProduct(image: 'assets/images/bang1.jpg',
                          title: 'bangles',
                          price: '80000'),
                      makeProduct(image: 'assets/images/bang3.jpg',
                          title: 'bangles',
                          price: '90000'),
                      makeProduct(image: 'assets/images/bang5.jpg',
                          title: 'bangles',
                          price: '100000'),
                      makeProduct(image: 'assets/images/praveen.jpg',
                          title: 'bangles',
                          price: '100000'),
                      // Add more products as needed
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct(
      {required String image, required String title, required String price}) {
    return Container(
      height: 200,
      width: 350, // Adjust this width to fit more or fewer items per row
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border, color: Colors.white,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title, style: TextStyle(color: Colors.white, fontSize: 16),),
                // Adjust font size
                Text(price, style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.add_shopping_cart, size: 18, color: Colors.grey[700],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}