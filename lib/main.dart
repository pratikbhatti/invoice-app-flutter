import 'dart:io';

import 'package:demo17/pages/addData/provider/addDataProvider.dart';
import 'package:demo17/pages/addData/view/addDataPage.dart';
import 'package:demo17/pages/data/provider/dataProvider.dart';
import 'package:demo17/pages/data/view/dataPage.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';
import 'package:demo17/pages/home/view/homePage.dart';
import 'package:demo17/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

String? path;
// Directory? dir =  await getExternalStorageDirectory();
// File file = File("${dir.path}/invoice.pdf");
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddDataProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/data': (context) => DataPage(),
          '/add_data': (context) => AddDataPage(),
        },
      ),
    ),
  );
}
