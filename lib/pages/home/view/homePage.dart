import 'dart:io';

import 'package:demo17/main.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';
import 'package:demo17/utility/homeUtility.dart';
import 'package:demo17/utility/utility.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeProvider? providerTrue;
  HomeProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<HomeProvider>(context, listen: true);
    providerFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringData.hometitle),
          centerTitle: true,
          elevation: 0,
          backgroundColor: DesignColor.primary,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: DottedBorder(
                color: Colors.black,
                strokeWidth: 2.2,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: DesignColor.white,
                    backgroundColor: DesignColor.primary,
                    elevation: 4,
                  ),
                  onPressed: () {
                    providerTrue!.business_name.clear();
                    providerTrue!.business_email.clear();
                    providerTrue!.business_number.clear();
                  },
                  child: Text("Clean Data"),
                ),
              ),
            ),
          ],
        ),
        body: Form(
          key: providerTrue!.validateKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (path == null)
                          ? CircleAvatar(
                              backgroundColor: DesignColor.primary,
                              radius: 45,
                              backgroundImage: AssetImage(
                                "assets/images/profile.png",
                              ),
                            )
                          : CircleAvatar(
                              radius: 45,
                              // backgroundImage: NetworkImage("$path"),
                              backgroundImage: FileImage(
                                File(
                                  "$path",
                                ),
                              ),
                            ),
                      wsize(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              DesignColor.primary, // Background color
                        ),
                        onPressed: () {
                          sheetbar();
                        },
                        child: Text("Company Logo Iamge"),
                      ),
                    ],
                  ),
                  hsize(),
                  custom_textformsield(
                      'Business Name',
                      'Business Name',
                      Icon(
                        Icons.business,
                        color: DesignColor.primary,
                      ),
                      "Name",
                      providerTrue!.business_name),
                  hsize(),
                  phone_number(providerTrue!.business_number),
                  hsize(),
                  email_valid(providerTrue!.business_email),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DottedBorder(
                        strokeWidth: 2.2,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Payment",
                            style: TextStyle(
                                color: DesignColor.primary, fontSize: 15),
                          ),
                        ),
                      ),
                      wsize(),
                      DropdownButton(
                        value: providerTrue!.dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: providerTrue!.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(color: DesignColor.primary),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          providerFalse!.dropDown(newValue);
                        },
                      ),
                    ],
                  ),
                  hsize(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DesignColor.primary, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      providerTrue!.addAll(
                          path,
                          providerTrue!.business_name.text,
                          providerTrue!.business_number.text,
                          providerTrue!.business_email.text,
                          providerTrue!.dropdownvalue.toString());
                      // BusinessModel business_data = BusinessModel(
                      //   business_name: business_name.text,
                      //   business_number: int.parse("${business_number.text}"),
                      //   business_email: business_email.text,
                      //   payment_type: dropdownvalue,
                      //   image_pic: path,
                      // );

                      // business_datalist.add(business_data);
                      // print(dropdownvalue);
                      // String data = "";

                      // List save = [
                      //   name.text,
                      //   surname.text,
                      //   txtBirth.text,
                      //   phone_number.text,
                      //   eduction.text,
                      //   email.text,
                      //   post_name.text,
                      //   radio_button.toString(),
                      //   data
                      // ];
                      // DataModel data = DataModel(
                      //     business_name: business_name.text,
                      //     business_number: business_number.text,
                      //     business_email: business_email.text);
                      // DataModel d1 = DataModel(
                      //   name: save[0],
                      //   surname: save[1],
                      //   txtBirth: save[2],
                      //   phone_number: save[3],
                      //   eduction: save[4],
                      //   email: save[5],
                      //   post_name: save[6],
                      //   radio_button: save[7],
                      //   checkbox_data: save[8],
                      // );

                      // if (validateKey.currentState!.validate()) {
                      //   Navigator.pushReplacementNamed(context, 'data',
                      //       arguments: data);
                      // }

                      // if (path == null) {
                      //   final snackBar = SnackBar(
                      //     content: const Text('Yay! A SnackBar!'),
                      //     action: SnackBarAction(
                      //       label: 'ok',
                      //       onPressed: () {
                      //         Navigator.pop(context);
                      //       },
                      //     ),
                      //   );
                      // } else

                      if (path == null) {
                        Fluttertoast.showToast(
                            // gravity: ToastGravity.TOP_LEFT,
                            msg: "Please Upload Image");
                      } else if (providerTrue!.validateKey.currentState!
                          .validate()) {
                        Navigator.pushReplacementNamed(
                          context,
                          '/data',
                        );
                      }
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void sheetbar() {
    showModalBottomSheet(
      backgroundColor: DesignColor.primary,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(
                Icons.camera,
                color: DesignColor.white,
              ),
              title: Text(
                "Camera",
                style: TextStyle(color: DesignColor.white),
              ),
              onTap: () async {
                ImagePicker pick = ImagePicker();
                // XFile? img = await pick.pickImage(source: ImageSource.camera);
                providerTrue!.image(
                  await pick.pickImage(source: ImageSource.camera),
                );
                // setState(() {
                //   path = img!.path;
                // });
              },
            ),
            ListTile(
              leading: Icon(Icons.image, color: DesignColor.white),
              title: Text(
                "Gallery",
                style: TextStyle(color: DesignColor.white),
              ),
              onTap: () async {
                ImagePicker pick = ImagePicker();
                // XFile? img = await pick.pickImage(source: ImageSource.gallery);
                providerTrue!.image(
                  await pick.pickImage(source: ImageSource.gallery),
                );

                // setState(() {
                //   path = img!.path;
                // });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.remove_circle_outline,
                color: DesignColor.white,
              ),
              title: Text(
                "Remove Photo",
                style: TextStyle(color: DesignColor.white),
              ),
              onTap: () async {
                path = null;
                providerTrue!.imageNull();
                // setState(() {
                //   path = null;
                // });
              },
            ),
          ],
        );
      },
    );
  }
}
