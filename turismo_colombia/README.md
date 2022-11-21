# turismo_colombia

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:turismo_colombia/repository/pages_api.dart';

import '../models/result.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({super.key});

  @override
  State<SearchPlacePage> createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
PagesApi _pagesApi = PagesApi();

final _parametro = TextEditingController();

 List<Result> listPages = <Result>[];

Future _searchPage() async{
  Result resultFuture = await _pagesApi.getPages(_parametro.text);
  setState(() {
    resultFuture.toString();
  }
  );

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Api Places")),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Center(
        child: Column(children: [
        TextFormField(
          controller: _parametro,
          decoration:  const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Digite lugar"),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16.0),

          ElevatedButton(style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),onPressed: (){ 
            _searchPage();

          }, child: const Text("Buscar"),
          ),
          Expanded(child: ListView.builder(itemBuilder: listPages.length, 
                                            itemBuilder: (BuildContext (context, int index) {
                                              Result site = listPages[index];
                                              return Card(
                                                child: ListTile(leading: ),
                                              ),
                                            }))
        ]
        ),

      ),
      ),
      );
  }
}