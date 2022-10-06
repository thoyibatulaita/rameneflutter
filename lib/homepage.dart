import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     List<String> Gambar = [
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png"
    ];

  return Scaffold(
    appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications,
                color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Color.fromARGB(255, 0, 0, 0)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined, color: Colors.grey),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,
                  color: Colors.grey),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.grey),
              label: 'Profile'),
        ],
      ),
        body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Search",
                hintText: "Search",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 240),
            child: Text(
              'Top Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 117, 115, 115),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: Gambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/image/${Gambar[i]}'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
