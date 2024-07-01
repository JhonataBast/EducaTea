// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> docGerarPDF(
    List<DesempenhoAlunoRecord> desempenhoAluno, String alunoId) async {
  // Filtrar os dados do aluno específico
  final filteredDesempenho =
      desempenhoAluno.where((aluno) => aluno.alunoIdSelect == alunoId).toList();

  // Buscar o nome do aluno na tabela CadAluno
  final alunoDoc = await FirebaseFirestore.instance
      .collection('CadAluno')
      .doc(alunoId)
      .get();
  final alunoNome = alunoDoc.data()?['Nome'];

  // Definindo o documento PDF
  final pdf = pw.Document();

  // Estilos personalizados
  final pw.TextStyle headerStyle =
      pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14);
  final pw.TextStyle cellStyle = pw.TextStyle(fontSize: 12);

  // Adicionando título ao PDF
  pdf.addPage(pw.MultiPage(
      build: (context) => <pw.Widget>[
            pw.Header(
              level: 0,
              child: pw.Text(
                'EducaTEA',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 20,
                  color: PdfColors.lightBlue300,
                ),
              ),
            ),

            // ignore: deprecated_member_use
            pw.Table.fromTextArray(
              context: context,
              headers: <String>['Atividade', 'Resultados'],
              data: filteredDesempenho.expand((aluno) {
                return [
                  ['Nome do Aluno', alunoNome],
                  [
                    'Número de Acertos (Num)',
                    aluno.respostaCertaNum.toString()
                  ],
                  ['Número de Erros (Num)', aluno.respostaErradaNum.toString()],
                  [
                    'Número de Acertos (Cor)',
                    aluno.respostaCertaCor.toString()
                  ],
                  ['Número de Erros (Cor)', aluno.respostaErradaCor.toString()],
                  [
                    'Número de Acertos (Obj)',
                    aluno.respostaCertaObj.toString()
                  ],
                  ['Número de Erros (Obj)', aluno.respostaErradaObj.toString()],
                  [
                    'Número de Acertos (Letra)',
                    aluno.respostaCertaLetra.toString()
                  ],
                  [
                    'Número de Erros (Letra)',
                    aluno.respostaErradaLetra.toString()
                  ],
                  ['Tempo Gasto (Num)', aluno.tempoGastoNum],
                  ['Tempo Gasto (Cor)', aluno.tempoGastoCor],
                  ['Tempo Gasto (Obj)', aluno.tempoGastoObj],
                  ['Tempo Gasto (Letra)', aluno.tempoGastoLetra],
                ];
              }).toList(),
              border: pw.TableBorder.all(width: 1, color: PdfColors.blue100),
              headerStyle: headerStyle,
              headerAlignment: pw.Alignment.center,
              cellStyle: cellStyle,
              headerDecoration:
                  pw.BoxDecoration(color: PdfColors.lightGreen300),
              cellAlignment: pw.Alignment.center,
              cellAlignments: {
                0: pw.Alignment.centerLeft,
                1: pw.Alignment.centerLeft,
              },
              cellHeight: 30,
              headerHeight: 40,
            ),
          ]));

  // Imprimindo o arquivo PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
