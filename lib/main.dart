import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FraudIDPage());
  }
}

class FraudIDPage extends StatefulWidget {
  const FraudIDPage({super.key});

  @override
  State<FraudIDPage> createState() => _FraudIDPageState();
}

class _FraudIDPageState extends State<FraudIDPage> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchField(
              hintText: "有疑慮的 Line ID",
              controller: _textEditingController,
              onChanged: (value) {},
            ),
            const FraudLineIDSection(),
          ],
        ),
      ),
    );
  }
}

class FraudLineIDSection extends StatelessWidget {
  const FraudLineIDSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: []),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function onChanged;
  const SearchField(
      {super.key,
      this.hintText = "",
      required this.controller,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            labelText: "Search",
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(Icons.search),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        controller: controller,
        onChanged: (value) => onChanged(value),
      ),
    );
  }
}
