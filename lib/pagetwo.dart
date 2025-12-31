import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/increment_provider.dart';

class Pagetwo extends StatelessWidget {
  Pagetwo({super.key});

  final multNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2'), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Incrementprovider>().add();
          context.read<Incrementprovider>().addtextnum(multNumController.text);
        },
        child: Icon(Icons.add),
      ),
      body: Consumer<Incrementprovider>(
        builder: (context, counter, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextField(
                      controller: multNumController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      context.read<Incrementprovider>().reset();
                      multNumController.clear();
                    },
                    child: Text('RESET'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: counter.numbers.length,
                  itemBuilder: (context, index) {
                    final num = counter.numbers[index];

                    final total = num * counter.textfieldnum;
                    return ListTile(
                      title: Text(
                        "${num.toString()} * ${counter.textfieldnum.toString()} = ${total.toString()}",
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
