import 'package:flutter/cupertino.dart';

class Cccupertino extends StatefulWidget {
  const Cccupertino({super.key});

  @override
  State<Cccupertino> createState() => _CcCupertinoState();
}

class _CcCupertinoState extends State<Cccupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        middle: Text('Currency Converter'),
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.darkBackgroundGray,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter amount in USD',
                placeholderStyle: TextStyle(
                  color: const Color.fromARGB(255, 24, 23, 23),
                ),
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 85.57;
                  setState(() {});
                },

                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
