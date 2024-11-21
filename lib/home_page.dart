import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: const Color.fromARGB(255, 137, 109, 201), 
  selectedItemColor: Colors.white,
  unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), 
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Beranda',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Pengaturan',
    ),
  ],
),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image1.png'),
            fit: BoxFit.cover, 
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.animation),
                      title: Text('Item ${index + 1}'),
                      subtitle: Text('Deskripsi item ${index + 1}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
