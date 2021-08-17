import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  bool _switchIsSelected = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),)
              ),
              
            ),
            Row(
              children: [
                Text(
                  'Sort By Power',
                ),
                CupertinoSwitch(
                  value: _switchIsSelected,
                  onChanged: (value) {
                    setState(() {
                      _switchIsSelected = !_switchIsSelected;
                    });
                  },
                  activeColor: Color(0xff17b09e),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
