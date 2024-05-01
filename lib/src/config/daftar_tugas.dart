import 'package:pemprograman_mobile/models/tugas_model.dart';
import 'package:pemprograman_mobile/src/view/pages/tugas3/tugas3_page.dart';
import 'package:pemprograman_mobile/src/view/pages/tugas4/tugas4_page.dart';

List<TugasModel> daftarTugas = [
  TugasModel(
    judul: "Tugas Pertemuan 3",
    desc: "Pembuatan CV",
    tanggal: DateTime(2024, 04, 20),
    tugasPage: const Tugas3(),
  ),
  TugasModel(
    judul: "Tugas Pertemuan 4",
    desc: "auto unit conversion",
    tanggal: DateTime(2024, 5, 1),
    tugasPage: const Tugas4(),
  ),
];
