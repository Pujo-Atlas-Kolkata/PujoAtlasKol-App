import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreetingHeader extends StatelessWidget {
  GreetingHeader({super.key, required this.greeting, required this.onSettings});

  String greeting;
  Function onSettings;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 150,
                child: Text(
                  greeting,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 34),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  maxLines: null,
                )),
            GestureDetector(
                child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 73, 69, 79)),
                    child: const Center(
                        child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ))),
                onTap: () {
                  onSettings();
                })
          ],
        ));
  }
}
