import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DesempenhoAlunoRecord extends FirestoreRecord {
  DesempenhoAlunoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "alunoId" field.
  DocumentReference? _alunoId;
  DocumentReference? get alunoId => _alunoId;
  bool hasAlunoId() => _alunoId != null;

  // "respostaCertaNum" field.
  int? _respostaCertaNum;
  int get respostaCertaNum => _respostaCertaNum ?? 0;
  bool hasRespostaCertaNum() => _respostaCertaNum != null;

  // "respostaErradaNum" field.
  int? _respostaErradaNum;
  int get respostaErradaNum => _respostaErradaNum ?? 0;
  bool hasRespostaErradaNum() => _respostaErradaNum != null;

  // "respostaCertaLetra" field.
  int? _respostaCertaLetra;
  int get respostaCertaLetra => _respostaCertaLetra ?? 0;
  bool hasRespostaCertaLetra() => _respostaCertaLetra != null;

  // "respostaErradaLetra" field.
  int? _respostaErradaLetra;
  int get respostaErradaLetra => _respostaErradaLetra ?? 0;
  bool hasRespostaErradaLetra() => _respostaErradaLetra != null;

  // "respostaCertaObj" field.
  int? _respostaCertaObj;
  int get respostaCertaObj => _respostaCertaObj ?? 0;
  bool hasRespostaCertaObj() => _respostaCertaObj != null;

  // "respostaErradaObj" field.
  int? _respostaErradaObj;
  int get respostaErradaObj => _respostaErradaObj ?? 0;
  bool hasRespostaErradaObj() => _respostaErradaObj != null;

  // "alunoIdSelect" field.
  String? _alunoIdSelect;
  String get alunoIdSelect => _alunoIdSelect ?? '';
  bool hasAlunoIdSelect() => _alunoIdSelect != null;

  // "respostaCertaCor" field.
  int? _respostaCertaCor;
  int get respostaCertaCor => _respostaCertaCor ?? 0;
  bool hasRespostaCertaCor() => _respostaCertaCor != null;

  // "respostaErradaCor" field.
  int? _respostaErradaCor;
  int get respostaErradaCor => _respostaErradaCor ?? 0;
  bool hasRespostaErradaCor() => _respostaErradaCor != null;

  // "tempoGastoNum" field.
  String? _tempoGastoNum;
  String get tempoGastoNum => _tempoGastoNum ?? '';
  bool hasTempoGastoNum() => _tempoGastoNum != null;

  // "tempoGastoCor" field.
  String? _tempoGastoCor;
  String get tempoGastoCor => _tempoGastoCor ?? '';
  bool hasTempoGastoCor() => _tempoGastoCor != null;

  // "tempoGastoLetra" field.
  String? _tempoGastoLetra;
  String get tempoGastoLetra => _tempoGastoLetra ?? '';
  bool hasTempoGastoLetra() => _tempoGastoLetra != null;

  // "tempoGastoObj" field.
  String? _tempoGastoObj;
  String get tempoGastoObj => _tempoGastoObj ?? '';
  bool hasTempoGastoObj() => _tempoGastoObj != null;

  void _initializeFields() {
    _alunoId = snapshotData['alunoId'] as DocumentReference?;
    _respostaCertaNum = castToType<int>(snapshotData['respostaCertaNum']);
    _respostaErradaNum = castToType<int>(snapshotData['respostaErradaNum']);
    _respostaCertaLetra = castToType<int>(snapshotData['respostaCertaLetra']);
    _respostaErradaLetra = castToType<int>(snapshotData['respostaErradaLetra']);
    _respostaCertaObj = castToType<int>(snapshotData['respostaCertaObj']);
    _respostaErradaObj = castToType<int>(snapshotData['respostaErradaObj']);
    _alunoIdSelect = snapshotData['alunoIdSelect'] as String?;
    _respostaCertaCor = castToType<int>(snapshotData['respostaCertaCor']);
    _respostaErradaCor = castToType<int>(snapshotData['respostaErradaCor']);
    _tempoGastoNum = snapshotData['tempoGastoNum'] as String?;
    _tempoGastoCor = snapshotData['tempoGastoCor'] as String?;
    _tempoGastoLetra = snapshotData['tempoGastoLetra'] as String?;
    _tempoGastoObj = snapshotData['tempoGastoObj'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('desempenhoAluno');

  static Stream<DesempenhoAlunoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DesempenhoAlunoRecord.fromSnapshot(s));

  static Future<DesempenhoAlunoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DesempenhoAlunoRecord.fromSnapshot(s));

  static DesempenhoAlunoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DesempenhoAlunoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DesempenhoAlunoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DesempenhoAlunoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DesempenhoAlunoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DesempenhoAlunoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDesempenhoAlunoRecordData({
  DocumentReference? alunoId,
  int? respostaCertaNum,
  int? respostaErradaNum,
  int? respostaCertaLetra,
  int? respostaErradaLetra,
  int? respostaCertaObj,
  int? respostaErradaObj,
  String? alunoIdSelect,
  int? respostaCertaCor,
  int? respostaErradaCor,
  String? tempoGastoNum,
  String? tempoGastoCor,
  String? tempoGastoLetra,
  String? tempoGastoObj,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'alunoId': alunoId,
      'respostaCertaNum': respostaCertaNum,
      'respostaErradaNum': respostaErradaNum,
      'respostaCertaLetra': respostaCertaLetra,
      'respostaErradaLetra': respostaErradaLetra,
      'respostaCertaObj': respostaCertaObj,
      'respostaErradaObj': respostaErradaObj,
      'alunoIdSelect': alunoIdSelect,
      'respostaCertaCor': respostaCertaCor,
      'respostaErradaCor': respostaErradaCor,
      'tempoGastoNum': tempoGastoNum,
      'tempoGastoCor': tempoGastoCor,
      'tempoGastoLetra': tempoGastoLetra,
      'tempoGastoObj': tempoGastoObj,
    }.withoutNulls,
  );

  return firestoreData;
}

