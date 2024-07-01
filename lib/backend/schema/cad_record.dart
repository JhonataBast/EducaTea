import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadRecord extends FirestoreRecord {
  CadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "Instituicao" field.
  String? _instituicao;
  String get instituicao => _instituicao ?? '';
  bool hasInstituicao() => _instituicao != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _email = snapshotData['Email'] as String?;
    _senha = snapshotData['Senha'] as String?;
    _instituicao = snapshotData['Instituicao'] as String?;
    _foto = snapshotData['Foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cad');

  static Stream<CadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadRecord.fromSnapshot(s));

  static Future<CadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CadRecord.fromSnapshot(s));

  static CadRecord fromSnapshot(DocumentSnapshot snapshot) => CadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCadRecordData({
  String? nome,
  String? email,
  String? senha,
  String? instituicao,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Email': email,
      'Senha': senha,
      'Instituicao': instituicao,
      'Foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CadRecordDocumentEquality implements Equality<CadRecord> {
  const CadRecordDocumentEquality();

  @override
  bool equals(CadRecord? e1, CadRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.senha == e2?.senha &&
        e1?.instituicao == e2?.instituicao &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(CadRecord? e) => const ListEquality()
      .hash([e?.nome, e?.email, e?.senha, e?.instituicao, e?.foto]);

  @override
  bool isValidKey(Object? o) => o is CadRecord;
}
