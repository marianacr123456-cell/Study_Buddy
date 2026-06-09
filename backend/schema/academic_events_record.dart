import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcademicEventsRecord extends FirestoreRecord {
  AcademicEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _day = snapshotData['day'] as String?;
    _time = snapshotData['time'] as String?;
    _location = snapshotData['location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('academic_events');

  static Stream<AcademicEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcademicEventsRecord.fromSnapshot(s));

  static Future<AcademicEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcademicEventsRecord.fromSnapshot(s));

  static AcademicEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AcademicEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcademicEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcademicEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcademicEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcademicEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcademicEventsRecordData({
  String? title,
  String? day,
  String? time,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'day': day,
      'time': time,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcademicEventsRecordDocumentEquality
    implements Equality<AcademicEventsRecord> {
  const AcademicEventsRecordDocumentEquality();

  @override
  bool equals(AcademicEventsRecord? e1, AcademicEventsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.day == e2?.day &&
        e1?.time == e2?.time &&
        e1?.location == e2?.location;
  }

  @override
  int hash(AcademicEventsRecord? e) =>
      const ListEquality().hash([e?.title, e?.day, e?.time, e?.location]);

  @override
  bool isValidKey(Object? o) => o is AcademicEventsRecord;
}
