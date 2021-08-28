import 'package:flutter/material.dart';

/*3)Enunciado	Retaurant App : 
Crear una app que permita calcular la propina que desea dejar cada comenzal al retirarse del restorant, 
esta debe permitir ingresar el monto total de la factura y el porcentaje que desea dejar de propina al mozo ,
 al presion el boton de “Calcular” debera mostrar la propina calculada y el prefio final (total De Factura + Propina)
*/
void main() {
  runApp(MaterialApp(title: 'Tip Calculator', home: TipCalculator()));
}

class TipCalculator extends StatelessWidget {
  //atributos de la clase
  double billAmount = 0.0; //total de la factura
  double tipPercentage = 0.0; //porcentaje de propina

  @override
  Widget build(BuildContext context) {
    //Create first input field
    TextField billAmountField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          //intenta ejecutar el codigo y si falla se va directo al catch
          billAmount = double.parse(value);
        } catch (exception) {
          //si el codigo que esta dentro de try genera un error se captura y modifica el valor del atributo billAmount
          billAmount = 0.0;
        }
      },
      decoration: InputDecoration(labelText: "Bill amount(\$)"),
    );

    //Create another input field
    TextField tipPercentageField = TextField(
      decoration: InputDecoration(labelText: "Tip %"),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          tipPercentage = double.parse(value);
        } catch (exception) {
          tipPercentage = 0.0;
        }
      },
    );

    //Create button
    ElevatedButton calculateButton = ElevatedButton(
      child: Text("Calculate"),
      onPressed: () {
        //calculate tip and total
        double calculateTip = billAmount * tipPercentage / 100.0;
        double total = billAmount + calculateTip;

        //Generate Dialog
        AlertDialog dialog = AlertDialog(
          content: Text("Tip: \$ $calculateTip \n"
              "Total: \$ $total"),
        );

        //showDialog : Muestra un cuadro de diàlogo de Material sobre el contenido actual
        // de la app , con sus respectivas animaciones de entrada y salida de material
        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    Container container = Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [billAmountField, tipPercentageField, calculateButton],
      ),
    );

    AppBar appBar = AppBar(title: Text("Tip Calculator"));

    Scaffold scaffold = Scaffold(appBar: appBar, body: container);

    return scaffold;
  }
}
