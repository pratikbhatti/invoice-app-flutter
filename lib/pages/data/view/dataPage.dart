// import 'dart:io';

// import 'package:demo17/pages/home/provider/homeProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class DataScreen extends StatefulWidget {
//   const DataScreen({super.key});

//   @override
//   State<DataScreen> createState() => _DataScreenState();
// }

// class _DataScreenState extends State<DataScreen> {
//   HomeProvider? providerTrue;
//   HomeProvider? providerFalse;
//   @override
//   Widget build(BuildContext context) {
//     providerTrue = Provider.of<HomeProvider>(context, listen: true);
//     providerFalse = Provider.of<HomeProvider>(context, listen: false);

//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Data"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               // Image.file(File("${providerTrue!.homeStoreData[0]}")),
//               // Text("${providerTrue!.homeStoreData[1]}"),
//               // Text("${providerTrue!.homeStoreData[2]}"),
//               // Text("${providerTrue!.homeStoreData[3]}"),
//               // Text("${providerTrue!.homeStoreData[4]}"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:demo17/pages/addData/provider/addDataProvider.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';
import 'package:demo17/utility/dataUtility.dart';
import 'package:demo17/utility/homeUtility.dart';
import 'package:demo17/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  HomeProvider? providerHTrue;
  HomeProvider? providerHFalse;
  AddDataProvider? providerATrue;
  AddDataProvider? providerAFalse;
  @override
  Widget build(BuildContext context) {
    providerHTrue = Provider.of<HomeProvider>(context, listen: true);
    providerHFalse = Provider.of<HomeProvider>(context, listen: false);
    providerATrue = Provider.of<AddDataProvider>(context, listen: true);
    providerAFalse = Provider.of<AddDataProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: (Text("List")),
          centerTitle: true,
          elevation: 0,
          backgroundColor: DesignColor.primary,
          actions: [
            pop_up_menu(context),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  // Image.file(File("${providerTrue!.homeStoreData[0]}")),
                  // Text("${providerTrue!.homeStoreData[1]}"),
                  // Text("${providerTrue!.homeStoreData[2]}"),
                  // Text("${providerTrue!.homeStoreData[3]}"),
                  // Text("${providerTrue!.homeStoreData[4]}"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: DesignColor.white,
                          backgroundColor: DesignColor.primary,
                          elevation: 2,
                        ),
                        onPressed: () {
                          providerAFalse!.iteamName.clear();
                          providerAFalse!.iteamQuantity.clear();
                          providerAFalse!.iteamPrice.clear();
                          Navigator.pushReplacementNamed(context, '/add_data');
                        },
                        child: Text("Add Data"),
                      ),
                      wsize(),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: DesignColor.white,
                          backgroundColor: DesignColor.primary,
                          elevation: 4,
                        ),
                        onPressed: () {
                          providerAFalse!.cleanData();
                          providerATrue!.total_ans();
                          // setState(() {
                          //   iteam_data.clear();
                          // });
                        },
                        child: Text("Clean Data"),
                      ),
                      wsize(),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: DesignColor.white,
                          backgroundColor: DesignColor.primary,
                          elevation: 4,
                        ),
                        onPressed: () {
                          dialog(context);
                        },
                        child: Text("Home"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Total:- ",
                          style: TextStyle(
                              color: DesignColor.primary, fontSize: 18),
                        ),
                        Text(
                          "${providerATrue!.total_answer}",
                          style: TextStyle(
                              color: DesignColor.primary, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: providerATrue!.addDataStore.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, right: 15, left: 15),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),

                              // height: MediaQuery.of(context).size.height,
                              // width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          "${providerATrue!.addDataStore[index].iteamName}",
                                          style: TextStyle(
                                              color: DesignColor.blue,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Qty :- ",
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: DesignColor.black,
                                                fontSize: 12),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                11,
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              "${providerATrue!.addDataStore[index].iteamQuantity}",
                                              // "${iteam_data[index].iteamQuantity}",
                                              style: TextStyle(
                                                  color: DesignColor.black,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  OutlinedButton(
                                    onPressed: () {
                                      providerATrue!.increment(index);
                                      providerATrue!
                                          .increment_total_amout(index);
                                      providerATrue!.total_ans();

                                      // print(
                                      //     "${providerATrue!.addDataStore[index].TotalPrice[inc]}");
                                      // providerATrue!.addDataStore[index]
                                      //     .iteamQuantity = providerATrue!
                                      //         .addDataStore[index].iteamQuantity! +
                                      //     1;
                                      // providerATrue!
                                      //     .addDataStore[index].iteamQuantity;

                                      // setState(() {
                                      //   store_iteam[index].iteamQuantity =
                                      //       store_iteam[index].iteamQuantity! + 1;
                                      //   store_iteam[index].TotalPrice = num.parse(
                                      //           "${store_iteam[index].iteamQuantity}") *
                                      //       num.parse(
                                      //           "${store_iteam[index].iteamPrice}");
                                      // });
                                    },
                                    child: Icon(
                                      Icons.plus_one,
                                      color: DesignColor.black,
                                    ),
                                  ),

                                  OutlinedButton(
                                    onPressed: () {
                                      if (providerATrue!.addDataStore[index]
                                              .iteamQuantity !=
                                          1) {
                                        providerATrue!.decrement(index);
                                        providerATrue!
                                            .decrement_total_amout(index);
                                        providerATrue!.total_ans();
                                      } else if (providerATrue!
                                              .addDataStore[index]
                                              .iteamQuantity ==
                                          1) {
                                        providerATrue!.deleteList(index);
                                      }
                                      // setState(() {
                                      //   if (store_iteam[index].iteamQuantity != 1) {
                                      //     store_iteam[index].iteamQuantity =
                                      //         store_iteam[index].iteamQuantity! - 1;
                                      //     store_iteam[index].TotalPrice = num.parse(
                                      //             "${store_iteam[index].iteamQuantity}") *
                                      //         num.parse(
                                      //             "${store_iteam[index].iteamPrice}");

                                      //     // result = i[index];
                                      //   } else if (store_iteam[index]
                                      //           .iteamQuantity ==
                                      //       1) {
                                      //     iteam_data.removeAt(index);
                                      //   }
                                      // });
                                    },
                                    child: Icon(
                                      Icons.exposure_minus_1,
                                      color: DesignColor.black,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      " 💸 ${providerATrue!.addDataStore[index].TotalPrice}",
                                      style: TextStyle(
                                        color: DesignColor.primary,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providerATrue!.deleteButton(index);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                40,
                                        child: Icon(Icons.delete)),
                                  ),
                                  // Container(
                                  //   width:
                                  //       MediaQuery.of(context).size.width / 15,
                                  //   child: IconButton(
                                  //     onPressed: () {
                                  //       providerATrue!.deleteButton(index);
                                  //     },
                                  //     icon: Icon(
                                  //       Icons.delete,
                                  //       color: DesignColor.red,
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
