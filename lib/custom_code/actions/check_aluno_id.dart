// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkAlunoId(String idAluno) async {
  // Access Firestore collections
  final dbDesempenho = FirebaseFirestore.instance.collection('desempenhoAluno');
  final dbCadAluno = FirebaseFirestore.instance.collection('CadAluno');
  // Check if idAluno exists in cadAluno collection
  final cadAlunoDoc = await dbCadAluno.doc(idAluno).get();

  if (!cadAlunoDoc.exists) {
    // idAluno does not exist in cadAluno collection, handle error or return false
    return false;
  }

  // Create a reference to the cadAluno document
  final cadAlunoRef = dbCadAluno.doc(idAluno);

  // Query desempenhoAluno to check if idAluno already has a record
  final desempenhoAlunoDoc = await dbDesempenho.doc(idAluno).get();

  if (desempenhoAlunoDoc.exists) {
    // idAluno already exists in desempenhoAluno collection
    return true;
  } else {
    // idAluno does not exist, create a new entry in desempenhoAluno
    await dbDesempenho.doc(idAluno).set({
      'alunoId': cadAlunoRef, // Use cadAluno reference as a reference field
      'alunoIdSelect': idAluno,
      'respostaCertaCor': 0,
      'respostaCertaNum': 0,
      'respostaCertaObj': 0,
      'respostaCertaLetra': 0,
      'respostaErradaNum': 0,
      'respostaErradaCor': 0,
      'respostaErradaObj': 0,
      'respostaErradaLetra': 0,
    });
    return false;
  }
}
