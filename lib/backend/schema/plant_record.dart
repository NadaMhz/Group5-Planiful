import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantRecord extends FirestoreRecord {
  PlantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plant');

  static Stream<PlantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantRecord.fromSnapshot(s));

  static Future<PlantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantRecord.fromSnapshot(s));

  static PlantRecord fromSnapshot(DocumentSnapshot snapshot) => PlantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantRecordData({
  String? name,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantRecordDocumentEquality implements Equality<PlantRecord> {
  const PlantRecordDocumentEquality();

  @override
  bool equals(PlantRecord? e1, PlantRecord? e2) {
    return e1?.name == e2?.name && e1?.id == e2?.id;
  }

  @override
  int hash(PlantRecord? e) => const ListEquality().hash([e?.name, e?.id]);

  @override
  bool isValidKey(Object? o) => o is PlantRecord;
}
