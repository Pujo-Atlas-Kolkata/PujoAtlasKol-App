import 'package:flutter/material.dart';
import 'package:mobile/components/custom_searchbar.dart';
import 'package:mobile/components/proto_item.dart';

class SearchWidget extends StatefulWidget {
  final String searchKey;
  final Function action;
  const SearchWidget(
      {super.key, required this.searchKey, required this.action});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> params = ['Transport', 'Pharmacy', 'ATMs'];

    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(26)),
        color: Color(0xFF1D1B20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSearchBar(
            controller: SearchController(),
            hintText: 'Search here ...',
            contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 80,
            width: 286,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, index) {
                  return ProtoItem(params[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: params.length),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
