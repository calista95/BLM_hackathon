///File description: Generic menu item container for Document Situation menu item that takes in the menu name,
///the page for where you can see all the objects in the collection, and the page for adding a new object.
import 'package:flutter/material.dart';
import 'package:blmhackathon/shared/constants.dart';

class MenuItem extends StatefulWidget {
  final String menuName;
  final Widget viewAllItemsRoute;
  final Widget addNewItemRoute;
  MenuItem({this.menuName, this.viewAllItemsRoute, this.addNewItemRoute});
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 300,
          height: 90,
          decoration: new BoxDecoration(
              color: color4,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ///tap this text to go to a page where you can see all the objects in this collection
                  GestureDetector(
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(widget.menuName, style: TextStyle(color: color1, fontSize: 18))),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => widget.viewAllItemsRoute));
                    },
                  ),
                  SizedBox(width: 15),

                  ///tap this add icon to go to a page where you can add a new object
                  GestureDetector(
                      child: Icon(Icons.add_circle_outline),
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => widget.addNewItemRoute));
                      }
                  )
              ],
           )
        )
     );
  }
}
