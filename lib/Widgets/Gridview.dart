import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview(String snap, {Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 12,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: GridTile(
                    footer: Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 10.0,
                      ),
                    ),
                    header: Text(
                      "Active Cases",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 5,
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
