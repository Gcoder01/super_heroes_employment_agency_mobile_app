import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchWidget extends StatefulWidget {
  var onTextChange, parenSetState;
  bool switchIsSelected = false;

  SearchWidget(this.onTextChange, this.parenSetState,{Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width * 0.05,
      ),
      child: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              onChanged: widget.onTextChange,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Sort By Power',
                ),
                CupertinoSwitch(
                  value: widget.switchIsSelected,
                  onChanged: (value) {
                    
                    setState(() {
                      widget.switchIsSelected = !widget.switchIsSelected;
                      print(widget.switchIsSelected);
                    });widget.parenSetState;
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
