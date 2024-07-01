// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

Future<void> updatePlanetaObj(String alunoId, int planetaObj,
    String startTimeStr, String endTimeStr) async {
  // Access Firestore collection
  final db = FirebaseFirestore.instance.collection('desempenhoAluno');

  // Parse the time strings using DateFormat
  final format = DateFormat('hh:mm:ss a');
  final DateTime startTime =
      format.parse(startTimeStr); // Exemplo: "11:17:18 AM"
  final DateTime endTime = format.parse(endTimeStr); // Exemplo: "11:18:20 AM"

  // Calculate the difference
  final Duration difference = endTime.difference(startTime);
  final String tempoTotalFormatado = formatDuration(difference);

  try {
    final alunoDoc = await db.doc(alunoId).get();

    if (alunoDoc.exists) {
      await db.doc(alunoId).update({
        'respostaCertaObj': planetaObj,
        'respostaErradaObj': 5 - planetaObj,
        'tempoGastoObj': tempoTotalFormatado,
      });
      print('Documento atualizado com sucesso.');
    } else {
      throw Exception('Aluno não encontrado');
    }
  } catch (e) {
    throw e;
  }
}

String formatDuration(Duration duration) {
  int seconds = duration.inSeconds;
  int hours = seconds ~/ 3600;
  seconds %= 3600;
  int minutes = seconds ~/ 60;
  seconds %= 60;

  List<String> parts = [];

  if (hours > 0) {
    parts.add('${hours}h');
  }
  if (minutes > 0) {
    parts.add('${minutes} minutos');
  }
  if (seconds > 0) {
    parts.add('${seconds} segundos');
  }

  return parts.join(' e ');
}
