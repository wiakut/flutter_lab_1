import 'package:flutter/material.dart';
import 'package:my_project/utils/emoji_translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String _translatedText = '';

  void _onTextChanged(String text) {
    setState(() {
      _translatedText = EmojiTranslator.translate(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emoji Translator')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 20,
          children: [
            TextField(
              controller: _controller,
              onChanged: _onTextChanged,
              decoration: const InputDecoration(
                labelText: 'Write something interesting',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _translatedText,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
