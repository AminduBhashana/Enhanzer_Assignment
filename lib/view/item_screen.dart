import 'package:flutter/material.dart';
import 'package:item_list_app/service/repository/item_repository.dart';


class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late ItemRepository itemRepository;
  List<Map<String, dynamic>> _items = [];

  @override
  void initState() {
    super.initState();
    _addInitialItems(); 
    _fetchItems();      
  }

  Future<void> _addInitialItems() async {
    final items = [
      {'Code': '001', 'Name': 'Item 1', 'Price': 50.00},
      {'Code': '002', 'Name': 'Item 2', 'Price': 60.00},
      {'Code': '003', 'Name': 'Item 3', 'Price': 70.00},
    ];

    
  }

  Future<void> _fetchItems() async {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  leading: const Icon(Icons.inventory),
                  title: Text(item['Name']),
                  subtitle: Text('Code: ${item['Code']}'),
                  trailing: Text('Price: \$${item['Price']}'),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await _fetchItems();
            },
            child: const Text('Refresh Items'),
          ),
        ],
      ),
    );
  }
}
