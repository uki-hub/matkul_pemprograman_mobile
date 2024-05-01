import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tugas4 extends StatefulWidget {
  const Tugas4({super.key});

  @override
  State<Tugas4> createState() => _Tugas4State();
}

class _Tugas4State extends State<Tugas4> {
  double kgUnitValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konversi satuan massa "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: [
                      const Text(
                        "Satuan Unit massa",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Kilogram(kg)",
                          hintText: "10",
                          labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey[800]),
                        ),
                        onChanged: (value) => setState(() => (kgUnitValue = double.parse(value))),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ...["Ton(t)", "Pound(lb)", "Kilopound(kip)", "Stone(st)", "Ounce(oz)", "Gram(g)", "Milligram(mg)"].map(
                (e) => UnitRow(label: e, kgValue: kgUnitValue),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UnitRow extends StatelessWidget {
  final String label;
  final double kgValue;

  const UnitRow({super.key, required this.label, required this.kgValue});

  @override
  Widget build(BuildContext context) {
    var value = kgValue;

    switch (label) {
      case "Ton(t)":
        value *= 0.001;
        break;

      case "Pound(lb)":
        value *= 2.20462;
        break;

      case "Kilopound(kip)":
        value *= 0.00220462;
        break;

      case "Stone(st)":
        value *= 0.157473;
        break;

      case "Ounce(oz)":
        value *= 35.274;
        break;

      case "Gram(g)":
        value *= 1000;
        break;

      case "Milligram(mg)":
        value *= 1000000;
        break;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          const SizedBox(width: 5),
          Text(
            value.toStringAsFixed(2),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
