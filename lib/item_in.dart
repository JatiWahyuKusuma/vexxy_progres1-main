import 'package:flutter/material.dart';

class item_in extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitForm() {
    if (formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Item in'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
            margin: EdgeInsets.all(15),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Nama Barang';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Nama Barang'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: 10,
                    )),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Kode Barang';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Kode Barang'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: 10,
                    )),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Jenis Barang';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('jenis Barang'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: 10,
                    )),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Jumlah Barang';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Jumlah Barang'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: 10,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.deepPurple),
                        ),
                        onPressed: submitForm,
                        child: Text(
                          "Submit",
                        ),
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}
