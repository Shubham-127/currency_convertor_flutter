import 'package:flutter/material.dart';

class Advmaterial extends StatefulWidget {
  const Advmaterial({super.key});

  @override
 State<Advmaterial> createState() => AdvmaterialState();
}

class AdvmaterialState extends State<Advmaterial> {
  Map<String, double> exchangeRatesToINR = {
    'USD': 83.1,
    'EUR': 90.5,
    'GBP': 105.3,
    'AUD': 55.6,
    'CAD': 61.2,
    'JPY': 0.55,
  };

  List<String> currencies = ['USD', 'EUR', 'GBP', 'AUD', 'CAD', 'JPY'];
  String selectedCurrency = 'USD';

  TextEditingController amountController = TextEditingController();
  double result = 0;

  void convertCurrency() {
    double? amount = double.tryParse(amountController.text);
    if (amount != null) {
      double rate = exchangeRatesToINR[selectedCurrency] ?? 0;
      setState(() {
        result = amount * rate;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid number')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 202, 199),
      appBar: AppBar(
        title: Text('Currency Converter'),
         titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 18, 18, 18),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(

              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter amount in $selectedCurrency',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              value: selectedCurrency,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCurrency = newValue!;
                });
              },
              items: currencies.map((String currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: convertCurrency,
              child: Text('Convert to INR'),
            ),
            SizedBox(height: 24),
            Text(
              'Result in INR: ₹${result.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}