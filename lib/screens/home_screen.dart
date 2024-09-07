import 'package:flutter/material.dart';
import 'package:mobile/components/heading.dart';
import 'package:mobile/components/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchKey = 'search key';

  void _updateSearchKey(text) {
    setState(() {
      searchKey = text;
    });
    print(searchKey);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0XFFFDE8AB)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 0.3 * height),
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5 * width, vertical: 10 * height),
                        child: Column(
                          children: [
                            Heading(),
                            SizedBox(
                              height: 10,
                            ),
                            SearchWidget(
                                searchKey: searchKey, action: _updateSearchKey)
                          ],
                        ),
                      )),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
