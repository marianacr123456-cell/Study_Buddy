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


class AchievementsRecord extends FirestoreRecord {
  AchievementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "bgColor" field.
  String? _bgColor;
  String get bgColor => _bgColor ?? '';
  bool hasBgColor() => _bgColor != null;

  // "iconColor" field.
  String? _iconColor;
  String get iconColor => _iconColor ?? '';
  bool hasIconColor() => _iconColor != null;

  // "earned" field.
  bool? _earned;
  bool get earned => _earned ?? false;
  bool hasEarned() => _earned != null;

  void _initializeFields() {
    _label = snapshotData['label'] as String?;
    _icon = snapshotData['icon'] as String?;
    _bgColor = snapshotData['bgColor'] as String?;
    _iconColor = snapshotData['iconColor'] as String?;
    _earned = snapshotData['earned'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('achievements');

  static Stream<AchievementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AchievementsRecord.fromSnapshot(s));

  static Future<AchievementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AchievementsRecord.fromSnapshot(s));

  static AchievementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AchievementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AchievementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AchievementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AchievementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AchievementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAchievementsRecordData({
  String? label,
  String? icon,
  String? bgColor,
  String? iconColor,
  bool? earned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'label': label,
      'icon': icon,
      'bgColor': bgColor,
      'iconColor': iconColor,
      'earned': earned,
    }.withoutNulls,
  );

  return firestoreData;
}

class AchievementsRecordDocumentEquality
    implements Equality<AchievementsRecord> {
  const AchievementsRecordDocumentEquality();

  @override
  bool equals(AchievementsRecord? e1, AchievementsRecord? e2) {
    return e1?.label == e2?.label &&
        e1?.icon == e2?.icon &&
        e1?.bgColor == e2?.bgColor &&
        e1?.iconColor == e2?.iconColor &&
        e1?.earned == e2?.earned;
  }

  @override
  int hash(AchievementsRecord? e) => const ListEquality()
      .hash([e?.label, e?.icon, e?.bgColor, e?.iconColor, e?.earned]);

  @override
  bool isValidKey(Object? o) => o is AchievementsRecord;
}
