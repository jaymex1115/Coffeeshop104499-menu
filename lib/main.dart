import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeMenuApp());
}

class CoffeeMenuApp extends StatelessWidget {
  const CoffeeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text(
          'Coffee Shop Menu',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
        elevation: 2,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              MenuCard('spanish_latte.jpg', 'Spanish Latte', 'RM 12.00'),
              MenuCard('capuccino.jpg', 'Cappuccino', 'RM 10.00'),
              MenuCard('matcha_frappe.jpg', 'Matcha Frappe', 'RM 14.00'),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, this.price, {super.key});

  final String file;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/$file',
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.add_circle,
              color: Colors.brown[700],
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
