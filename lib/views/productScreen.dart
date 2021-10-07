import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'M',
                style: GoogleFonts.niconne(
                  fontSize: 35,
                  color: Colors.red
                )
              ),
              TextSpan(
                text: 'odish',
                style: GoogleFonts.niconne(
                  fontSize: 35,
                  color: Colors.white
                )
              )
            ]
          )
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.black87,
              child: DrawerHeader(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red, 
                              spreadRadius: 5
                            )
                          ],
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'napsaguiguit@addu.edu.ph',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ),
            ),
            ListTile(
              title: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              leading: Icon(
                Icons.account_box
              ),
              
            ),
            ListTile(
              title: Text(
                'Go to Cart',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              leading: Icon(
                Icons.shopping_cart
              ),
            ),
            ListTile(
              title: Text(
                'Coupons and Vouchers',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              leading: Icon(
                Icons.money_off
              ),
            ),
            ListTile(
              title: Text(
                'Previous Transactions',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              leading: Icon(
                Icons.history
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey[50],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    productBox(context, 'assets/luxe-bag.jpg', '\u0024 645.99 | Louis Vuitton Shoulder Bag'),
                    productBox(context, 'assets/luxe-bag-2.jpg', '\u0024 639.99 | Chanel Black Leather Bag'),
                    productBox(context, 'assets/luxe-perfume.jpg', '\u0024 91.75 | Creed Aventus Scent'),
                    productBox(context, 'assets/luxe-perfume-versace.jpg', '\u0024 89.75 | Versace Bright Crystal Eau de Toilette'),
                    productBox(context, 'assets/luxe-shoes.jpeg', '\u0024 324.75 | Yves Saint Laurent Black High Heels'),
                    productBox(context, 'assets/luxe-shoes-2.jpeg', '\u0024 375.25 | Yves Saint Laurent Red High Heels'),
                    productBox(context, 'assets/luxe-watch.jpg', '\u0024 1,249.95 | Rolex 2021 Gold Watch'),
                    productBox(context, 'assets/luxe-jewelry.jpg', '\u0024 788.85 | Tiffany and Co Gold Band 2021'),
                    productBox(context, 'assets/luxe-jewelry-versace.jpg', '\u0024 975.95 | Versace Golden Bracelet'),
                    productBox(context, 'assets/luxe-slippers.jpg', '\u0024 69.75 | Chanel Gold Midnight Slippers'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container productBox(BuildContext context, String prodImg, String prodDesc) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      height: 500,
      color: Colors.white,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 50),
          Image.asset(
            prodImg,
            width: 350,
            height: 275,
          ),
          SizedBox(height: 20),
          Text(
            prodDesc
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            child: TextButton(
              onPressed: () {},
              child: Text('Buy'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.white24),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 15,
                  )
                )
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 150,
            child: TextButton(
              onPressed: () {},
              child: Text('Add to Cart'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.white24),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 15,
                  )
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}