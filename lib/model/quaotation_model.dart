class Quotation {
  final String itemName;
  final double price;
  final int qty;
  final double discount;

  Quotation({
    required this.itemName,
    required this.price,
    required this.qty,
    required this.discount
  });

  Map<String, dynamic> toMap() {
    return {
      'ItemName': itemName,
      'Price': price,
      'Qty': qty,
      'Discount':discount
    };
  }

  factory Quotation.fromMap(Map<String, dynamic> map) {
    return Quotation(
      itemName: map['ItemName'],
      price: map['Price'],
      qty: map['Qty'],
      discount: map['Discount']
    );
  }
}
