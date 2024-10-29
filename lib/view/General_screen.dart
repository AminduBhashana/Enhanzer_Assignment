import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Net Amount',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '1,900',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(labelText: 'Item'),
        ),
        const TextField(
          decoration: InputDecoration(labelText: 'Reason'),
        ),
        const TextField(
          decoration: InputDecoration(labelText: 'Price'),
          keyboardType: TextInputType.number,
        ),
        Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Qty'),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 8),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Discount %'),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ADD'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Table(
          border: TableBorder.all(),
          children: const [
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Item'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Price'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Qty'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Discount'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Total'),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Test Up 02'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('1,000'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('2'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('100'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('1,900'),
              ),
            ]),
          ],
        ),
      ],
    );
  }
}