// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   String radio_button = "Male";
//   var validateKey = GlobalKey<FormState>();
//   bool learn = false;
//   bool read = false;
//   bool coding = false;
//   bool sport = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Form"),
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Form(
//             key: validateKey,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextFormField(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "PLease Enter Your Email Id";
//                       } else if (!RegExp(
//                               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                           .hasMatch(value)) {
//                         return "Please enter a valid email address";
//                       } else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Email',
//                       hintText: 'Enter Your Email Id',
//                       prefixIcon: Icon(Icons.email),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       border: new OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     obscureText: true,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "PLease Enter Your Email Id";
//                       } else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       hintText: 'Enter Your Password',
//                       prefixIcon: Icon(Icons.remove_red_eye),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       border: new OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "PLease Enter Your Mobile Number";
//                       } else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Mobile',
//                       hintText: 'Enter Your Mobile Number',
//                       prefixIcon: Icon(Icons.call),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       border: new OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     keyboardType: TextInputType.number,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "PLease Enter Your Age";
//                       } else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Age',
//                       hintText: 'Enter Your Age',
//                       prefixIcon: Icon(Icons.calculate),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       border: new OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "PLease Enter Your Address";
//                       } else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Address',
//                       hintText: 'Enter Your Address',
//                       prefixIcon: Icon(Icons.push_pin),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       border: new OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(15),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Gender",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: MediaQuery.of(context).size.height / 15,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(15.0),
//                             ),
//                           ),
//                           child: Row(
//                             children: [
//                               Radio(
//                                 fillColor: MaterialStateColor.resolveWith(
//                                     (states) => Colors.grey),
//                                 value: "Male",
//                                 groupValue: radio_button,
//                                 onChanged: (value) {
//                                   setState(
//                                     () {
//                                       radio_button = value! as String;
//                                     },
//                                   );
//                                 },
//                               ),
//                               Text(
//                                 "Male",
//                                 style:
//                                     TextStyle(color: Colors.grey, fontSize: 15),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: MediaQuery.of(context).size.height / 15,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(15.0),
//                             ),
//                           ),
//                           child: Row(
//                             children: [
//                               Radio(
//                                 fillColor: MaterialStateColor.resolveWith(
//                                     (states) => Colors.grey),
//                                 value: "Female",
//                                 groupValue: radio_button,
//                                 onChanged: (value) {
//                                   setState(
//                                     () {
//                                       radio_button = value! as String;
//                                     },
//                                   );
//                                 },
//                               ),
//                               Text(
//                                 "Female",
//                                 style:
//                                     TextStyle(color: Colors.grey, fontSize: 15),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: MediaQuery.of(context).size.height / 15,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(15.0),
//                             ),
//                           ),
//                           child: Row(
//                             children: [
//                               Radio(
//                                 fillColor: MaterialStateColor.resolveWith(
//                                     (states) => Colors.grey),
//                                 value: "Other",
//                                 groupValue: radio_button,
//                                 onChanged: (value) {
//                                   setState(
//                                     () {
//                                       radio_button = value! as String;
//                                     },
//                                   );
//                                 },
//                               ),
//                               Text(
//                                 "Other",
//                                 style:
//                                     TextStyle(color: Colors.grey, fontSize: 15),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Hobbies",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   ListView(
//                     shrinkWrap: true,
//                     children: [
//                       CheckboxListTile(
//                         activeColor: Colors.grey,
//                         checkColor: Colors.black,
//                         title: Text("Reading"),
//                         value: read,
//                         onChanged: (value) {
//                           setState(
//                             () {
//                               read = value!;
//                             },
//                           );
//                         },
//                       ),
//                       CheckboxListTile(
//                         activeColor: Colors.grey,
//                         checkColor: Colors.black,
//                         title: Text("Learning"),
//                         value: learn,
//                         onChanged: (value) {
//                           setState(
//                             () {
//                               learn = value!;
//                             },
//                           );
//                         },
//                       ),
//                       CheckboxListTile(
//                         activeColor: Colors.grey,
//                         checkColor: Colors.black,
//                         title: Text("Coding"),
//                         value: coding,
//                         onChanged: (value) {
//                           setState(
//                             () {
//                               coding = value!;
//                             },
//                           );
//                         },
//                       ),
//                       CheckboxListTile(
//                         activeColor: Colors.grey,
//                         checkColor: Colors.black,
//                         title: Text("Sport"),
//                         value: sport,
//                         onChanged: (value) {
//                           setState(
//                             () {
//                               sport = value!;
//                             },
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                   Center(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                       onPressed: () {
//                         if (validateKey.currentState!.validate()) {
//                           final snackBar = SnackBar(
//                             content: const Text('SucessFull Form Fill'),
//                             action: SnackBarAction(
//                               label: 'ok',
//                               onPressed: () {},
//                             ),
//                           );
//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                         }
//                       },
//                       child: Text("Submit"),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
