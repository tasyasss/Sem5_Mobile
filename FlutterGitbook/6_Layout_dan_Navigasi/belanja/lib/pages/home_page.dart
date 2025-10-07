import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Gula',
      price: 5000,
      imageUrl: 'images/gula.jpg',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Garam',
      price: 2000,
      imageUrl: 'images/garam.jpg',
      stock: 100,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja'),
        backgroundColor: Colors.pink[400],
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return GestureDetector(
                  onTap: () => context.push('/item', extra: item),
                  child: ItemCard(item: item),
                );
              },
            ),
          ),
          const FooterWidget(
            name: 'An Naastasya S',
            nim: '2341760131',
          ),
        ],
      ),
    );
  }
}
