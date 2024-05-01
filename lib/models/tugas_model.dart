import 'package:flutter/cupertino.dart';

class TugasModel {
  final String judul;
  final String desc;
  final DateTime tanggal;
  final String? imageAsset;
  final Widget tugasPage;

  const TugasModel({required this.judul, required this.desc, required this.tanggal, this.imageAsset, required this.tugasPage});
}
