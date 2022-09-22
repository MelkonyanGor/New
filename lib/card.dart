import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 250.0,
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
              width: double.infinity,
              child: Image.asset(
                'assets/images/group-people-illustration-set_52683-33806.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  color: Colors.red,
                  onPressed: () {},
                  icon: const Icon(Icons.heart_broken),
                ),
                const Text(
                  '161',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 20),
                IconButton(
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                ),
                const Text(
                  '51',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.send_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.phone,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
