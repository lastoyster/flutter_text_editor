import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android TextEditor',
      debugShowCheckedModeBanner: false,
      home: const EditorEnhanced(),
    );
  }
}

class EditorEnhanced extends StatefulWidget {
  const EditorEnhanced({super.key});

  @override
  _EditorEnhancedState createState() => _EditorEnhancedState();
}

class _EditorEnhancedState extends State<EditorEnhanced> {
  String result = '';
  final quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Editor Enhanced'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              quill.QuillEditor(
                controller: _controller,
                scrollController: ScrollController(),
                scrollable: true,
                focusNode: FocusNode(),
                autoFocus: false,
                readOnly: false,
                expands: false,
                padding: EdgeInsets.zero,
                placeholder: 'Your text here',
              ),
              quill.QuillToolbar.basic(controller: _controller),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey),
                      onPressed: () {
                        _controller.undo();
                      },
                      child: const Text('Undo',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey),
                      onPressed: () {
                        _controller.clear();
                      },
                      child: const Text('Reset',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary),
                      onPressed: () {
                        final doc = _controller.document.toDelta();
                        final json = doc.toJson();
                        setState(() {
                          result = json.toString();
                        });
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary),
                      onPressed: () {
                        // There is no direct disable method in quill,
                        // this is just to clear the focus to simulate disabling
                        FocusScope.of(context).unfocus();
                      },
                      child: const Text(
                        'Disable',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
