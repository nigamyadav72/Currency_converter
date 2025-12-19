import 'package:flutter/material.dart';

//1. Create a variable that stores the converted currency value
//2. Create a function that multiplies the value given by the textfield
// 3. Store the value in the variable that we created
//4. Display the variable

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //here we are using buildcontext when we do navigation, theme all we required is buildcontext

    final border = OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        centerTitle: true,
        // actions: [Text('hello')],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //int -> string integervalue.toString()
              // string-> int int.parse(stringvalue)
              Text(
                // result.toString(),
                'NPR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),

              //button

              //raised
              //appears like a text
              const SizedBox(
                height: 10,
              ), //instead of container we can use sizedbox
              ElevatedButton(
                onPressed: () {
                  //debug, release, profile
                  setState(() {
                    //this setState will just do rebuilt the build function
                    result = double.parse(textEditingController.text) * 145;
                  });
                },

                style: TextButton.styleFrom(
                  //we can use buttonstyle and wigetstatepropertyAll to do the same thing we have done below
                  // elevation: WidgetStatePropertyAll(15), this is used in elevated button to give elevation
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                ),

                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
