import 'dart:async';

import 'package:collection/collection.dart';


import 'package:study_buddy/backend/schema/util/firestore_util.dart';
import 'package:study_buddy/backend/schema/util/schema_util.dart';

import 'package:study_buddy/index.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';

import 'package:study_buddy/backend/schema/util/firestore_util.dart';
import 'package:study_buddy/backend/schema/util/schema_util.dart';

import 'package:study_buddy/index.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';


class MoodLogsRecord extends FirestoreRecord {
  MoodLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emoji" field.
  String? _emoji;
  String get emoji => _emoji ?? '';
  bool hasEmoji() => _emoji != null;

  // "mood" field.
  String? _mood;
  String get mood => _mood ?? '';
  bool hasMood() => _mood != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "timestamp" field.
  int? _timestamp;
  int get timestamp => _timestamp ?? 0;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _emoji = snapshotData['emoji'] as String?;
    _mood = snapshotData['mood'] as String?;
    _note = snapshotData['note'] as String?;
    _date = snapshotData['date'] as String?;
    _timestamp = castToType<int>(snapshotData['timestamp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood_logs');

  static Stream<MoodLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoodLogsRecord.fromSnapshot(s));

  static Future<MoodLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoodLogsRecord.fromSnapshot(s));

  static MoodLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MoodLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoodLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoodLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoodLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoodLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMoodLogsRecordData({
  String? emoji,
  String? mood,
  String? note,
  String? date,
  int? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emoji': emoji,
      'mood': mood,
      'note': note,
      'date': date,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoodLogsRecordDocumentEquality implements Equality<MoodLogsRecord> {
  const MoodLogsRecordDocumentEquality();

  @override
  bool equals(MoodLogsRecord? e1, MoodLogsRecord? e2) {
    return e1?.emoji == e2?.emoji &&
        e1?.mood == e2?.mood &&
        e1?.note == e2?.note &&
        e1?.date == e2?.date &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(MoodLogsRecord? e) => const ListEquality()
      .hash([e?.emoji, e?.mood, e?.note, e?.date, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is MoodLogsRecord;
}
