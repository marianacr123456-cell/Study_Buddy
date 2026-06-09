import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricsRecord extends FirestoreRecord {
  MetricsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "timestamp" field.
  int? _timestamp;
  int get timestamp => _timestamp ?? 0;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _value = castToType<double>(snapshotData['value']);
    _timestamp = castToType<int>(snapshotData['timestamp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metrics');

  static Stream<MetricsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetricsRecord.fromSnapshot(s));

  static Future<MetricsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetricsRecord.fromSnapshot(s));

  static MetricsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetricsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetricsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetricsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetricsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetricsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetricsRecordData({
  String? type,
  double? value,
  int? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'value': value,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class MetricsRecordDocumentEquality implements Equality<MetricsRecord> {
  const MetricsRecordDocumentEquality();

  @override
  bool equals(MetricsRecord? e1, MetricsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.value == e2?.value &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(MetricsRecord? e) =>
      const ListEquality().hash([e?.type, e?.value, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is MetricsRecord;
}
