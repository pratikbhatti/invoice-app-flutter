import 'dart:io';

import 'package:demo17/main.dart';
import 'package:demo17/pages/addData/modal/addDataModal.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';
import 'package:demo17/pages/home/provider/homeProvider.dart';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../home/provider/homeProvider.dart';

File? file;

void pdfCreate(
    num total_ans, List<IteamModel> addDataStore, List homeStoreData) async {
  var pdf = pw.Document();

  final image = pw.MemoryImage(
    File('${homeStoreData[0]}').readAsBytesSync(),
  );

  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.only(top: 8, right: 8, left: 8),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                    height: 170,
                    width: 200,
                    child: pw.Image(image, height: 90, width: 150),
                  ),
                  pw.SizedBox(width: 20),
                  pw.Container(
                    height: 110,
                    width: 270,
                    // height: MediaQuery.of(context).size.height / 8.5,
                    // width: MediaQuery.of(context).size.width / 1.5,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.blue,
                      borderRadius: pw.BorderRadius.all(
                        pw.Radius.circular(13),
                      ),
                    ),
                    child: pw.Padding(
                      padding: const pw.EdgeInsets.all(8.0),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "${homeStoreData[1]}",
                            style: pw.TextStyle(
                                fontSize: 20, color: PdfColors.white),
                          ),
                          pw.Text(
                            "Email\t\t\t\t\t\t\t\t:- ${homeStoreData[3]}",
                            style: pw.TextStyle(
                                fontSize: 15, color: PdfColors.white),
                          ),
                          pw.Text(
                            "Mo no\t\t\t\t\t\t:- ${homeStoreData[2]}",
                            style: pw.TextStyle(
                                fontSize: 15, color: PdfColors.white),
                          ),
                          pw.Text(
                            "Payment\t:- ${homeStoreData[4]}",
                            style: pw.TextStyle(
                                fontSize: 15, color: PdfColors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 12),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Container(
                    decoration: pw.BoxDecoration(
                      color: PdfColors.blue,
                      borderRadius: pw.BorderRadius.all(
                        pw.Radius.circular(3),
                      ),
                    ),
                    child: pw.Padding(
                      padding: const pw.EdgeInsets.all(8.0),
                      child: pw.Row(children: [
                        pw.Text(
                          "Total\t:- ",
                          style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 17),
                        ),
                        pw.Text(
                          "  $total_ans",
                          style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 17),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 9, right: 9, left: 9),
                child: pw.Row(
                  children: [
                    pw.Text(
                      "Name",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 18),
                    ),
                    pw.Spacer(),
                    pw.Text(
                      "Quantity",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 18),
                    ),
                    pw.SizedBox(
                      width: 30,
                    ),
                    pw.Text(
                      "Price",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 5,
              ),
              pw.Expanded(
                child: pw.ListView.builder(
                  itemCount: addDataStore.length,
                  itemBuilder: (context, index) {
                    return pw.Container(
                      decoration: pw.BoxDecoration(
                        color: PdfColors.blue,
                        borderRadius: pw.BorderRadius.all(
                          pw.Radius.circular(3),
                        ),
                      ),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(9.0),
                        child: pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              "${addDataStore[index].iteamName}",
                              style: pw.TextStyle(color: PdfColors.white),
                            ),
                            pw.Spacer(),
                            pw.Text(
                              "${addDataStore[index].iteamQuantity}",
                              style: pw.TextStyle(color: PdfColors.white),
                            ),
                            pw.SizedBox(
                              width: 40,
                            ),
                            pw.Text(
                              "${addDataStore[index].TotalPrice}",
                              style: pw.TextStyle(color: PdfColors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    ),
  );

  Directory? dir = await getExternalStorageDirectory();
  print('=====================${dir!.path}');
  file = File("${dir.path}/invoice.pdf");
  await file?.writeAsBytes(await pdf.save());

  // void shareFile() {
  //   // var file_f = await FilePicker.platform.pickFiles();
  //   Share.shareFiles(["${dir.path}/invoice.pdf"]);
  // }
}
