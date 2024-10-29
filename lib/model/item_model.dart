class Item {
  final String code;
  final String name;
  final double price;

  Item({
    required this.code,
    required this.name,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'Code': code,
      'Name': name,
      'Price': price,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      code: map['Code'],
      name: map['Name'],
      price: map['Price'],
    );
  }
}
