import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadAlunoRecord extends FirestoreRecord {
  CadAlunoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "nomeEscola" field.
  String? _nomeEscola;
  String get nomeEscola => _nomeEscola ?? '';
  bool hasNomeEscola() => _nomeEscola != null;

  // "nomeresp" field.
  String? _nomeresp;
  String get nomeresp => _nomeresp ?? '';
  bool hasNomeresp() => _nomeresp != null;

  // "serie" field.
  String? _serie;
  String get serie => _serie ?? '';
  bool hasSerie() => _serie != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _idade = castToType<int>(snapshotData['Idade']);
    _nomeEscola = snapshotData['nomeEscola'] as String?;
    _nomeresp = snapshotData['nomeresp'] as String?;
    _serie = snapshotData['serie'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CadAluno');

  static Stream<CadAlunoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadAlunoRecord.fromSnapshot(s));

  static Future<CadAlunoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CadAlunoRecord.fromSnapshot(s));

  static CadAlunoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CadAlunoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadAlunoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadAlunoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadAlunoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CadAlunoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCadAlunoRecordData({
  String? nome,
  int? idade,
  String? nomeEscola,
  String? nomeresp,
  String? serie,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Idade': idade,
      'nomeEscola': nomeEscola,
      'nomeresp': nomeresp,
      'serie': serie,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CadAlunoRecordDocumentEquality implements Equality<CadAlunoRecord> {
  const CadAlunoRecordDocumentEquality();

  @override
  bool equals(CadAlunoRecord? e1, CadAlunoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.idade == e2?.idade &&
        e1?.nomeEscola == e2?.nomeEscola &&
        e1?.nomeresp == e2?.nomeresp &&
        e1?.serie == e2?.serie &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CadAlunoRecord? e) => const ListEquality().hash(
      [e?.nome, e?.idade, e?.nomeEscola, e?.nomeresp, e?.serie, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is CadAlunoRecord;
}
