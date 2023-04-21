// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:eight_hour_tutorial/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:eight_hour_tutorial/models/catalog.dart';
import 'package:eight_hour_tutorial/widgets/themes.dart';

import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Lovi";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    // print(decodeData);

    var productsData = decodeData["products"];
    // print(productsData);

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(
    //     CatalogModel.items.length, (index) => CatalogModel.items[0]);
    // return Scaffold(
    /*
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(
        //   color: Colors.black,
        // ),
        title: Text(
          "Catalog App",
          // style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            // ? ListView.builder(
            //     itemCount: CatalogModel.items?.length,
            //     itemBuilder: (context, index) => ItemWidget(
            //       item: CatalogModel.items![index],
            //     ),
            //   )
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items?[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      header: Container(
                        child: Text(
                          item!.name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Image.network(
                        item.image,
                        fit: BoxFit.contain,
                      ),
                      footer: Container(
                        child: Text(
                          "\$${item.price.toString()}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items?.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      */
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        backgroundColor: context.theme.primaryColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
