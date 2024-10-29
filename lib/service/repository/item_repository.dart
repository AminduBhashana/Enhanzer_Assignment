import 'package:item_list_app/model/item_model.dart';

abstract class ItemRepository {
  Future<List<Item>> getItems();
  Future<void> insertItem(Item item);
}
