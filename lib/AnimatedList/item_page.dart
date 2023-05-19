import 'package:flutter/material.dart';
import 'package:flutter_animation/AnimatedList/item_model.dart';
import 'package:flutter_animation/AnimatedList/list_item_widget.dart';
class ItemPage extends StatelessWidget {
  ItemPage({super.key});
  final List<ItemModel> items = List.from(ItemModel.listItems);
  final listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Animated List'
        ),
      ),
      body: AnimatedList(
        key: listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) {
          return ListItemWidget(
            item: items[index],
            animation: animation,
            onClick: () {
              removeItem(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          insertItem();
        },
        child: const Icon(
          Icons.add,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  void insertItem(){
    const newIndex = 0;
    final addItem = (List.of(ItemModel.listItems)..shuffle()).first;

    items.insert(
      newIndex,
      addItem);
    listKey.currentState!.insertItem(newIndex);
    const Duration(milliseconds: 700);
  }
  void removeItem(int index){
    final removeItem = items[index];
    // ignore: list_remove_unrelated_type
    items.remove(index);
    listKey.currentState!.removeItem(
      index, (context, animation){
        return ListItemWidget(
          item: removeItem, 
          animation: animation, 
          onClick: () {
            
          },
          );
      },
      duration: const Duration(milliseconds: 700)
    );
  }
}