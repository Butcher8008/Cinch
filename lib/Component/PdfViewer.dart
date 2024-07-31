import 'dart:typed_data';
import 'package:cinch/Api.dart';
import 'package:cinch/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:http/http.dart' as http;

class PdfViewer extends StatefulWidget {
  final String url;
  final String title;
  final String type;
  final String modelId;
  final VoidCallback onComplete; // Callback function

  PdfViewer({required this.url, required this.title, required this.type, required this.modelId, required this.onComplete,});

  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  PdfController? _pdfController;

  @override
  void initState() {
    super.initState();
    _loadPdf();
  }

  Future<void> _loadPdf() async {
    try {
      final fullUrl = widget.url.replaceFirst('app/public/', APIService().baseURL+'storage/');
      final response = await http.get(Uri.parse(fullUrl));
      if (response.statusCode == 200) {
        final pdfData = response.bodyBytes;
        _pdfController = PdfController(
          document: PdfDocument.openData(Uint8List.fromList(pdfData)),
        );
        setState(() {}); // Refresh the UI after setting the controller
      } else {
        throw Exception('Failed to load PDF');
      }
    } catch (e) {
      // Handle errors here
      print('Error loading PDF: $e');
    }
  }

  @override
  void dispose() {
    _pdfController?.dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  void _showComplteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
          ),
          title: Text('Complete'),
          content: Text('Are you sure you want to complete this work?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                var complete = await postComplete(widget.modelId, widget.type);
                if(complete) {
                  Navigator.of(context).pop(); // Close the inner dialog
                  Navigator.of(context).pop(); // Close the outer dialog
                  widget.onComplete();
                }
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue), // Button background color
                  foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
                ),
                onPressed: _showComplteDialog,
                child: Text('Mark as completed'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),
            Spacer(),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop(); // Close the current screen
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        titleSpacing: 5,
        elevation: 0,
        leading: Container(),
        leadingWidth: 15,
      ),
      body: _pdfController == null
          ? Center(child: CircularProgressIndicator())
          : PdfView(
        controller: _pdfController!,
      ),
    );
  }
}
