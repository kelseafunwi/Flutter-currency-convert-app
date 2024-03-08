import 'package:flutter/material.dart';


class CurrencyConvertMaterialPage extends StatefulWidget {
  // Stateful component has a constant constructor meaning we cannot create variables in them
   const CurrencyConvertMaterialPage({super.key});

  // this function is going to create the state for us.
  @override
  State<CurrencyConvertMaterialPage> createState() {
    return _CurrencyConvertedMaterialPageState();
  }
}

class _CurrencyConvertedMaterialPageState extends State<CurrencyConvertMaterialPage> {

  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();

  // init state does some operation before you application goes into the build function
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initialization done");
  }

  @override
  Widget build(BuildContext context) {
    // your build function is not suppose to have any asynchronous function since it runs many times.

    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );


    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Currency Convert App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CFA $result ',
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      if (value.isEmpty) {
                        result = 0.0;
                      } else {
                        result = int.parse(textEditingController.text) * 600.0;
                      }
                      setState(() {

                      });
                    },
                    autofocus: true,
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter currency in USD : ",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.black,
                      suffixText: "USD",
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                  ),
                ),

                // button
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed : () {
                      setState(() {
                        result = int.parse(textEditingController.text.isNotEmpty ? textEditingController.text : '0') * 600.0;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.maxFinite, 60),
                      elevation: 20,
                      shape: const ContinuousRectangleBorder(),
                    ),
                    child: const Text("Convert"),
                  ),
                ),
              ],
            )
        )
    );
  }
}