import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/store/imc/imc_store.dart';

class HomeScreen extends StatelessWidget {
  final IMCStore store = IMCStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Calculo de IMC',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                height: 120,
                child: Image.asset('assets/images/body.png'),
              ),
              TextField(
                  maxLength: 3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Altura (cm)',
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  onChanged: (value) => store.height = value),
              TextField(
                  maxLength: 3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Peso (cm)',
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  onChanged: (value) => store.weight = value),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  store.calcImc();
                  _showResult(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'CALCULAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showResult(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text(
          'Meu IMC',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        content: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/bmi.png',
              height: 80,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Observer(
                builder: (_) => Text(
                  '${store.result}',
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          )
        ],
      ),
    );
  }
}
