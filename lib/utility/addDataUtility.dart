import 'package:demo17/utility/utility.dart';
import 'package:flutter/material.dart';

Widget quntity(TextEditingController? iteamQuantity) {
  return TextFormField(
    keyboardType: TextInputType.number,
    controller: iteamQuantity,
    validator: (value) {
      if (value!.isEmpty) {
        return "PLease Enter Iteam Quantity";
      } else {
        return null;
      }
    },
    cursorColor: DesignColor.primary,
    style: TextStyle(
      color: DesignColor.black,
    ),
    decoration: InputDecoration(
      labelText: 'Iteam Quantity',
      labelStyle: TextStyle(
        color: DesignColor.primary,
      ),
      hintText: 'Enter Iteam Quantity',
      hintStyle: TextStyle(
        color: DesignColor.primary,
      ),
      prefixIcon: Icon(
        Icons.looks_one,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: DesignColor.blue,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      border: new OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: new BorderSide(
          color: DesignColor.primary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(
          width: 1,
          color: DesignColor.primary,
        ),
      ),
    ),
  );
}

Widget price(TextEditingController? iteamPrice) {
  return TextFormField(
    keyboardType: TextInputType.number,
    controller: iteamPrice,
    validator: (value) {
      if (value!.isEmpty) {
        return "PLease Enter Iteam Price";
      } else {
        return null;
      }
    },
    cursorColor: DesignColor.primary,
    style: TextStyle(
      color: DesignColor.black,
    ),
    decoration: InputDecoration(
      labelText: 'Iteam Price',
      labelStyle: TextStyle(
        color: DesignColor.primary,
      ),
      hintText: 'Enter Iteam Price',
      hintStyle: TextStyle(
        color: DesignColor.primary,
      ),
      prefixIcon: Icon(
        Icons.price_check,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: DesignColor.blue,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      border: new OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: new BorderSide(
          color: DesignColor.primary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(
          width: 1,
          color: DesignColor.primary,
        ),
      ),
    ),
  );
}

Widget textformfield(
    String name, String htext, var ic, var valid, TextEditingController con) {
  return TextFormField(
    controller: con,
    validator: (value) {
      if (value!.isEmpty) {
        return "PLease Enter $valid";
      } else {
        return null;
      }
    },
    cursorColor: DesignColor.primary,
    style: TextStyle(
      color: DesignColor.black,
    ),
    decoration: InputDecoration(
      labelText: '$name',
      labelStyle: TextStyle(
        color: DesignColor.primary,
      ),
      hintText: '$htext',
      hintStyle: TextStyle(
        color: DesignColor.primary,
      ),
      prefixIcon: ic,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: DesignColor.blue,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      border: new OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: new BorderSide(
          color: DesignColor.primary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(
          width: 1,
          color: DesignColor.primary,
        ),
      ),
    ),
  );
}
