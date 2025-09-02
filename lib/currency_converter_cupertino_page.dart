import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return CupertinoPageScaffold(
      backgroundColor:  CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: const Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor:  CupertinoColors.systemGrey3,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 24,
                  color: CupertinoColors.systemBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(fontSize: 18, color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border : Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ) ,
                placeholder: 'Enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar), 
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),

              const SizedBox(height: 10),

              //button
              CupertinoButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  setState(() {
                    // Example conversion rate // Rebuild to show the result
                  });
                },
                color: CupertinoColors.black,      
                child: const Text('Convert'),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
