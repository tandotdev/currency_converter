import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// 1. create a variable that stores the converted value
// 2. create a function thatmultiplies the value gien by he Textfielf 
// 3. store the value in the variable that we created 
// 4. Display the variable 

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key}); 
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('build fn');
    
    final border = OutlineInputBorder(

                  // Color (0xAARRGGBB)
                  borderSide:const BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
    );
    
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('currency converter ',
        style:TextStyle(color:  Colors.white,)),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 21, 21),
                
                ),
                ),
                Text(
                  '$result',
                  style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 252, 252, 252),
                ),
                ),
              ],
            ),
            // container 
            // Padding 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                   controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                 decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
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
              ),
            ),
            // buttons 

            // raised 
            // appears like a text 
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: ElevatedButton(
                onPressed: (){ 
                 setState(() {
                   result = double.parse(textEditingController.text) * 86;
                 });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  )
                ),
                child: const Text('convert'),
              ),
            ),
          ],
        )
      ),
    );
  }
}