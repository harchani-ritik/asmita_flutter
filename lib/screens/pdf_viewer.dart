import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter/material.dart';


class PdfShow extends StatefulWidget {
  final String pdfUrl;
  PdfShow({this.pdfUrl});

  @override
  _PdfShowState createState() => _PdfShowState();
}

class _PdfShowState extends State<PdfShow> {

  bool _isLoading=false;
  PDFDocument document;

  void loadPdf() async
  {
    document = await PDFDocument.fromURL(widget.pdfUrl);
    setState(() {
      _isLoading=false;
    });
  }

  @override
  void initState() {
    super.initState();
    _isLoading=true;
    loadPdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(document: document,showPicker: false)),
    );
  }
}
