import 'package:flutter/material.dart';
import 'package:mini_project_1/view/profile_page.dart';
import 'package:mini_project_1/model/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<ProductModel> products = [
    ProductModel(
      id: '1',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '2',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '3',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '4',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '5',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '6',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '7',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '8',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '9',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
    ProductModel(
      id: '10',
      name: 'Nike Zoom Vomero 5 Black',
      description: 'Stylish running shoes',
      price: 145.0,
      imageUrl: 'https://cms-cdn.thesolesupplier.co.uk/2019/01/nike-zoom-vomero-5-black-bv1358-002_w1024_h1024_pad_.jpg.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopedia'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return buildProductCard(products[index]);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(ProductModel product) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.imageUrl,
            height: 100.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  '€${product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}