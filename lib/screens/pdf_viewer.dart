import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud/modal_progress_hud.dart';

class PdfShow extends StatefulWidget {
  final String pdfUrl;
  PdfShow({this.pdfUrl});
  @override
  _PdfShowState createState() => _PdfShowState();
}

class _PdfShowState extends State<PdfShow> {
  String path;
  bool isPdfLoading;

  @override
  initState() {
    super.initState();
    loadPdf();
    isPdfLoading=true;
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/teste.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<Uint8List> fetchPost() async {
    final response = await http.get(
        widget.pdfUrl);
    final responseJson = response.bodyBytes;

    return responseJson;
  }

  loadPdf() async {
    writeCounter(await fetchPost());
    path = (await _localFile).path;

    if (!mounted) return;

    setState(() {
      isPdfLoading=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isPdfLoading,
      child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  path != null?
                      Container(
                        height: 1000,
                        child: PdfViewer(
                          filePath: path,
                        ),
                      ):Container(),
                  Text(isPdfLoading?'':'End'),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
