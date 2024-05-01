import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemprograman_mobile/src/config/daftar_tugas.dart';
import 'package:pemprograman_mobile/src/view/pages/home/widgets/item_row.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    final itemCount = daftarTugas.length;

    return Container(
      constraints: BoxConstraints(minHeight: 0.9.sh),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemCount: itemCount,
        addSemanticIndexes: true,
        separatorBuilder: (context, index) => const SizedBox(height: 25),
        itemBuilder: (_, i) {
          
          final tugas = daftarTugas[i];

          return ItemRow(tugas: tugas);
        },
      ),
    );
  }
}
