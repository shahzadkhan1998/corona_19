import 'dart:convert';

import 'package:corona_19/Model/CountryListModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  List<CountryListModel> countryList = [];

  //>>>>>>>>>>>>>>>>>>>>> Http Function>>>>>>>>>>>>>>>>>????????????
  Future<CountryListModel?> getCountryList() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      setState(() {
        for (Map i in data) {
          countryList.add(CountryListModel.fromJson(i));
        }
      });
    }
  }
  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>CLose>>>>>>>>>>>>>>>>>>>>>>>>>>>????

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CountryList"),
      ),
      body: FutureBuilder(
        future: getCountryList(),
        builder: (BuildContext context, snapshot) {
          return Column(
            children: [
              SizedBox(
                height: 700.0,
                child: ListView.builder(
                  itemCount: countryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: ListTile(
                        title: Text(countryList[index].country.toString()),
                        subtitle: Text("Active Case : " +
                            countryList[index].cases.toString()),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              countryList[index].countryInfo!.flag.toString()),
                        ),
                        trailing: Container(
                          child: Text("death ratio : " +
                              countryList[index].deaths.toString()),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
