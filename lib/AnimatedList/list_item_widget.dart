import 'package:flutter/material.dart';
import 'package:flutter_animation/AnimatedList/item_model.dart';
class ListItemWidget extends StatelessWidget {
  final ItemModel item;
  final Animation<double> animation;
  final VoidCallback onClick;
  const ListItemWidget({
    super.key,
    required this.item,
    required this.animation,
    required this.onClick});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(
            20
          )
        ),
        child: Row(
          children: [
            Container(
              height: mediaQuery.height*0.2,
              width: mediaQuery.width*0.35,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                ),
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    item.image
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 3
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mediaQuery.width*0.5,
                    child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                  
                 SizedBox(
                    width: mediaQuery.width*0.5,
                    child: Text(
                    item.subdetail,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 9,
                  ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onClick,
              icon: const Icon(
                Icons.delete,
              )
            )
          ],
        )
      ),
    );
  }
}
