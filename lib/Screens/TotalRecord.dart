import 'package:corona_19/Controller/HttpClass.dart';
import 'package:corona_19/Model/Total_status_model.dart';
import 'package:flutter/material.dart';

class TotalRecord extends StatefulWidget {
  const TotalRecord({Key? key}) : super(key: key);

  @override
  _TotalRecordState createState() => _TotalRecordState();
}

class _TotalRecordState extends State<TotalRecord> {
  var data = Httpcontroller.getWolrdsStates();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Record"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
            future: data,
            builder: (BuildContext context,
                AsyncSnapshot<WorldRecordsModel?> snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150.0, vertical: 80.0),
                      child: Text(
                        "Total Cases",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(),
                    //////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.deaths.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  header: Text(
                                    "Death Cases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
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
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.recovered.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  header: Text(
                                    "Today Cases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
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
                        ),
                      ],
                    ),
                    /////////// Row 2 /////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.active.toString(),
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
                                      fontSize: 15.0,
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
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.todayCases.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  header: Text(
                                    "Recovered Cases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
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
                        ),
                      ],
                    ),
                    //////////////////// Row 3 ///////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.todayRecovered.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  header: Text(
                                    "todayRecovered Cases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
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
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  footer: Text(
                                    snapshot.data!.todayDeaths.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  header: Text(
                                    "todayDeaths Cases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
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
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
