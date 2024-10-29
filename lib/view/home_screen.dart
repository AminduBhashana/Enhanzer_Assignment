import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:item_list_app/view/General_screen.dart';
import 'package:item_list_app/view/item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotation'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: const Icon(Icons.check), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: 'Aukland Offices',
                  items: <String>['Aukland Offices'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = 0;
                      });
                    },
                    child: Container(
                      color: _selectedTabIndex == 0 ? Colors.blue : Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'General',
                          style: TextStyle(
                            color: _selectedTabIndex == 0 ? Colors.white : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = 1;
                      });
                    },
                    child: Container(
                      color: _selectedTabIndex == 1 ? Colors.blue : Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Items',
                          style: TextStyle(
                            color: _selectedTabIndex == 1 ? Colors.white : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _selectedTabIndex == 0 ? const GeneralScreen() : const ItemScreen(),
            ),
          ],
        ),
      ),
    );
  }
}