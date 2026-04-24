import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Converter Page")),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 183, 205, 216),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("USD"),
                      Icon(Icons.swap_horiz_sharp),
                      Text("BDT"),
                    ],
                  ),
                  Form(
                    child: TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: "Enter Amount",
                        labelText: "Amount",
                        prefixIcon: Icon(Icons.monetization_on),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
