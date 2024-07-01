// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> cadastroAluno(String nome, int idade, String nomeEscola,
    String nomeresp, String serie, String emailProf) async {
  try {
    final cadProfessor = FirebaseFirestore.instance.collection('cad');

    final querySnapshot =
        await cadProfessor.where('Email', isEqualTo: emailProf).limit(1).get();

    final professorDoc = querySnapshot
        .docs.first.reference; // Obter diretamente a referência do documento

    final dbCadAluno = FirebaseFirestore.instance.collection('CadAluno');
    final alunoDocRef =
        dbCadAluno.doc(); // Referência para o novo documento de aluno

    await alunoDocRef.set({
      'Nome': nome,
      'Idade': idade,
      'nomeEscola': nomeEscola,
      'nomeresp': nomeresp,
      'serie': serie,
      'userId':
          professorDoc, // Armazenar a referência do documento do professor
    });

    return true;
  } catch (e) {
    print('Error: $e');
    return false;
  }
}
