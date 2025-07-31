import 'package:flutter/material.dart';

class Ccmaterial extends StatefulWidget {
  const Ccmaterial({super.key});

  @override
  State<Ccmaterial> createState() => CcmaterialState();
}

class CcmaterialState extends State<Ccmaterial> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 6, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 14, 15),
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white60),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 254, 254),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 3, 3, 3)),
                decoration: InputDecoration(
                  hintText: 'Please enter the amont in USD',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(153, 13, 13, 13),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(153, 18, 17, 17),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 85.57;
                  setState(() {});
                },

                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

   