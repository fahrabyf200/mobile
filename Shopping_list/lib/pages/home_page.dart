import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';

const List<Item> demoItems = [
  Item(name: 'Sugar', price: 5000, image: 'assets/images/sugar.png', stock: 12, rating: 4.5),
  Item(name: 'Salt', price: 2000, image: 'assets/images/salt.png', stock: 20, rating: 5.0),
  Item(name: 'Rice', price: 50000, image: 'assets/images/rice.png', stock: 10, rating: 5.0),
  Item(name: 'Egg', price: 25000, image: 'assets/images/egg.png', stock: 20, rating: 3.0),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Belanja')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: demoItems.length + 1,
        itemBuilder: (context, index) {
          if (index == demoItems.length) {
            return const Center(
              child: Text(
                'Nama: Muhammad Farhan Fahraby'
                '\nNIM: 2341720188',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }

          final item = demoItems[index];

          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                context.push('/item', extra: item); // gunakan go_router push
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: Image.asset(item.image!, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Rp ${item.price}', style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}