class DesempenhoAlunoRecordDocumentEquality
    implements Equality<DesempenhoAlunoRecord> {
  const DesempenhoAlunoRecordDocumentEquality();

  @override
  bool equals(DesempenhoAlunoRecord? e1, DesempenhoAlunoRecord? e2) {
    return e1?.alunoId == e2?.alunoId &&
        e1?.respostaCertaNum == e2?.respostaCertaNum &&
        e1?.respostaErradaNum == e2?.respostaErradaNum &&
        e1?.respostaCertaLetra == e2?.respostaCertaLetra &&
        e1?.respostaErradaLetra == e2?.respostaErradaLetra &&
        e1?.respostaCertaObj == e2?.respostaCertaObj &&
        e1?.respostaErradaObj == e2?.respostaErradaObj &&
        e1?.alunoIdSelect == e2?.alunoIdSelect &&
        e1?.respostaCertaCor == e2?.respostaCertaCor &&
        e1?.respostaErradaCor == e2?.respostaErradaCor &&
        e1?.tempoGastoNum == e2?.tempoGastoNum &&
        e1?.tempoGastoCor == e2?.tempoGastoCor &&
        e1?.tempoGastoLetra == e2?.tempoGastoLetra &&
        e1?.tempoGastoObj == e2?.tempoGastoObj;
  }

  @override
  int hash(DesempenhoAlunoRecord? e) => const ListEquality().hash([
        e?.alunoId,
        e?.respostaCertaNum,
        e?.respostaErradaNum,
        e?.respostaCertaLetra,
        e?.respostaErradaLetra,
        e?.respostaCertaObj,
        e?.respostaErradaObj,
        e?.alunoIdSelect,
        e?.respostaCertaCor,
        e?.respostaErradaCor,
        e?.tempoGastoNum,
        e?.tempoGastoCor,
        e?.tempoGastoLetra,
        e?.tempoGastoObj
      ]);

  @override
  bool isValidKey(Object? o) => o is DesempenhoAlunoRecord;
}
