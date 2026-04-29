import 'package:flutter/material.dart';
import 'package:project_63c/widgets/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  double result = 0;
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
                  SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          controller: controller,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          validator: (value) {
                            if (controller.text.isEmpty) {
                              return "Field is empty!!";
                            }
                            return null;
                          },
                          hintText: "Enter Amount",
                          labelText: "Amount",
                          prefixIcon: Icon(Icons.monetization_on),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        result = double.parse(controller.text) * 122.74;
                      }
                      setState(() {});
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(height: 20),
                  Text("BDT: $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
