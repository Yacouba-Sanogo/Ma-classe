// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AcademicYearsTable extends AcademicYears
    with TableInfo<$AcademicYearsTable, AcademicYear> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AcademicYearsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    label,
    startDate,
    endDate,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'academic_years';
  @override
  VerificationContext validateIntegrity(
    Insertable<AcademicYear> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    } else if (isInserting) {
      context.missing(_endDateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AcademicYear map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AcademicYear(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $AcademicYearsTable createAlias(String alias) {
    return $AcademicYearsTable(attachedDatabase, alias);
  }
}

class AcademicYear extends DataClass implements Insertable<AcademicYear> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String label;
  final DateTime startDate;
  final DateTime endDate;
  final String status;
  const AcademicYear({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.label,
    required this.startDate,
    required this.endDate,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['label'] = Variable<String>(label);
    map['start_date'] = Variable<DateTime>(startDate);
    map['end_date'] = Variable<DateTime>(endDate);
    map['status'] = Variable<String>(status);
    return map;
  }

  AcademicYearsCompanion toCompanion(bool nullToAbsent) {
    return AcademicYearsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      label: Value(label),
      startDate: Value(startDate),
      endDate: Value(endDate),
      status: Value(status),
    );
  }

  factory AcademicYear.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AcademicYear(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      label: serializer.fromJson<String>(json['label']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'label': serializer.toJson<String>(label),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'status': serializer.toJson<String>(status),
    };
  }

  AcademicYear copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? label,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
  }) => AcademicYear(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    label: label ?? this.label,
    startDate: startDate ?? this.startDate,
    endDate: endDate ?? this.endDate,
    status: status ?? this.status,
  );
  AcademicYear copyWithCompanion(AcademicYearsCompanion data) {
    return AcademicYear(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      label: data.label.present ? data.label.value : this.label,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AcademicYear(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('label: $label, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    label,
    startDate,
    endDate,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AcademicYear &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.label == this.label &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.status == this.status);
}

class AcademicYearsCompanion extends UpdateCompanion<AcademicYear> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> label;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<String> status;
  final Value<int> rowid;
  const AcademicYearsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.label = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AcademicYearsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String label,
    required DateTime startDate,
    required DateTime endDate,
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       label = Value(label),
       startDate = Value(startDate),
       endDate = Value(endDate);
  static Insertable<AcademicYear> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? label,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (label != null) 'label': label,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AcademicYearsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? label,
    Value<DateTime>? startDate,
    Value<DateTime>? endDate,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return AcademicYearsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      label: label ?? this.label,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AcademicYearsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('label: $label, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SchoolTermsTable extends SchoolTerms
    with TableInfo<$SchoolTermsTable, SchoolTerm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchoolTermsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _academicYearIdMeta = const VerificationMeta(
    'academicYearId',
  );
  @override
  late final GeneratedColumn<String> academicYearId = GeneratedColumn<String>(
    'academic_year_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES academic_years (id)',
    ),
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    academicYearId,
    number,
    name,
    startDate,
    endDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'school_terms';
  @override
  VerificationContext validateIntegrity(
    Insertable<SchoolTerm> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('academic_year_id')) {
      context.handle(
        _academicYearIdMeta,
        academicYearId.isAcceptableOrUnknown(
          data['academic_year_id']!,
          _academicYearIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_academicYearIdMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    } else if (isInserting) {
      context.missing(_endDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {academicYearId, number},
  ];
  @override
  SchoolTerm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SchoolTerm(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      academicYearId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}academic_year_id'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      )!,
    );
  }

  @override
  $SchoolTermsTable createAlias(String alias) {
    return $SchoolTermsTable(attachedDatabase, alias);
  }
}

class SchoolTerm extends DataClass implements Insertable<SchoolTerm> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String academicYearId;
  final int number;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  const SchoolTerm({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.academicYearId,
    required this.number,
    required this.name,
    required this.startDate,
    required this.endDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['academic_year_id'] = Variable<String>(academicYearId);
    map['number'] = Variable<int>(number);
    map['name'] = Variable<String>(name);
    map['start_date'] = Variable<DateTime>(startDate);
    map['end_date'] = Variable<DateTime>(endDate);
    return map;
  }

  SchoolTermsCompanion toCompanion(bool nullToAbsent) {
    return SchoolTermsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      academicYearId: Value(academicYearId),
      number: Value(number),
      name: Value(name),
      startDate: Value(startDate),
      endDate: Value(endDate),
    );
  }

  factory SchoolTerm.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SchoolTerm(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      academicYearId: serializer.fromJson<String>(json['academicYearId']),
      number: serializer.fromJson<int>(json['number']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'academicYearId': serializer.toJson<String>(academicYearId),
      'number': serializer.toJson<int>(number),
      'name': serializer.toJson<String>(name),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
    };
  }

  SchoolTerm copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? academicYearId,
    int? number,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
  }) => SchoolTerm(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    academicYearId: academicYearId ?? this.academicYearId,
    number: number ?? this.number,
    name: name ?? this.name,
    startDate: startDate ?? this.startDate,
    endDate: endDate ?? this.endDate,
  );
  SchoolTerm copyWithCompanion(SchoolTermsCompanion data) {
    return SchoolTerm(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      academicYearId: data.academicYearId.present
          ? data.academicYearId.value
          : this.academicYearId,
      number: data.number.present ? data.number.value : this.number,
      name: data.name.present ? data.name.value : this.name,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SchoolTerm(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('number: $number, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    academicYearId,
    number,
    name,
    startDate,
    endDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SchoolTerm &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.academicYearId == this.academicYearId &&
          other.number == this.number &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate);
}

class SchoolTermsCompanion extends UpdateCompanion<SchoolTerm> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> academicYearId;
  final Value<int> number;
  final Value<String> name;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<int> rowid;
  const SchoolTermsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.academicYearId = const Value.absent(),
    this.number = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SchoolTermsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String academicYearId,
    required int number,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       academicYearId = Value(academicYearId),
       number = Value(number),
       name = Value(name),
       startDate = Value(startDate),
       endDate = Value(endDate);
  static Insertable<SchoolTerm> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? academicYearId,
    Expression<int>? number,
    Expression<String>? name,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (academicYearId != null) 'academic_year_id': academicYearId,
      if (number != null) 'number': number,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SchoolTermsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? academicYearId,
    Value<int>? number,
    Value<String>? name,
    Value<DateTime>? startDate,
    Value<DateTime>? endDate,
    Value<int>? rowid,
  }) {
    return SchoolTermsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      academicYearId: academicYearId ?? this.academicYearId,
      number: number ?? this.number,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (academicYearId.present) {
      map['academic_year_id'] = Variable<String>(academicYearId.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchoolTermsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('number: $number, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClassroomsTable extends Classrooms
    with TableInfo<$ClassroomsTable, Classroom> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClassroomsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _archivedAtMeta = const VerificationMeta(
    'archivedAt',
  );
  @override
  late final GeneratedColumn<DateTime> archivedAt = GeneratedColumn<DateTime>(
    'archived_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    name,
    level,
    description,
    archivedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'classrooms';
  @override
  VerificationContext validateIntegrity(
    Insertable<Classroom> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('archived_at')) {
      context.handle(
        _archivedAtMeta,
        archivedAt.isAcceptableOrUnknown(data['archived_at']!, _archivedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Classroom map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Classroom(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}level'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      archivedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}archived_at'],
      ),
    );
  }

  @override
  $ClassroomsTable createAlias(String alias) {
    return $ClassroomsTable(attachedDatabase, alias);
  }
}

class Classroom extends DataClass implements Insertable<Classroom> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String name;
  final String level;
  final String description;
  final DateTime? archivedAt;
  const Classroom({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.name,
    required this.level,
    required this.description,
    this.archivedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['name'] = Variable<String>(name);
    map['level'] = Variable<String>(level);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || archivedAt != null) {
      map['archived_at'] = Variable<DateTime>(archivedAt);
    }
    return map;
  }

  ClassroomsCompanion toCompanion(bool nullToAbsent) {
    return ClassroomsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      name: Value(name),
      level: Value(level),
      description: Value(description),
      archivedAt: archivedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(archivedAt),
    );
  }

  factory Classroom.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Classroom(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      name: serializer.fromJson<String>(json['name']),
      level: serializer.fromJson<String>(json['level']),
      description: serializer.fromJson<String>(json['description']),
      archivedAt: serializer.fromJson<DateTime?>(json['archivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'name': serializer.toJson<String>(name),
      'level': serializer.toJson<String>(level),
      'description': serializer.toJson<String>(description),
      'archivedAt': serializer.toJson<DateTime?>(archivedAt),
    };
  }

  Classroom copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? name,
    String? level,
    String? description,
    Value<DateTime?> archivedAt = const Value.absent(),
  }) => Classroom(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    name: name ?? this.name,
    level: level ?? this.level,
    description: description ?? this.description,
    archivedAt: archivedAt.present ? archivedAt.value : this.archivedAt,
  );
  Classroom copyWithCompanion(ClassroomsCompanion data) {
    return Classroom(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      name: data.name.present ? data.name.value : this.name,
      level: data.level.present ? data.level.value : this.level,
      description: data.description.present
          ? data.description.value
          : this.description,
      archivedAt: data.archivedAt.present
          ? data.archivedAt.value
          : this.archivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Classroom(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('name: $name, ')
          ..write('level: $level, ')
          ..write('description: $description, ')
          ..write('archivedAt: $archivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    name,
    level,
    description,
    archivedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Classroom &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.name == this.name &&
          other.level == this.level &&
          other.description == this.description &&
          other.archivedAt == this.archivedAt);
}

class ClassroomsCompanion extends UpdateCompanion<Classroom> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> name;
  final Value<String> level;
  final Value<String> description;
  final Value<DateTime?> archivedAt;
  final Value<int> rowid;
  const ClassroomsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.name = const Value.absent(),
    this.level = const Value.absent(),
    this.description = const Value.absent(),
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClassroomsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String name,
    this.level = const Value.absent(),
    this.description = const Value.absent(),
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Classroom> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? name,
    Expression<String>? level,
    Expression<String>? description,
    Expression<DateTime>? archivedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (name != null) 'name': name,
      if (level != null) 'level': level,
      if (description != null) 'description': description,
      if (archivedAt != null) 'archived_at': archivedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClassroomsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? name,
    Value<String>? level,
    Value<String>? description,
    Value<DateTime?>? archivedAt,
    Value<int>? rowid,
  }) {
    return ClassroomsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      name: name ?? this.name,
      level: level ?? this.level,
      description: description ?? this.description,
      archivedAt: archivedAt ?? this.archivedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(level.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (archivedAt.present) {
      map['archived_at'] = Variable<DateTime>(archivedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClassroomsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('name: $name, ')
          ..write('level: $level, ')
          ..write('description: $description, ')
          ..write('archivedAt: $archivedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StudentsTable extends Students with TableInfo<$StudentsTable, Student> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _matriculeMeta = const VerificationMeta(
    'matricule',
  );
  @override
  late final GeneratedColumn<String> matricule = GeneratedColumn<String>(
    'matricule',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _birthDateMeta = const VerificationMeta(
    'birthDate',
  );
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
    'birth_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _archivedAtMeta = const VerificationMeta(
    'archivedAt',
  );
  @override
  late final GeneratedColumn<DateTime> archivedAt = GeneratedColumn<DateTime>(
    'archived_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    matricule,
    firstName,
    lastName,
    birthDate,
    gender,
    archivedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'students';
  @override
  VerificationContext validateIntegrity(
    Insertable<Student> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('matricule')) {
      context.handle(
        _matriculeMeta,
        matricule.isAcceptableOrUnknown(data['matricule']!, _matriculeMeta),
      );
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(
        _birthDateMeta,
        birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    }
    if (data.containsKey('archived_at')) {
      context.handle(
        _archivedAtMeta,
        archivedAt.isAcceptableOrUnknown(data['archived_at']!, _archivedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Student map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Student(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      matricule: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}matricule'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      )!,
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      )!,
      birthDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}birth_date'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      archivedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}archived_at'],
      ),
    );
  }

  @override
  $StudentsTable createAlias(String alias) {
    return $StudentsTable(attachedDatabase, alias);
  }
}

class Student extends DataClass implements Insertable<Student> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String matricule;
  final String firstName;
  final String lastName;
  final DateTime? birthDate;
  final String gender;
  final DateTime? archivedAt;
  const Student({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.matricule,
    required this.firstName,
    required this.lastName,
    this.birthDate,
    required this.gender,
    this.archivedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['matricule'] = Variable<String>(matricule);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    map['gender'] = Variable<String>(gender);
    if (!nullToAbsent || archivedAt != null) {
      map['archived_at'] = Variable<DateTime>(archivedAt);
    }
    return map;
  }

  StudentsCompanion toCompanion(bool nullToAbsent) {
    return StudentsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      matricule: Value(matricule),
      firstName: Value(firstName),
      lastName: Value(lastName),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      gender: Value(gender),
      archivedAt: archivedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(archivedAt),
    );
  }

  factory Student.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Student(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      matricule: serializer.fromJson<String>(json['matricule']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      gender: serializer.fromJson<String>(json['gender']),
      archivedAt: serializer.fromJson<DateTime?>(json['archivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'matricule': serializer.toJson<String>(matricule),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'gender': serializer.toJson<String>(gender),
      'archivedAt': serializer.toJson<DateTime?>(archivedAt),
    };
  }

  Student copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? matricule,
    String? firstName,
    String? lastName,
    Value<DateTime?> birthDate = const Value.absent(),
    String? gender,
    Value<DateTime?> archivedAt = const Value.absent(),
  }) => Student(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    matricule: matricule ?? this.matricule,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    birthDate: birthDate.present ? birthDate.value : this.birthDate,
    gender: gender ?? this.gender,
    archivedAt: archivedAt.present ? archivedAt.value : this.archivedAt,
  );
  Student copyWithCompanion(StudentsCompanion data) {
    return Student(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      matricule: data.matricule.present ? data.matricule.value : this.matricule,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      gender: data.gender.present ? data.gender.value : this.gender,
      archivedAt: data.archivedAt.present
          ? data.archivedAt.value
          : this.archivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Student(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('matricule: $matricule, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('archivedAt: $archivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    matricule,
    firstName,
    lastName,
    birthDate,
    gender,
    archivedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Student &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.matricule == this.matricule &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.birthDate == this.birthDate &&
          other.gender == this.gender &&
          other.archivedAt == this.archivedAt);
}

class StudentsCompanion extends UpdateCompanion<Student> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> matricule;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<DateTime?> birthDate;
  final Value<String> gender;
  final Value<DateTime?> archivedAt;
  final Value<int> rowid;
  const StudentsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.matricule = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StudentsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.matricule = const Value.absent(),
    required String firstName,
    required String lastName,
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       firstName = Value(firstName),
       lastName = Value(lastName);
  static Insertable<Student> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? matricule,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<DateTime>? birthDate,
    Expression<String>? gender,
    Expression<DateTime>? archivedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (matricule != null) 'matricule': matricule,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (birthDate != null) 'birth_date': birthDate,
      if (gender != null) 'gender': gender,
      if (archivedAt != null) 'archived_at': archivedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StudentsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? matricule,
    Value<String>? firstName,
    Value<String>? lastName,
    Value<DateTime?>? birthDate,
    Value<String>? gender,
    Value<DateTime?>? archivedAt,
    Value<int>? rowid,
  }) {
    return StudentsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      matricule: matricule ?? this.matricule,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      archivedAt: archivedAt ?? this.archivedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (matricule.present) {
      map['matricule'] = Variable<String>(matricule.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (archivedAt.present) {
      map['archived_at'] = Variable<DateTime>(archivedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('matricule: $matricule, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('archivedAt: $archivedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EnrollmentsTable extends Enrollments
    with TableInfo<$EnrollmentsTable, Enrollment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EnrollmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _studentIdMeta = const VerificationMeta(
    'studentId',
  );
  @override
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
    'student_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES students (id)',
    ),
  );
  static const VerificationMeta _classroomIdMeta = const VerificationMeta(
    'classroomId',
  );
  @override
  late final GeneratedColumn<String> classroomId = GeneratedColumn<String>(
    'classroom_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES classrooms (id)',
    ),
  );
  static const VerificationMeta _academicYearIdMeta = const VerificationMeta(
    'academicYearId',
  );
  @override
  late final GeneratedColumn<String> academicYearId = GeneratedColumn<String>(
    'academic_year_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES academic_years (id)',
    ),
  );
  static const VerificationMeta _enrollmentDateMeta = const VerificationMeta(
    'enrollmentDate',
  );
  @override
  late final GeneratedColumn<DateTime> enrollmentDate =
      GeneratedColumn<DateTime>(
        'enrollment_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _exitDateMeta = const VerificationMeta(
    'exitDate',
  );
  @override
  late final GeneratedColumn<DateTime> exitDate = GeneratedColumn<DateTime>(
    'exit_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    studentId,
    classroomId,
    academicYearId,
    enrollmentDate,
    exitDate,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'enrollments';
  @override
  VerificationContext validateIntegrity(
    Insertable<Enrollment> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('student_id')) {
      context.handle(
        _studentIdMeta,
        studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta),
      );
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('classroom_id')) {
      context.handle(
        _classroomIdMeta,
        classroomId.isAcceptableOrUnknown(
          data['classroom_id']!,
          _classroomIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_classroomIdMeta);
    }
    if (data.containsKey('academic_year_id')) {
      context.handle(
        _academicYearIdMeta,
        academicYearId.isAcceptableOrUnknown(
          data['academic_year_id']!,
          _academicYearIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_academicYearIdMeta);
    }
    if (data.containsKey('enrollment_date')) {
      context.handle(
        _enrollmentDateMeta,
        enrollmentDate.isAcceptableOrUnknown(
          data['enrollment_date']!,
          _enrollmentDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enrollmentDateMeta);
    }
    if (data.containsKey('exit_date')) {
      context.handle(
        _exitDateMeta,
        exitDate.isAcceptableOrUnknown(data['exit_date']!, _exitDateMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Enrollment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Enrollment(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      studentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}student_id'],
      )!,
      classroomId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classroom_id'],
      )!,
      academicYearId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}academic_year_id'],
      )!,
      enrollmentDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}enrollment_date'],
      )!,
      exitDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}exit_date'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $EnrollmentsTable createAlias(String alias) {
    return $EnrollmentsTable(attachedDatabase, alias);
  }
}

class Enrollment extends DataClass implements Insertable<Enrollment> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String studentId;
  final String classroomId;
  final String academicYearId;
  final DateTime enrollmentDate;
  final DateTime? exitDate;
  final String status;
  const Enrollment({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.studentId,
    required this.classroomId,
    required this.academicYearId,
    required this.enrollmentDate,
    this.exitDate,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['student_id'] = Variable<String>(studentId);
    map['classroom_id'] = Variable<String>(classroomId);
    map['academic_year_id'] = Variable<String>(academicYearId);
    map['enrollment_date'] = Variable<DateTime>(enrollmentDate);
    if (!nullToAbsent || exitDate != null) {
      map['exit_date'] = Variable<DateTime>(exitDate);
    }
    map['status'] = Variable<String>(status);
    return map;
  }

  EnrollmentsCompanion toCompanion(bool nullToAbsent) {
    return EnrollmentsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      studentId: Value(studentId),
      classroomId: Value(classroomId),
      academicYearId: Value(academicYearId),
      enrollmentDate: Value(enrollmentDate),
      exitDate: exitDate == null && nullToAbsent
          ? const Value.absent()
          : Value(exitDate),
      status: Value(status),
    );
  }

  factory Enrollment.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Enrollment(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      studentId: serializer.fromJson<String>(json['studentId']),
      classroomId: serializer.fromJson<String>(json['classroomId']),
      academicYearId: serializer.fromJson<String>(json['academicYearId']),
      enrollmentDate: serializer.fromJson<DateTime>(json['enrollmentDate']),
      exitDate: serializer.fromJson<DateTime?>(json['exitDate']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'studentId': serializer.toJson<String>(studentId),
      'classroomId': serializer.toJson<String>(classroomId),
      'academicYearId': serializer.toJson<String>(academicYearId),
      'enrollmentDate': serializer.toJson<DateTime>(enrollmentDate),
      'exitDate': serializer.toJson<DateTime?>(exitDate),
      'status': serializer.toJson<String>(status),
    };
  }

  Enrollment copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? studentId,
    String? classroomId,
    String? academicYearId,
    DateTime? enrollmentDate,
    Value<DateTime?> exitDate = const Value.absent(),
    String? status,
  }) => Enrollment(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    studentId: studentId ?? this.studentId,
    classroomId: classroomId ?? this.classroomId,
    academicYearId: academicYearId ?? this.academicYearId,
    enrollmentDate: enrollmentDate ?? this.enrollmentDate,
    exitDate: exitDate.present ? exitDate.value : this.exitDate,
    status: status ?? this.status,
  );
  Enrollment copyWithCompanion(EnrollmentsCompanion data) {
    return Enrollment(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      classroomId: data.classroomId.present
          ? data.classroomId.value
          : this.classroomId,
      academicYearId: data.academicYearId.present
          ? data.academicYearId.value
          : this.academicYearId,
      enrollmentDate: data.enrollmentDate.present
          ? data.enrollmentDate.value
          : this.enrollmentDate,
      exitDate: data.exitDate.present ? data.exitDate.value : this.exitDate,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Enrollment(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('studentId: $studentId, ')
          ..write('classroomId: $classroomId, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('enrollmentDate: $enrollmentDate, ')
          ..write('exitDate: $exitDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    studentId,
    classroomId,
    academicYearId,
    enrollmentDate,
    exitDate,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Enrollment &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.studentId == this.studentId &&
          other.classroomId == this.classroomId &&
          other.academicYearId == this.academicYearId &&
          other.enrollmentDate == this.enrollmentDate &&
          other.exitDate == this.exitDate &&
          other.status == this.status);
}

class EnrollmentsCompanion extends UpdateCompanion<Enrollment> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> studentId;
  final Value<String> classroomId;
  final Value<String> academicYearId;
  final Value<DateTime> enrollmentDate;
  final Value<DateTime?> exitDate;
  final Value<String> status;
  final Value<int> rowid;
  const EnrollmentsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.studentId = const Value.absent(),
    this.classroomId = const Value.absent(),
    this.academicYearId = const Value.absent(),
    this.enrollmentDate = const Value.absent(),
    this.exitDate = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EnrollmentsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String studentId,
    required String classroomId,
    required String academicYearId,
    required DateTime enrollmentDate,
    this.exitDate = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       studentId = Value(studentId),
       classroomId = Value(classroomId),
       academicYearId = Value(academicYearId),
       enrollmentDate = Value(enrollmentDate);
  static Insertable<Enrollment> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? studentId,
    Expression<String>? classroomId,
    Expression<String>? academicYearId,
    Expression<DateTime>? enrollmentDate,
    Expression<DateTime>? exitDate,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (studentId != null) 'student_id': studentId,
      if (classroomId != null) 'classroom_id': classroomId,
      if (academicYearId != null) 'academic_year_id': academicYearId,
      if (enrollmentDate != null) 'enrollment_date': enrollmentDate,
      if (exitDate != null) 'exit_date': exitDate,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EnrollmentsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? studentId,
    Value<String>? classroomId,
    Value<String>? academicYearId,
    Value<DateTime>? enrollmentDate,
    Value<DateTime?>? exitDate,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return EnrollmentsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      studentId: studentId ?? this.studentId,
      classroomId: classroomId ?? this.classroomId,
      academicYearId: academicYearId ?? this.academicYearId,
      enrollmentDate: enrollmentDate ?? this.enrollmentDate,
      exitDate: exitDate ?? this.exitDate,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (classroomId.present) {
      map['classroom_id'] = Variable<String>(classroomId.value);
    }
    if (academicYearId.present) {
      map['academic_year_id'] = Variable<String>(academicYearId.value);
    }
    if (enrollmentDate.present) {
      map['enrollment_date'] = Variable<DateTime>(enrollmentDate.value);
    }
    if (exitDate.present) {
      map['exit_date'] = Variable<DateTime>(exitDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnrollmentsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('studentId: $studentId, ')
          ..write('classroomId: $classroomId, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('enrollmentDate: $enrollmentDate, ')
          ..write('exitDate: $exitDate, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SubjectsTable extends Subjects with TableInfo<$SubjectsTable, Subject> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubjectsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    name,
    description,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'subjects';
  @override
  VerificationContext validateIntegrity(
    Insertable<Subject> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Subject map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Subject(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
    );
  }

  @override
  $SubjectsTable createAlias(String alias) {
    return $SubjectsTable(attachedDatabase, alias);
  }
}

class Subject extends DataClass implements Insertable<Subject> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String name;
  final String description;
  const Subject({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.name,
    required this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    return map;
  }

  SubjectsCompanion toCompanion(bool nullToAbsent) {
    return SubjectsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      name: Value(name),
      description: Value(description),
    );
  }

  factory Subject.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Subject(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
    };
  }

  Subject copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? name,
    String? description,
  }) => Subject(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    name: name ?? this.name,
    description: description ?? this.description,
  );
  Subject copyWithCompanion(SubjectsCompanion data) {
    return Subject(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Subject(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, deletedAt, name, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Subject &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.name == this.name &&
          other.description == this.description);
}

class SubjectsCompanion extends UpdateCompanion<Subject> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> name;
  final Value<String> description;
  final Value<int> rowid;
  const SubjectsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SubjectsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Subject> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SubjectsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? name,
    Value<String>? description,
    Value<int>? rowid,
  }) {
    return SubjectsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      name: name ?? this.name,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TeachingAssignmentsTable extends TeachingAssignments
    with TableInfo<$TeachingAssignmentsTable, TeachingAssignment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeachingAssignmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _classroomIdMeta = const VerificationMeta(
    'classroomId',
  );
  @override
  late final GeneratedColumn<String> classroomId = GeneratedColumn<String>(
    'classroom_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES classrooms (id)',
    ),
  );
  static const VerificationMeta _subjectIdMeta = const VerificationMeta(
    'subjectId',
  );
  @override
  late final GeneratedColumn<String> subjectId = GeneratedColumn<String>(
    'subject_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES subjects (id)',
    ),
  );
  static const VerificationMeta _academicYearIdMeta = const VerificationMeta(
    'academicYearId',
  );
  @override
  late final GeneratedColumn<String> academicYearId = GeneratedColumn<String>(
    'academic_year_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES academic_years (id)',
    ),
  );
  static const VerificationMeta _coefficientMeta = const VerificationMeta(
    'coefficient',
  );
  @override
  late final GeneratedColumn<double> coefficient = GeneratedColumn<double>(
    'coefficient',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    classroomId,
    subjectId,
    academicYearId,
    coefficient,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'teaching_assignments';
  @override
  VerificationContext validateIntegrity(
    Insertable<TeachingAssignment> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('classroom_id')) {
      context.handle(
        _classroomIdMeta,
        classroomId.isAcceptableOrUnknown(
          data['classroom_id']!,
          _classroomIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_classroomIdMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(
        _subjectIdMeta,
        subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('academic_year_id')) {
      context.handle(
        _academicYearIdMeta,
        academicYearId.isAcceptableOrUnknown(
          data['academic_year_id']!,
          _academicYearIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_academicYearIdMeta);
    }
    if (data.containsKey('coefficient')) {
      context.handle(
        _coefficientMeta,
        coefficient.isAcceptableOrUnknown(
          data['coefficient']!,
          _coefficientMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {classroomId, subjectId, academicYearId},
  ];
  @override
  TeachingAssignment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TeachingAssignment(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      classroomId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classroom_id'],
      )!,
      subjectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subject_id'],
      )!,
      academicYearId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}academic_year_id'],
      )!,
      coefficient: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}coefficient'],
      )!,
    );
  }

  @override
  $TeachingAssignmentsTable createAlias(String alias) {
    return $TeachingAssignmentsTable(attachedDatabase, alias);
  }
}

class TeachingAssignment extends DataClass
    implements Insertable<TeachingAssignment> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String classroomId;
  final String subjectId;
  final String academicYearId;
  final double coefficient;
  const TeachingAssignment({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.classroomId,
    required this.subjectId,
    required this.academicYearId,
    required this.coefficient,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['classroom_id'] = Variable<String>(classroomId);
    map['subject_id'] = Variable<String>(subjectId);
    map['academic_year_id'] = Variable<String>(academicYearId);
    map['coefficient'] = Variable<double>(coefficient);
    return map;
  }

  TeachingAssignmentsCompanion toCompanion(bool nullToAbsent) {
    return TeachingAssignmentsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      classroomId: Value(classroomId),
      subjectId: Value(subjectId),
      academicYearId: Value(academicYearId),
      coefficient: Value(coefficient),
    );
  }

  factory TeachingAssignment.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeachingAssignment(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      classroomId: serializer.fromJson<String>(json['classroomId']),
      subjectId: serializer.fromJson<String>(json['subjectId']),
      academicYearId: serializer.fromJson<String>(json['academicYearId']),
      coefficient: serializer.fromJson<double>(json['coefficient']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'classroomId': serializer.toJson<String>(classroomId),
      'subjectId': serializer.toJson<String>(subjectId),
      'academicYearId': serializer.toJson<String>(academicYearId),
      'coefficient': serializer.toJson<double>(coefficient),
    };
  }

  TeachingAssignment copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? classroomId,
    String? subjectId,
    String? academicYearId,
    double? coefficient,
  }) => TeachingAssignment(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    classroomId: classroomId ?? this.classroomId,
    subjectId: subjectId ?? this.subjectId,
    academicYearId: academicYearId ?? this.academicYearId,
    coefficient: coefficient ?? this.coefficient,
  );
  TeachingAssignment copyWithCompanion(TeachingAssignmentsCompanion data) {
    return TeachingAssignment(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      classroomId: data.classroomId.present
          ? data.classroomId.value
          : this.classroomId,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      academicYearId: data.academicYearId.present
          ? data.academicYearId.value
          : this.academicYearId,
      coefficient: data.coefficient.present
          ? data.coefficient.value
          : this.coefficient,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TeachingAssignment(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('classroomId: $classroomId, ')
          ..write('subjectId: $subjectId, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('coefficient: $coefficient')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    classroomId,
    subjectId,
    academicYearId,
    coefficient,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeachingAssignment &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.classroomId == this.classroomId &&
          other.subjectId == this.subjectId &&
          other.academicYearId == this.academicYearId &&
          other.coefficient == this.coefficient);
}

class TeachingAssignmentsCompanion extends UpdateCompanion<TeachingAssignment> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> classroomId;
  final Value<String> subjectId;
  final Value<String> academicYearId;
  final Value<double> coefficient;
  final Value<int> rowid;
  const TeachingAssignmentsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.classroomId = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.academicYearId = const Value.absent(),
    this.coefficient = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TeachingAssignmentsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String classroomId,
    required String subjectId,
    required String academicYearId,
    this.coefficient = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       classroomId = Value(classroomId),
       subjectId = Value(subjectId),
       academicYearId = Value(academicYearId);
  static Insertable<TeachingAssignment> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? classroomId,
    Expression<String>? subjectId,
    Expression<String>? academicYearId,
    Expression<double>? coefficient,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (classroomId != null) 'classroom_id': classroomId,
      if (subjectId != null) 'subject_id': subjectId,
      if (academicYearId != null) 'academic_year_id': academicYearId,
      if (coefficient != null) 'coefficient': coefficient,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TeachingAssignmentsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? classroomId,
    Value<String>? subjectId,
    Value<String>? academicYearId,
    Value<double>? coefficient,
    Value<int>? rowid,
  }) {
    return TeachingAssignmentsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      classroomId: classroomId ?? this.classroomId,
      subjectId: subjectId ?? this.subjectId,
      academicYearId: academicYearId ?? this.academicYearId,
      coefficient: coefficient ?? this.coefficient,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (classroomId.present) {
      map['classroom_id'] = Variable<String>(classroomId.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<String>(subjectId.value);
    }
    if (academicYearId.present) {
      map['academic_year_id'] = Variable<String>(academicYearId.value);
    }
    if (coefficient.present) {
      map['coefficient'] = Variable<double>(coefficient.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeachingAssignmentsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('classroomId: $classroomId, ')
          ..write('subjectId: $subjectId, ')
          ..write('academicYearId: $academicYearId, ')
          ..write('coefficient: $coefficient, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AttendanceSessionsTable extends AttendanceSessions
    with TableInfo<$AttendanceSessionsTable, AttendanceSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttendanceSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _teachingAssignmentIdMeta =
      const VerificationMeta('teachingAssignmentId');
  @override
  late final GeneratedColumn<String> teachingAssignmentId =
      GeneratedColumn<String>(
        'teaching_assignment_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES teaching_assignments (id)',
        ),
      );
  static const VerificationMeta _schoolTermIdMeta = const VerificationMeta(
    'schoolTermId',
  );
  @override
  late final GeneratedColumn<String> schoolTermId = GeneratedColumn<String>(
    'school_term_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES school_terms (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _topicMeta = const VerificationMeta('topic');
  @override
  late final GeneratedColumn<String> topic = GeneratedColumn<String>(
    'topic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('draft'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    teachingAssignmentId,
    schoolTermId,
    date,
    topic,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attendance_sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<AttendanceSession> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('teaching_assignment_id')) {
      context.handle(
        _teachingAssignmentIdMeta,
        teachingAssignmentId.isAcceptableOrUnknown(
          data['teaching_assignment_id']!,
          _teachingAssignmentIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_teachingAssignmentIdMeta);
    }
    if (data.containsKey('school_term_id')) {
      context.handle(
        _schoolTermIdMeta,
        schoolTermId.isAcceptableOrUnknown(
          data['school_term_id']!,
          _schoolTermIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_schoolTermIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('topic')) {
      context.handle(
        _topicMeta,
        topic.isAcceptableOrUnknown(data['topic']!, _topicMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AttendanceSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttendanceSession(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      teachingAssignmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}teaching_assignment_id'],
      )!,
      schoolTermId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}school_term_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      topic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}topic'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $AttendanceSessionsTable createAlias(String alias) {
    return $AttendanceSessionsTable(attachedDatabase, alias);
  }
}

class AttendanceSession extends DataClass
    implements Insertable<AttendanceSession> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String teachingAssignmentId;
  final String schoolTermId;
  final DateTime date;
  final String topic;
  final String status;
  const AttendanceSession({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.teachingAssignmentId,
    required this.schoolTermId,
    required this.date,
    required this.topic,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['teaching_assignment_id'] = Variable<String>(teachingAssignmentId);
    map['school_term_id'] = Variable<String>(schoolTermId);
    map['date'] = Variable<DateTime>(date);
    map['topic'] = Variable<String>(topic);
    map['status'] = Variable<String>(status);
    return map;
  }

  AttendanceSessionsCompanion toCompanion(bool nullToAbsent) {
    return AttendanceSessionsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      teachingAssignmentId: Value(teachingAssignmentId),
      schoolTermId: Value(schoolTermId),
      date: Value(date),
      topic: Value(topic),
      status: Value(status),
    );
  }

  factory AttendanceSession.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttendanceSession(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      teachingAssignmentId: serializer.fromJson<String>(
        json['teachingAssignmentId'],
      ),
      schoolTermId: serializer.fromJson<String>(json['schoolTermId']),
      date: serializer.fromJson<DateTime>(json['date']),
      topic: serializer.fromJson<String>(json['topic']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'teachingAssignmentId': serializer.toJson<String>(teachingAssignmentId),
      'schoolTermId': serializer.toJson<String>(schoolTermId),
      'date': serializer.toJson<DateTime>(date),
      'topic': serializer.toJson<String>(topic),
      'status': serializer.toJson<String>(status),
    };
  }

  AttendanceSession copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? teachingAssignmentId,
    String? schoolTermId,
    DateTime? date,
    String? topic,
    String? status,
  }) => AttendanceSession(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    teachingAssignmentId: teachingAssignmentId ?? this.teachingAssignmentId,
    schoolTermId: schoolTermId ?? this.schoolTermId,
    date: date ?? this.date,
    topic: topic ?? this.topic,
    status: status ?? this.status,
  );
  AttendanceSession copyWithCompanion(AttendanceSessionsCompanion data) {
    return AttendanceSession(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      teachingAssignmentId: data.teachingAssignmentId.present
          ? data.teachingAssignmentId.value
          : this.teachingAssignmentId,
      schoolTermId: data.schoolTermId.present
          ? data.schoolTermId.value
          : this.schoolTermId,
      date: data.date.present ? data.date.value : this.date,
      topic: data.topic.present ? data.topic.value : this.topic,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceSession(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('teachingAssignmentId: $teachingAssignmentId, ')
          ..write('schoolTermId: $schoolTermId, ')
          ..write('date: $date, ')
          ..write('topic: $topic, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    teachingAssignmentId,
    schoolTermId,
    date,
    topic,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttendanceSession &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.teachingAssignmentId == this.teachingAssignmentId &&
          other.schoolTermId == this.schoolTermId &&
          other.date == this.date &&
          other.topic == this.topic &&
          other.status == this.status);
}

class AttendanceSessionsCompanion extends UpdateCompanion<AttendanceSession> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> teachingAssignmentId;
  final Value<String> schoolTermId;
  final Value<DateTime> date;
  final Value<String> topic;
  final Value<String> status;
  final Value<int> rowid;
  const AttendanceSessionsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.teachingAssignmentId = const Value.absent(),
    this.schoolTermId = const Value.absent(),
    this.date = const Value.absent(),
    this.topic = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AttendanceSessionsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String teachingAssignmentId,
    required String schoolTermId,
    required DateTime date,
    this.topic = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       teachingAssignmentId = Value(teachingAssignmentId),
       schoolTermId = Value(schoolTermId),
       date = Value(date);
  static Insertable<AttendanceSession> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? teachingAssignmentId,
    Expression<String>? schoolTermId,
    Expression<DateTime>? date,
    Expression<String>? topic,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (teachingAssignmentId != null)
        'teaching_assignment_id': teachingAssignmentId,
      if (schoolTermId != null) 'school_term_id': schoolTermId,
      if (date != null) 'date': date,
      if (topic != null) 'topic': topic,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AttendanceSessionsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? teachingAssignmentId,
    Value<String>? schoolTermId,
    Value<DateTime>? date,
    Value<String>? topic,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return AttendanceSessionsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      teachingAssignmentId: teachingAssignmentId ?? this.teachingAssignmentId,
      schoolTermId: schoolTermId ?? this.schoolTermId,
      date: date ?? this.date,
      topic: topic ?? this.topic,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (teachingAssignmentId.present) {
      map['teaching_assignment_id'] = Variable<String>(
        teachingAssignmentId.value,
      );
    }
    if (schoolTermId.present) {
      map['school_term_id'] = Variable<String>(schoolTermId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (topic.present) {
      map['topic'] = Variable<String>(topic.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceSessionsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('teachingAssignmentId: $teachingAssignmentId, ')
          ..write('schoolTermId: $schoolTermId, ')
          ..write('date: $date, ')
          ..write('topic: $topic, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AttendanceRecordsTable extends AttendanceRecords
    with TableInfo<$AttendanceRecordsTable, AttendanceRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttendanceRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _attendanceSessionIdMeta =
      const VerificationMeta('attendanceSessionId');
  @override
  late final GeneratedColumn<String> attendanceSessionId =
      GeneratedColumn<String>(
        'attendance_session_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES attendance_sessions (id)',
        ),
      );
  static const VerificationMeta _studentIdMeta = const VerificationMeta(
    'studentId',
  );
  @override
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
    'student_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES students (id)',
    ),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('present'),
  );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    attendanceSessionId,
    studentId,
    status,
    comment,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attendance_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<AttendanceRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('attendance_session_id')) {
      context.handle(
        _attendanceSessionIdMeta,
        attendanceSessionId.isAcceptableOrUnknown(
          data['attendance_session_id']!,
          _attendanceSessionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attendanceSessionIdMeta);
    }
    if (data.containsKey('student_id')) {
      context.handle(
        _studentIdMeta,
        studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta),
      );
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {attendanceSessionId, studentId},
  ];
  @override
  AttendanceRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttendanceRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      attendanceSessionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}attendance_session_id'],
      )!,
      studentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}student_id'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      )!,
    );
  }

  @override
  $AttendanceRecordsTable createAlias(String alias) {
    return $AttendanceRecordsTable(attachedDatabase, alias);
  }
}

class AttendanceRecord extends DataClass
    implements Insertable<AttendanceRecord> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String attendanceSessionId;
  final String studentId;
  final String status;
  final String comment;
  const AttendanceRecord({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.attendanceSessionId,
    required this.studentId,
    required this.status,
    required this.comment,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['attendance_session_id'] = Variable<String>(attendanceSessionId);
    map['student_id'] = Variable<String>(studentId);
    map['status'] = Variable<String>(status);
    map['comment'] = Variable<String>(comment);
    return map;
  }

  AttendanceRecordsCompanion toCompanion(bool nullToAbsent) {
    return AttendanceRecordsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      attendanceSessionId: Value(attendanceSessionId),
      studentId: Value(studentId),
      status: Value(status),
      comment: Value(comment),
    );
  }

  factory AttendanceRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttendanceRecord(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      attendanceSessionId: serializer.fromJson<String>(
        json['attendanceSessionId'],
      ),
      studentId: serializer.fromJson<String>(json['studentId']),
      status: serializer.fromJson<String>(json['status']),
      comment: serializer.fromJson<String>(json['comment']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'attendanceSessionId': serializer.toJson<String>(attendanceSessionId),
      'studentId': serializer.toJson<String>(studentId),
      'status': serializer.toJson<String>(status),
      'comment': serializer.toJson<String>(comment),
    };
  }

  AttendanceRecord copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? attendanceSessionId,
    String? studentId,
    String? status,
    String? comment,
  }) => AttendanceRecord(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    attendanceSessionId: attendanceSessionId ?? this.attendanceSessionId,
    studentId: studentId ?? this.studentId,
    status: status ?? this.status,
    comment: comment ?? this.comment,
  );
  AttendanceRecord copyWithCompanion(AttendanceRecordsCompanion data) {
    return AttendanceRecord(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      attendanceSessionId: data.attendanceSessionId.present
          ? data.attendanceSessionId.value
          : this.attendanceSessionId,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      status: data.status.present ? data.status.value : this.status,
      comment: data.comment.present ? data.comment.value : this.comment,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceRecord(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('attendanceSessionId: $attendanceSessionId, ')
          ..write('studentId: $studentId, ')
          ..write('status: $status, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    attendanceSessionId,
    studentId,
    status,
    comment,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttendanceRecord &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.attendanceSessionId == this.attendanceSessionId &&
          other.studentId == this.studentId &&
          other.status == this.status &&
          other.comment == this.comment);
}

class AttendanceRecordsCompanion extends UpdateCompanion<AttendanceRecord> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> attendanceSessionId;
  final Value<String> studentId;
  final Value<String> status;
  final Value<String> comment;
  final Value<int> rowid;
  const AttendanceRecordsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.attendanceSessionId = const Value.absent(),
    this.studentId = const Value.absent(),
    this.status = const Value.absent(),
    this.comment = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AttendanceRecordsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String attendanceSessionId,
    required String studentId,
    this.status = const Value.absent(),
    this.comment = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       attendanceSessionId = Value(attendanceSessionId),
       studentId = Value(studentId);
  static Insertable<AttendanceRecord> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? attendanceSessionId,
    Expression<String>? studentId,
    Expression<String>? status,
    Expression<String>? comment,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (attendanceSessionId != null)
        'attendance_session_id': attendanceSessionId,
      if (studentId != null) 'student_id': studentId,
      if (status != null) 'status': status,
      if (comment != null) 'comment': comment,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AttendanceRecordsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? attendanceSessionId,
    Value<String>? studentId,
    Value<String>? status,
    Value<String>? comment,
    Value<int>? rowid,
  }) {
    return AttendanceRecordsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      attendanceSessionId: attendanceSessionId ?? this.attendanceSessionId,
      studentId: studentId ?? this.studentId,
      status: status ?? this.status,
      comment: comment ?? this.comment,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (attendanceSessionId.present) {
      map['attendance_session_id'] = Variable<String>(
        attendanceSessionId.value,
      );
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceRecordsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('attendanceSessionId: $attendanceSessionId, ')
          ..write('studentId: $studentId, ')
          ..write('status: $status, ')
          ..write('comment: $comment, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EvaluationsTable extends Evaluations
    with TableInfo<$EvaluationsTable, Evaluation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EvaluationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _teachingAssignmentIdMeta =
      const VerificationMeta('teachingAssignmentId');
  @override
  late final GeneratedColumn<String> teachingAssignmentId =
      GeneratedColumn<String>(
        'teaching_assignment_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES teaching_assignments (id)',
        ),
      );
  static const VerificationMeta _schoolTermIdMeta = const VerificationMeta(
    'schoolTermId',
  );
  @override
  late final GeneratedColumn<String> schoolTermId = GeneratedColumn<String>(
    'school_term_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES school_terms (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('quiz'),
  );
  static const VerificationMeta _maxScoreMeta = const VerificationMeta(
    'maxScore',
  );
  @override
  late final GeneratedColumn<double> maxScore = GeneratedColumn<double>(
    'max_score',
    aliasedName,
    false,
    check: () => ComparableExpr(maxScore).isBiggerThanValue(0),
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _coefficientMeta = const VerificationMeta(
    'coefficient',
  );
  @override
  late final GeneratedColumn<double> coefficient = GeneratedColumn<double>(
    'coefficient',
    aliasedName,
    false,
    check: () => ComparableExpr(coefficient).isBiggerThanValue(0),
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _evaluationDateMeta = const VerificationMeta(
    'evaluationDate',
  );
  @override
  late final GeneratedColumn<DateTime> evaluationDate =
      GeneratedColumn<DateTime>(
        'evaluation_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    teachingAssignmentId,
    schoolTermId,
    title,
    type,
    maxScore,
    coefficient,
    evaluationDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'evaluations';
  @override
  VerificationContext validateIntegrity(
    Insertable<Evaluation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('teaching_assignment_id')) {
      context.handle(
        _teachingAssignmentIdMeta,
        teachingAssignmentId.isAcceptableOrUnknown(
          data['teaching_assignment_id']!,
          _teachingAssignmentIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_teachingAssignmentIdMeta);
    }
    if (data.containsKey('school_term_id')) {
      context.handle(
        _schoolTermIdMeta,
        schoolTermId.isAcceptableOrUnknown(
          data['school_term_id']!,
          _schoolTermIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_schoolTermIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    }
    if (data.containsKey('max_score')) {
      context.handle(
        _maxScoreMeta,
        maxScore.isAcceptableOrUnknown(data['max_score']!, _maxScoreMeta),
      );
    } else if (isInserting) {
      context.missing(_maxScoreMeta);
    }
    if (data.containsKey('coefficient')) {
      context.handle(
        _coefficientMeta,
        coefficient.isAcceptableOrUnknown(
          data['coefficient']!,
          _coefficientMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_coefficientMeta);
    }
    if (data.containsKey('evaluation_date')) {
      context.handle(
        _evaluationDateMeta,
        evaluationDate.isAcceptableOrUnknown(
          data['evaluation_date']!,
          _evaluationDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_evaluationDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Evaluation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Evaluation(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      teachingAssignmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}teaching_assignment_id'],
      )!,
      schoolTermId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}school_term_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      maxScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_score'],
      )!,
      coefficient: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}coefficient'],
      )!,
      evaluationDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}evaluation_date'],
      )!,
    );
  }

  @override
  $EvaluationsTable createAlias(String alias) {
    return $EvaluationsTable(attachedDatabase, alias);
  }
}

class Evaluation extends DataClass implements Insertable<Evaluation> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String teachingAssignmentId;
  final String schoolTermId;
  final String title;
  final String type;
  final double maxScore;
  final double coefficient;
  final DateTime evaluationDate;
  const Evaluation({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.teachingAssignmentId,
    required this.schoolTermId,
    required this.title,
    required this.type,
    required this.maxScore,
    required this.coefficient,
    required this.evaluationDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['teaching_assignment_id'] = Variable<String>(teachingAssignmentId);
    map['school_term_id'] = Variable<String>(schoolTermId);
    map['title'] = Variable<String>(title);
    map['type'] = Variable<String>(type);
    map['max_score'] = Variable<double>(maxScore);
    map['coefficient'] = Variable<double>(coefficient);
    map['evaluation_date'] = Variable<DateTime>(evaluationDate);
    return map;
  }

  EvaluationsCompanion toCompanion(bool nullToAbsent) {
    return EvaluationsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      teachingAssignmentId: Value(teachingAssignmentId),
      schoolTermId: Value(schoolTermId),
      title: Value(title),
      type: Value(type),
      maxScore: Value(maxScore),
      coefficient: Value(coefficient),
      evaluationDate: Value(evaluationDate),
    );
  }

  factory Evaluation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Evaluation(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      teachingAssignmentId: serializer.fromJson<String>(
        json['teachingAssignmentId'],
      ),
      schoolTermId: serializer.fromJson<String>(json['schoolTermId']),
      title: serializer.fromJson<String>(json['title']),
      type: serializer.fromJson<String>(json['type']),
      maxScore: serializer.fromJson<double>(json['maxScore']),
      coefficient: serializer.fromJson<double>(json['coefficient']),
      evaluationDate: serializer.fromJson<DateTime>(json['evaluationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'teachingAssignmentId': serializer.toJson<String>(teachingAssignmentId),
      'schoolTermId': serializer.toJson<String>(schoolTermId),
      'title': serializer.toJson<String>(title),
      'type': serializer.toJson<String>(type),
      'maxScore': serializer.toJson<double>(maxScore),
      'coefficient': serializer.toJson<double>(coefficient),
      'evaluationDate': serializer.toJson<DateTime>(evaluationDate),
    };
  }

  Evaluation copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? teachingAssignmentId,
    String? schoolTermId,
    String? title,
    String? type,
    double? maxScore,
    double? coefficient,
    DateTime? evaluationDate,
  }) => Evaluation(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    teachingAssignmentId: teachingAssignmentId ?? this.teachingAssignmentId,
    schoolTermId: schoolTermId ?? this.schoolTermId,
    title: title ?? this.title,
    type: type ?? this.type,
    maxScore: maxScore ?? this.maxScore,
    coefficient: coefficient ?? this.coefficient,
    evaluationDate: evaluationDate ?? this.evaluationDate,
  );
  Evaluation copyWithCompanion(EvaluationsCompanion data) {
    return Evaluation(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      teachingAssignmentId: data.teachingAssignmentId.present
          ? data.teachingAssignmentId.value
          : this.teachingAssignmentId,
      schoolTermId: data.schoolTermId.present
          ? data.schoolTermId.value
          : this.schoolTermId,
      title: data.title.present ? data.title.value : this.title,
      type: data.type.present ? data.type.value : this.type,
      maxScore: data.maxScore.present ? data.maxScore.value : this.maxScore,
      coefficient: data.coefficient.present
          ? data.coefficient.value
          : this.coefficient,
      evaluationDate: data.evaluationDate.present
          ? data.evaluationDate.value
          : this.evaluationDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Evaluation(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('teachingAssignmentId: $teachingAssignmentId, ')
          ..write('schoolTermId: $schoolTermId, ')
          ..write('title: $title, ')
          ..write('type: $type, ')
          ..write('maxScore: $maxScore, ')
          ..write('coefficient: $coefficient, ')
          ..write('evaluationDate: $evaluationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    teachingAssignmentId,
    schoolTermId,
    title,
    type,
    maxScore,
    coefficient,
    evaluationDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Evaluation &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.teachingAssignmentId == this.teachingAssignmentId &&
          other.schoolTermId == this.schoolTermId &&
          other.title == this.title &&
          other.type == this.type &&
          other.maxScore == this.maxScore &&
          other.coefficient == this.coefficient &&
          other.evaluationDate == this.evaluationDate);
}

class EvaluationsCompanion extends UpdateCompanion<Evaluation> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> teachingAssignmentId;
  final Value<String> schoolTermId;
  final Value<String> title;
  final Value<String> type;
  final Value<double> maxScore;
  final Value<double> coefficient;
  final Value<DateTime> evaluationDate;
  final Value<int> rowid;
  const EvaluationsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.teachingAssignmentId = const Value.absent(),
    this.schoolTermId = const Value.absent(),
    this.title = const Value.absent(),
    this.type = const Value.absent(),
    this.maxScore = const Value.absent(),
    this.coefficient = const Value.absent(),
    this.evaluationDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EvaluationsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String teachingAssignmentId,
    required String schoolTermId,
    required String title,
    this.type = const Value.absent(),
    required double maxScore,
    required double coefficient,
    required DateTime evaluationDate,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       teachingAssignmentId = Value(teachingAssignmentId),
       schoolTermId = Value(schoolTermId),
       title = Value(title),
       maxScore = Value(maxScore),
       coefficient = Value(coefficient),
       evaluationDate = Value(evaluationDate);
  static Insertable<Evaluation> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? teachingAssignmentId,
    Expression<String>? schoolTermId,
    Expression<String>? title,
    Expression<String>? type,
    Expression<double>? maxScore,
    Expression<double>? coefficient,
    Expression<DateTime>? evaluationDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (teachingAssignmentId != null)
        'teaching_assignment_id': teachingAssignmentId,
      if (schoolTermId != null) 'school_term_id': schoolTermId,
      if (title != null) 'title': title,
      if (type != null) 'type': type,
      if (maxScore != null) 'max_score': maxScore,
      if (coefficient != null) 'coefficient': coefficient,
      if (evaluationDate != null) 'evaluation_date': evaluationDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EvaluationsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? teachingAssignmentId,
    Value<String>? schoolTermId,
    Value<String>? title,
    Value<String>? type,
    Value<double>? maxScore,
    Value<double>? coefficient,
    Value<DateTime>? evaluationDate,
    Value<int>? rowid,
  }) {
    return EvaluationsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      teachingAssignmentId: teachingAssignmentId ?? this.teachingAssignmentId,
      schoolTermId: schoolTermId ?? this.schoolTermId,
      title: title ?? this.title,
      type: type ?? this.type,
      maxScore: maxScore ?? this.maxScore,
      coefficient: coefficient ?? this.coefficient,
      evaluationDate: evaluationDate ?? this.evaluationDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (teachingAssignmentId.present) {
      map['teaching_assignment_id'] = Variable<String>(
        teachingAssignmentId.value,
      );
    }
    if (schoolTermId.present) {
      map['school_term_id'] = Variable<String>(schoolTermId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (maxScore.present) {
      map['max_score'] = Variable<double>(maxScore.value);
    }
    if (coefficient.present) {
      map['coefficient'] = Variable<double>(coefficient.value);
    }
    if (evaluationDate.present) {
      map['evaluation_date'] = Variable<DateTime>(evaluationDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EvaluationsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('teachingAssignmentId: $teachingAssignmentId, ')
          ..write('schoolTermId: $schoolTermId, ')
          ..write('title: $title, ')
          ..write('type: $type, ')
          ..write('maxScore: $maxScore, ')
          ..write('coefficient: $coefficient, ')
          ..write('evaluationDate: $evaluationDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GradesTable extends Grades with TableInfo<$GradesTable, Grade> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GradesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _evaluationIdMeta = const VerificationMeta(
    'evaluationId',
  );
  @override
  late final GeneratedColumn<String> evaluationId = GeneratedColumn<String>(
    'evaluation_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES evaluations (id)',
    ),
  );
  static const VerificationMeta _studentIdMeta = const VerificationMeta(
    'studentId',
  );
  @override
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
    'student_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES students (id)',
    ),
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
    'score',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    evaluationId,
    studentId,
    score,
    comment,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'grades';
  @override
  VerificationContext validateIntegrity(
    Insertable<Grade> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('evaluation_id')) {
      context.handle(
        _evaluationIdMeta,
        evaluationId.isAcceptableOrUnknown(
          data['evaluation_id']!,
          _evaluationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_evaluationIdMeta);
    }
    if (data.containsKey('student_id')) {
      context.handle(
        _studentIdMeta,
        studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta),
      );
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {evaluationId, studentId},
  ];
  @override
  Grade map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Grade(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      evaluationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}evaluation_id'],
      )!,
      studentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}student_id'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}score'],
      ),
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $GradesTable createAlias(String alias) {
    return $GradesTable(attachedDatabase, alias);
  }
}

class Grade extends DataClass implements Insertable<Grade> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String evaluationId;
  final String studentId;
  final double? score;
  final String comment;
  final String status;
  const Grade({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.evaluationId,
    required this.studentId,
    this.score,
    required this.comment,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['evaluation_id'] = Variable<String>(evaluationId);
    map['student_id'] = Variable<String>(studentId);
    if (!nullToAbsent || score != null) {
      map['score'] = Variable<double>(score);
    }
    map['comment'] = Variable<String>(comment);
    map['status'] = Variable<String>(status);
    return map;
  }

  GradesCompanion toCompanion(bool nullToAbsent) {
    return GradesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      evaluationId: Value(evaluationId),
      studentId: Value(studentId),
      score: score == null && nullToAbsent
          ? const Value.absent()
          : Value(score),
      comment: Value(comment),
      status: Value(status),
    );
  }

  factory Grade.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Grade(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      evaluationId: serializer.fromJson<String>(json['evaluationId']),
      studentId: serializer.fromJson<String>(json['studentId']),
      score: serializer.fromJson<double?>(json['score']),
      comment: serializer.fromJson<String>(json['comment']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'evaluationId': serializer.toJson<String>(evaluationId),
      'studentId': serializer.toJson<String>(studentId),
      'score': serializer.toJson<double?>(score),
      'comment': serializer.toJson<String>(comment),
      'status': serializer.toJson<String>(status),
    };
  }

  Grade copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? evaluationId,
    String? studentId,
    Value<double?> score = const Value.absent(),
    String? comment,
    String? status,
  }) => Grade(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    evaluationId: evaluationId ?? this.evaluationId,
    studentId: studentId ?? this.studentId,
    score: score.present ? score.value : this.score,
    comment: comment ?? this.comment,
    status: status ?? this.status,
  );
  Grade copyWithCompanion(GradesCompanion data) {
    return Grade(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      evaluationId: data.evaluationId.present
          ? data.evaluationId.value
          : this.evaluationId,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      score: data.score.present ? data.score.value : this.score,
      comment: data.comment.present ? data.comment.value : this.comment,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Grade(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('evaluationId: $evaluationId, ')
          ..write('studentId: $studentId, ')
          ..write('score: $score, ')
          ..write('comment: $comment, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    evaluationId,
    studentId,
    score,
    comment,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Grade &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.evaluationId == this.evaluationId &&
          other.studentId == this.studentId &&
          other.score == this.score &&
          other.comment == this.comment &&
          other.status == this.status);
}

class GradesCompanion extends UpdateCompanion<Grade> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> evaluationId;
  final Value<String> studentId;
  final Value<double?> score;
  final Value<String> comment;
  final Value<String> status;
  final Value<int> rowid;
  const GradesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.evaluationId = const Value.absent(),
    this.studentId = const Value.absent(),
    this.score = const Value.absent(),
    this.comment = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GradesCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String evaluationId,
    required String studentId,
    this.score = const Value.absent(),
    this.comment = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       evaluationId = Value(evaluationId),
       studentId = Value(studentId);
  static Insertable<Grade> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? evaluationId,
    Expression<String>? studentId,
    Expression<double>? score,
    Expression<String>? comment,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (evaluationId != null) 'evaluation_id': evaluationId,
      if (studentId != null) 'student_id': studentId,
      if (score != null) 'score': score,
      if (comment != null) 'comment': comment,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GradesCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? evaluationId,
    Value<String>? studentId,
    Value<double?>? score,
    Value<String>? comment,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return GradesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      evaluationId: evaluationId ?? this.evaluationId,
      studentId: studentId ?? this.studentId,
      score: score ?? this.score,
      comment: comment ?? this.comment,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (evaluationId.present) {
      map['evaluation_id'] = Variable<String>(evaluationId.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GradesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('evaluationId: $evaluationId, ')
          ..write('studentId: $studentId, ')
          ..write('score: $score, ')
          ..write('comment: $comment, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GradeAuditsTable extends GradeAudits
    with TableInfo<$GradeAuditsTable, GradeAudit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GradeAuditsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gradeIdMeta = const VerificationMeta(
    'gradeId',
  );
  @override
  late final GeneratedColumn<String> gradeId = GeneratedColumn<String>(
    'grade_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES grades (id)',
    ),
  );
  static const VerificationMeta _oldScoreMeta = const VerificationMeta(
    'oldScore',
  );
  @override
  late final GeneratedColumn<double> oldScore = GeneratedColumn<double>(
    'old_score',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _newScoreMeta = const VerificationMeta(
    'newScore',
  );
  @override
  late final GeneratedColumn<double> newScore = GeneratedColumn<double>(
    'new_score',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _oldStatusMeta = const VerificationMeta(
    'oldStatus',
  );
  @override
  late final GeneratedColumn<String> oldStatus = GeneratedColumn<String>(
    'old_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _newStatusMeta = const VerificationMeta(
    'newStatus',
  );
  @override
  late final GeneratedColumn<String> newStatus = GeneratedColumn<String>(
    'new_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    gradeId,
    oldScore,
    newScore,
    oldStatus,
    newStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'grade_audits';
  @override
  VerificationContext validateIntegrity(
    Insertable<GradeAudit> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    if (data.containsKey('grade_id')) {
      context.handle(
        _gradeIdMeta,
        gradeId.isAcceptableOrUnknown(data['grade_id']!, _gradeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_gradeIdMeta);
    }
    if (data.containsKey('old_score')) {
      context.handle(
        _oldScoreMeta,
        oldScore.isAcceptableOrUnknown(data['old_score']!, _oldScoreMeta),
      );
    }
    if (data.containsKey('new_score')) {
      context.handle(
        _newScoreMeta,
        newScore.isAcceptableOrUnknown(data['new_score']!, _newScoreMeta),
      );
    }
    if (data.containsKey('old_status')) {
      context.handle(
        _oldStatusMeta,
        oldStatus.isAcceptableOrUnknown(data['old_status']!, _oldStatusMeta),
      );
    } else if (isInserting) {
      context.missing(_oldStatusMeta);
    }
    if (data.containsKey('new_status')) {
      context.handle(
        _newStatusMeta,
        newStatus.isAcceptableOrUnknown(data['new_status']!, _newStatusMeta),
      );
    } else if (isInserting) {
      context.missing(_newStatusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GradeAudit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GradeAudit(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deleted_at'],
      ),
      gradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}grade_id'],
      )!,
      oldScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}old_score'],
      ),
      newScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}new_score'],
      ),
      oldStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}old_status'],
      )!,
      newStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}new_status'],
      )!,
    );
  }

  @override
  $GradeAuditsTable createAlias(String alias) {
    return $GradeAuditsTable(attachedDatabase, alias);
  }
}

class GradeAudit extends DataClass implements Insertable<GradeAudit> {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final String gradeId;
  final double? oldScore;
  final double? newScore;
  final String oldStatus;
  final String newStatus;
  const GradeAudit({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.gradeId,
    this.oldScore,
    this.newScore,
    required this.oldStatus,
    required this.newStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    map['grade_id'] = Variable<String>(gradeId);
    if (!nullToAbsent || oldScore != null) {
      map['old_score'] = Variable<double>(oldScore);
    }
    if (!nullToAbsent || newScore != null) {
      map['new_score'] = Variable<double>(newScore);
    }
    map['old_status'] = Variable<String>(oldStatus);
    map['new_status'] = Variable<String>(newStatus);
    return map;
  }

  GradeAuditsCompanion toCompanion(bool nullToAbsent) {
    return GradeAuditsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
      gradeId: Value(gradeId),
      oldScore: oldScore == null && nullToAbsent
          ? const Value.absent()
          : Value(oldScore),
      newScore: newScore == null && nullToAbsent
          ? const Value.absent()
          : Value(newScore),
      oldStatus: Value(oldStatus),
      newStatus: Value(newStatus),
    );
  }

  factory GradeAudit.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GradeAudit(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
      gradeId: serializer.fromJson<String>(json['gradeId']),
      oldScore: serializer.fromJson<double?>(json['oldScore']),
      newScore: serializer.fromJson<double?>(json['newScore']),
      oldStatus: serializer.fromJson<String>(json['oldStatus']),
      newStatus: serializer.fromJson<String>(json['newStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
      'gradeId': serializer.toJson<String>(gradeId),
      'oldScore': serializer.toJson<double?>(oldScore),
      'newScore': serializer.toJson<double?>(newScore),
      'oldStatus': serializer.toJson<String>(oldStatus),
      'newStatus': serializer.toJson<String>(newStatus),
    };
  }

  GradeAudit copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> deletedAt = const Value.absent(),
    String? gradeId,
    Value<double?> oldScore = const Value.absent(),
    Value<double?> newScore = const Value.absent(),
    String? oldStatus,
    String? newStatus,
  }) => GradeAudit(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
    gradeId: gradeId ?? this.gradeId,
    oldScore: oldScore.present ? oldScore.value : this.oldScore,
    newScore: newScore.present ? newScore.value : this.newScore,
    oldStatus: oldStatus ?? this.oldStatus,
    newStatus: newStatus ?? this.newStatus,
  );
  GradeAudit copyWithCompanion(GradeAuditsCompanion data) {
    return GradeAudit(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
      gradeId: data.gradeId.present ? data.gradeId.value : this.gradeId,
      oldScore: data.oldScore.present ? data.oldScore.value : this.oldScore,
      newScore: data.newScore.present ? data.newScore.value : this.newScore,
      oldStatus: data.oldStatus.present ? data.oldStatus.value : this.oldStatus,
      newStatus: data.newStatus.present ? data.newStatus.value : this.newStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GradeAudit(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('gradeId: $gradeId, ')
          ..write('oldScore: $oldScore, ')
          ..write('newScore: $newScore, ')
          ..write('oldStatus: $oldStatus, ')
          ..write('newStatus: $newStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    updatedAt,
    deletedAt,
    gradeId,
    oldScore,
    newScore,
    oldStatus,
    newStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GradeAudit &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt &&
          other.gradeId == this.gradeId &&
          other.oldScore == this.oldScore &&
          other.newScore == this.newScore &&
          other.oldStatus == this.oldStatus &&
          other.newStatus == this.newStatus);
}

class GradeAuditsCompanion extends UpdateCompanion<GradeAudit> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> gradeId;
  final Value<double?> oldScore;
  final Value<double?> newScore;
  final Value<String> oldStatus;
  final Value<String> newStatus;
  final Value<int> rowid;
  const GradeAuditsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.oldScore = const Value.absent(),
    this.newScore = const Value.absent(),
    this.oldStatus = const Value.absent(),
    this.newStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GradeAuditsCompanion.insert({
    required String id,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String gradeId,
    this.oldScore = const Value.absent(),
    this.newScore = const Value.absent(),
    required String oldStatus,
    required String newStatus,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       gradeId = Value(gradeId),
       oldStatus = Value(oldStatus),
       newStatus = Value(newStatus);
  static Insertable<GradeAudit> custom({
    Expression<String>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<String>? gradeId,
    Expression<double>? oldScore,
    Expression<double>? newScore,
    Expression<String>? oldStatus,
    Expression<String>? newStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (gradeId != null) 'grade_id': gradeId,
      if (oldScore != null) 'old_score': oldScore,
      if (newScore != null) 'new_score': newScore,
      if (oldStatus != null) 'old_status': oldStatus,
      if (newStatus != null) 'new_status': newStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GradeAuditsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? gradeId,
    Value<double?>? oldScore,
    Value<double?>? newScore,
    Value<String>? oldStatus,
    Value<String>? newStatus,
    Value<int>? rowid,
  }) {
    return GradeAuditsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      gradeId: gradeId ?? this.gradeId,
      oldScore: oldScore ?? this.oldScore,
      newScore: newScore ?? this.newScore,
      oldStatus: oldStatus ?? this.oldStatus,
      newStatus: newStatus ?? this.newStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (gradeId.present) {
      map['grade_id'] = Variable<String>(gradeId.value);
    }
    if (oldScore.present) {
      map['old_score'] = Variable<double>(oldScore.value);
    }
    if (newScore.present) {
      map['new_score'] = Variable<double>(newScore.value);
    }
    if (oldStatus.present) {
      map['old_status'] = Variable<String>(oldStatus.value);
    }
    if (newStatus.present) {
      map['new_status'] = Variable<String>(newStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GradeAuditsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('gradeId: $gradeId, ')
          ..write('oldScore: $oldScore, ')
          ..write('newScore: $newScore, ')
          ..write('oldStatus: $oldStatus, ')
          ..write('newStatus: $newStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AcademicYearsTable academicYears = $AcademicYearsTable(this);
  late final $SchoolTermsTable schoolTerms = $SchoolTermsTable(this);
  late final $ClassroomsTable classrooms = $ClassroomsTable(this);
  late final $StudentsTable students = $StudentsTable(this);
  late final $EnrollmentsTable enrollments = $EnrollmentsTable(this);
  late final $SubjectsTable subjects = $SubjectsTable(this);
  late final $TeachingAssignmentsTable teachingAssignments =
      $TeachingAssignmentsTable(this);
  late final $AttendanceSessionsTable attendanceSessions =
      $AttendanceSessionsTable(this);
  late final $AttendanceRecordsTable attendanceRecords =
      $AttendanceRecordsTable(this);
  late final $EvaluationsTable evaluations = $EvaluationsTable(this);
  late final $GradesTable grades = $GradesTable(this);
  late final $GradeAuditsTable gradeAudits = $GradeAuditsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    academicYears,
    schoolTerms,
    classrooms,
    students,
    enrollments,
    subjects,
    teachingAssignments,
    attendanceSessions,
    attendanceRecords,
    evaluations,
    grades,
    gradeAudits,
  ];
}

typedef $$AcademicYearsTableCreateCompanionBuilder =
    AcademicYearsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String label,
      required DateTime startDate,
      required DateTime endDate,
      Value<String> status,
      Value<int> rowid,
    });
typedef $$AcademicYearsTableUpdateCompanionBuilder =
    AcademicYearsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> label,
      Value<DateTime> startDate,
      Value<DateTime> endDate,
      Value<String> status,
      Value<int> rowid,
    });

final class $$AcademicYearsTableReferences
    extends BaseReferences<_$AppDatabase, $AcademicYearsTable, AcademicYear> {
  $$AcademicYearsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$SchoolTermsTable, List<SchoolTerm>>
  _schoolTermsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.schoolTerms,
    aliasName: 'academic_years__id__school_terms__academic_year_id',
  );

  $$SchoolTermsTableProcessedTableManager get schoolTermsRefs {
    final manager = $$SchoolTermsTableTableManager(
      $_db,
      $_db.schoolTerms,
    ).filter((f) => f.academicYearId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_schoolTermsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EnrollmentsTable, List<Enrollment>>
  _enrollmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.enrollments,
    aliasName: 'academic_years__id__enrollments__academic_year_id',
  );

  $$EnrollmentsTableProcessedTableManager get enrollmentsRefs {
    final manager = $$EnrollmentsTableTableManager(
      $_db,
      $_db.enrollments,
    ).filter((f) => f.academicYearId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_enrollmentsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $TeachingAssignmentsTable,
    List<TeachingAssignment>
  >
  _teachingAssignmentsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.teachingAssignments,
        aliasName: 'academic_years__id__teaching_assignments__academic_year_id',
      );

  $$TeachingAssignmentsTableProcessedTableManager get teachingAssignmentsRefs {
    final manager = $$TeachingAssignmentsTableTableManager(
      $_db,
      $_db.teachingAssignments,
    ).filter((f) => f.academicYearId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _teachingAssignmentsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AcademicYearsTableFilterComposer
    extends Composer<_$AppDatabase, $AcademicYearsTable> {
  $$AcademicYearsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> schoolTermsRefs(
    Expression<bool> Function($$SchoolTermsTableFilterComposer f) f,
  ) {
    final $$SchoolTermsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.academicYearId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableFilterComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> enrollmentsRefs(
    Expression<bool> Function($$EnrollmentsTableFilterComposer f) f,
  ) {
    final $$EnrollmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.academicYearId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableFilterComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> teachingAssignmentsRefs(
    Expression<bool> Function($$TeachingAssignmentsTableFilterComposer f) f,
  ) {
    final $$TeachingAssignmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.teachingAssignments,
      getReferencedColumn: (t) => t.academicYearId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TeachingAssignmentsTableFilterComposer(
            $db: $db,
            $table: $db.teachingAssignments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AcademicYearsTableOrderingComposer
    extends Composer<_$AppDatabase, $AcademicYearsTable> {
  $$AcademicYearsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AcademicYearsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AcademicYearsTable> {
  $$AcademicYearsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  Expression<T> schoolTermsRefs<T extends Object>(
    Expression<T> Function($$SchoolTermsTableAnnotationComposer a) f,
  ) {
    final $$SchoolTermsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.academicYearId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableAnnotationComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> enrollmentsRefs<T extends Object>(
    Expression<T> Function($$EnrollmentsTableAnnotationComposer a) f,
  ) {
    final $$EnrollmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.academicYearId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> teachingAssignmentsRefs<T extends Object>(
    Expression<T> Function($$TeachingAssignmentsTableAnnotationComposer a) f,
  ) {
    final $$TeachingAssignmentsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.academicYearId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableAnnotationComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AcademicYearsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AcademicYearsTable,
          AcademicYear,
          $$AcademicYearsTableFilterComposer,
          $$AcademicYearsTableOrderingComposer,
          $$AcademicYearsTableAnnotationComposer,
          $$AcademicYearsTableCreateCompanionBuilder,
          $$AcademicYearsTableUpdateCompanionBuilder,
          (AcademicYear, $$AcademicYearsTableReferences),
          AcademicYear,
          PrefetchHooks Function({
            bool schoolTermsRefs,
            bool enrollmentsRefs,
            bool teachingAssignmentsRefs,
          })
        > {
  $$AcademicYearsTableTableManager(_$AppDatabase db, $AcademicYearsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AcademicYearsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AcademicYearsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AcademicYearsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime> endDate = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AcademicYearsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                label: label,
                startDate: startDate,
                endDate: endDate,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String label,
                required DateTime startDate,
                required DateTime endDate,
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AcademicYearsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                label: label,
                startDate: startDate,
                endDate: endDate,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AcademicYearsTable, AcademicYear>(table),
                  $$AcademicYearsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                schoolTermsRefs = false,
                enrollmentsRefs = false,
                teachingAssignmentsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (schoolTermsRefs) db.schoolTerms,
                    if (enrollmentsRefs) db.enrollments,
                    if (teachingAssignmentsRefs) db.teachingAssignments,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (schoolTermsRefs)
                        await $_getPrefetchedDataByColumns<
                          AcademicYear,
                          $AcademicYearsTable,
                          SchoolTerm,
                          $SchoolTermsTable
                        >(
                          currentTable: table,
                          referencedTable: $$AcademicYearsTableReferences
                              ._schoolTermsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AcademicYearsTableReferences(
                                db,
                                table,
                                p0,
                              ).schoolTermsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'academic_year_id',
                          typedResults: items,
                        ),
                      if (enrollmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          AcademicYear,
                          $AcademicYearsTable,
                          Enrollment,
                          $EnrollmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$AcademicYearsTableReferences
                              ._enrollmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AcademicYearsTableReferences(
                                db,
                                table,
                                p0,
                              ).enrollmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'academic_year_id',
                          typedResults: items,
                        ),
                      if (teachingAssignmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          AcademicYear,
                          $AcademicYearsTable,
                          TeachingAssignment,
                          $TeachingAssignmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$AcademicYearsTableReferences
                              ._teachingAssignmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AcademicYearsTableReferences(
                                db,
                                table,
                                p0,
                              ).teachingAssignmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'academic_year_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AcademicYearsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AcademicYearsTable,
      AcademicYear,
      $$AcademicYearsTableFilterComposer,
      $$AcademicYearsTableOrderingComposer,
      $$AcademicYearsTableAnnotationComposer,
      $$AcademicYearsTableCreateCompanionBuilder,
      $$AcademicYearsTableUpdateCompanionBuilder,
      (AcademicYear, $$AcademicYearsTableReferences),
      AcademicYear,
      PrefetchHooks Function({
        bool schoolTermsRefs,
        bool enrollmentsRefs,
        bool teachingAssignmentsRefs,
      })
    >;
typedef $$SchoolTermsTableCreateCompanionBuilder =
    SchoolTermsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String academicYearId,
      required int number,
      required String name,
      required DateTime startDate,
      required DateTime endDate,
      Value<int> rowid,
    });
typedef $$SchoolTermsTableUpdateCompanionBuilder =
    SchoolTermsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> academicYearId,
      Value<int> number,
      Value<String> name,
      Value<DateTime> startDate,
      Value<DateTime> endDate,
      Value<int> rowid,
    });

final class $$SchoolTermsTableReferences
    extends BaseReferences<_$AppDatabase, $SchoolTermsTable, SchoolTerm> {
  $$SchoolTermsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AcademicYearsTable _academicYearIdTable(_$AppDatabase db) => db
      .academicYears
      .createAlias('school_terms__academic_year_id__academic_years__id');

  $$AcademicYearsTableProcessedTableManager get academicYearId {
    final $_column = $_itemColumn<String>('academic_year_id')!;

    final manager = $$AcademicYearsTableTableManager(
      $_db,
      $_db.academicYears,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_academicYearIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$AttendanceSessionsTable, List<AttendanceSession>>
  _attendanceSessionsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.attendanceSessions,
        aliasName: 'school_terms__id__attendance_sessions__school_term_id',
      );

  $$AttendanceSessionsTableProcessedTableManager get attendanceSessionsRefs {
    final manager = $$AttendanceSessionsTableTableManager(
      $_db,
      $_db.attendanceSessions,
    ).filter((f) => f.schoolTermId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _attendanceSessionsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvaluationsTable, List<Evaluation>>
  _evaluationsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evaluations,
    aliasName: 'school_terms__id__evaluations__school_term_id',
  );

  $$EvaluationsTableProcessedTableManager get evaluationsRefs {
    final manager = $$EvaluationsTableTableManager(
      $_db,
      $_db.evaluations,
    ).filter((f) => f.schoolTermId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_evaluationsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SchoolTermsTableFilterComposer
    extends Composer<_$AppDatabase, $SchoolTermsTable> {
  $$SchoolTermsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  $$AcademicYearsTableFilterComposer get academicYearId {
    final $$AcademicYearsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableFilterComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> attendanceSessionsRefs(
    Expression<bool> Function($$AttendanceSessionsTableFilterComposer f) f,
  ) {
    final $$AttendanceSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.attendanceSessions,
      getReferencedColumn: (t) => t.schoolTermId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceSessionsTableFilterComposer(
            $db: $db,
            $table: $db.attendanceSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> evaluationsRefs(
    Expression<bool> Function($$EvaluationsTableFilterComposer f) f,
  ) {
    final $$EvaluationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.schoolTermId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableFilterComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SchoolTermsTableOrderingComposer
    extends Composer<_$AppDatabase, $SchoolTermsTable> {
  $$SchoolTermsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  $$AcademicYearsTableOrderingComposer get academicYearId {
    final $$AcademicYearsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableOrderingComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SchoolTermsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SchoolTermsTable> {
  $$SchoolTermsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  $$AcademicYearsTableAnnotationComposer get academicYearId {
    final $$AcademicYearsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableAnnotationComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> attendanceSessionsRefs<T extends Object>(
    Expression<T> Function($$AttendanceSessionsTableAnnotationComposer a) f,
  ) {
    final $$AttendanceSessionsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.attendanceSessions,
          getReferencedColumn: (t) => t.schoolTermId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$AttendanceSessionsTableAnnotationComposer(
                $db: $db,
                $table: $db.attendanceSessions,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> evaluationsRefs<T extends Object>(
    Expression<T> Function($$EvaluationsTableAnnotationComposer a) f,
  ) {
    final $$EvaluationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.schoolTermId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableAnnotationComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SchoolTermsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SchoolTermsTable,
          SchoolTerm,
          $$SchoolTermsTableFilterComposer,
          $$SchoolTermsTableOrderingComposer,
          $$SchoolTermsTableAnnotationComposer,
          $$SchoolTermsTableCreateCompanionBuilder,
          $$SchoolTermsTableUpdateCompanionBuilder,
          (SchoolTerm, $$SchoolTermsTableReferences),
          SchoolTerm,
          PrefetchHooks Function({
            bool academicYearId,
            bool attendanceSessionsRefs,
            bool evaluationsRefs,
          })
        > {
  $$SchoolTermsTableTableManager(_$AppDatabase db, $SchoolTermsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SchoolTermsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SchoolTermsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SchoolTermsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> academicYearId = const Value.absent(),
                Value<int> number = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime> endDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SchoolTermsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                academicYearId: academicYearId,
                number: number,
                name: name,
                startDate: startDate,
                endDate: endDate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String academicYearId,
                required int number,
                required String name,
                required DateTime startDate,
                required DateTime endDate,
                Value<int> rowid = const Value.absent(),
              }) => SchoolTermsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                academicYearId: academicYearId,
                number: number,
                name: name,
                startDate: startDate,
                endDate: endDate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SchoolTermsTable, SchoolTerm>(table),
                  $$SchoolTermsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                academicYearId = false,
                attendanceSessionsRefs = false,
                evaluationsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (attendanceSessionsRefs) db.attendanceSessions,
                    if (evaluationsRefs) db.evaluations,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (academicYearId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.academicYearId,
                            referencedTable: $$SchoolTermsTableReferences
                                ._academicYearIdTable(db),
                            referencedColumn: $$SchoolTermsTableReferences
                                ._academicYearIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (attendanceSessionsRefs)
                        await $_getPrefetchedDataByColumns<
                          SchoolTerm,
                          $SchoolTermsTable,
                          AttendanceSession,
                          $AttendanceSessionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$SchoolTermsTableReferences
                              ._attendanceSessionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SchoolTermsTableReferences(
                                db,
                                table,
                                p0,
                              ).attendanceSessionsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'school_term_id',
                          typedResults: items,
                        ),
                      if (evaluationsRefs)
                        await $_getPrefetchedDataByColumns<
                          SchoolTerm,
                          $SchoolTermsTable,
                          Evaluation,
                          $EvaluationsTable
                        >(
                          currentTable: table,
                          referencedTable: $$SchoolTermsTableReferences
                              ._evaluationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SchoolTermsTableReferences(
                                db,
                                table,
                                p0,
                              ).evaluationsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'school_term_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SchoolTermsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SchoolTermsTable,
      SchoolTerm,
      $$SchoolTermsTableFilterComposer,
      $$SchoolTermsTableOrderingComposer,
      $$SchoolTermsTableAnnotationComposer,
      $$SchoolTermsTableCreateCompanionBuilder,
      $$SchoolTermsTableUpdateCompanionBuilder,
      (SchoolTerm, $$SchoolTermsTableReferences),
      SchoolTerm,
      PrefetchHooks Function({
        bool academicYearId,
        bool attendanceSessionsRefs,
        bool evaluationsRefs,
      })
    >;
typedef $$ClassroomsTableCreateCompanionBuilder = ClassroomsCompanion Function({
  required String id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  required String name,
  Value<String> level,
  Value<String> description,
  Value<DateTime?> archivedAt,
  Value<int> rowid,
});
typedef $$ClassroomsTableUpdateCompanionBuilder = ClassroomsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  Value<String> name,
  Value<String> level,
  Value<String> description,
  Value<DateTime?> archivedAt,
  Value<int> rowid,
});

final class $$ClassroomsTableReferences
    extends BaseReferences<_$AppDatabase, $ClassroomsTable, Classroom> {
  $$ClassroomsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$EnrollmentsTable, List<Enrollment>>
  _enrollmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.enrollments,
    aliasName: 'classrooms__id__enrollments__classroom_id',
  );

  $$EnrollmentsTableProcessedTableManager get enrollmentsRefs {
    final manager = $$EnrollmentsTableTableManager(
      $_db,
      $_db.enrollments,
    ).filter((f) => f.classroomId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_enrollmentsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $TeachingAssignmentsTable,
    List<TeachingAssignment>
  >
  _teachingAssignmentsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.teachingAssignments,
        aliasName: 'classrooms__id__teaching_assignments__classroom_id',
      );

  $$TeachingAssignmentsTableProcessedTableManager get teachingAssignmentsRefs {
    final manager = $$TeachingAssignmentsTableTableManager(
      $_db,
      $_db.teachingAssignments,
    ).filter((f) => f.classroomId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _teachingAssignmentsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClassroomsTableFilterComposer
    extends Composer<_$AppDatabase, $ClassroomsTable> {
  $$ClassroomsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> enrollmentsRefs(
    Expression<bool> Function($$EnrollmentsTableFilterComposer f) f,
  ) {
    final $$EnrollmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.classroomId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableFilterComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> teachingAssignmentsRefs(
    Expression<bool> Function($$TeachingAssignmentsTableFilterComposer f) f,
  ) {
    final $$TeachingAssignmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.teachingAssignments,
      getReferencedColumn: (t) => t.classroomId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TeachingAssignmentsTableFilterComposer(
            $db: $db,
            $table: $db.teachingAssignments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClassroomsTableOrderingComposer
    extends Composer<_$AppDatabase, $ClassroomsTable> {
  $$ClassroomsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClassroomsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClassroomsTable> {
  $$ClassroomsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => column,
  );

  Expression<T> enrollmentsRefs<T extends Object>(
    Expression<T> Function($$EnrollmentsTableAnnotationComposer a) f,
  ) {
    final $$EnrollmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.classroomId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> teachingAssignmentsRefs<T extends Object>(
    Expression<T> Function($$TeachingAssignmentsTableAnnotationComposer a) f,
  ) {
    final $$TeachingAssignmentsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.classroomId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableAnnotationComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ClassroomsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClassroomsTable,
          Classroom,
          $$ClassroomsTableFilterComposer,
          $$ClassroomsTableOrderingComposer,
          $$ClassroomsTableAnnotationComposer,
          $$ClassroomsTableCreateCompanionBuilder,
          $$ClassroomsTableUpdateCompanionBuilder,
          (Classroom, $$ClassroomsTableReferences),
          Classroom,
          PrefetchHooks Function({
            bool enrollmentsRefs,
            bool teachingAssignmentsRefs,
          })
        > {
  $$ClassroomsTableTableManager(_$AppDatabase db, $ClassroomsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClassroomsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClassroomsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClassroomsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> level = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClassroomsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                level: level,
                description: description,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String name,
                Value<String> level = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClassroomsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                level: level,
                description: description,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ClassroomsTable, Classroom>(table),
                  $$ClassroomsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({enrollmentsRefs = false, teachingAssignmentsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (enrollmentsRefs) db.enrollments,
                    if (teachingAssignmentsRefs) db.teachingAssignments,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (enrollmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          Classroom,
                          $ClassroomsTable,
                          Enrollment,
                          $EnrollmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$ClassroomsTableReferences
                              ._enrollmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClassroomsTableReferences(
                                db,
                                table,
                                p0,
                              ).enrollmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'classroom_id',
                          typedResults: items,
                        ),
                      if (teachingAssignmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          Classroom,
                          $ClassroomsTable,
                          TeachingAssignment,
                          $TeachingAssignmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$ClassroomsTableReferences
                              ._teachingAssignmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClassroomsTableReferences(
                                db,
                                table,
                                p0,
                              ).teachingAssignmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'classroom_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ClassroomsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClassroomsTable,
      Classroom,
      $$ClassroomsTableFilterComposer,
      $$ClassroomsTableOrderingComposer,
      $$ClassroomsTableAnnotationComposer,
      $$ClassroomsTableCreateCompanionBuilder,
      $$ClassroomsTableUpdateCompanionBuilder,
      (Classroom, $$ClassroomsTableReferences),
      Classroom,
      PrefetchHooks Function({
        bool enrollmentsRefs,
        bool teachingAssignmentsRefs,
      })
    >;
typedef $$StudentsTableCreateCompanionBuilder = StudentsCompanion Function({
  required String id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  Value<String> matricule,
  required String firstName,
  required String lastName,
  Value<DateTime?> birthDate,
  Value<String> gender,
  Value<DateTime?> archivedAt,
  Value<int> rowid,
});
typedef $$StudentsTableUpdateCompanionBuilder = StudentsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  Value<String> matricule,
  Value<String> firstName,
  Value<String> lastName,
  Value<DateTime?> birthDate,
  Value<String> gender,
  Value<DateTime?> archivedAt,
  Value<int> rowid,
});

final class $$StudentsTableReferences
    extends BaseReferences<_$AppDatabase, $StudentsTable, Student> {
  $$StudentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$EnrollmentsTable, List<Enrollment>>
  _enrollmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.enrollments,
    aliasName: 'students__id__enrollments__student_id',
  );

  $$EnrollmentsTableProcessedTableManager get enrollmentsRefs {
    final manager = $$EnrollmentsTableTableManager(
      $_db,
      $_db.enrollments,
    ).filter((f) => f.studentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_enrollmentsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$AttendanceRecordsTable, List<AttendanceRecord>>
  _attendanceRecordsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.attendanceRecords,
        aliasName: 'students__id__attendance_records__student_id',
      );

  $$AttendanceRecordsTableProcessedTableManager get attendanceRecordsRefs {
    final manager = $$AttendanceRecordsTableTableManager(
      $_db,
      $_db.attendanceRecords,
    ).filter((f) => f.studentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _attendanceRecordsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GradesTable, List<Grade>> _gradesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.grades,
    aliasName: 'students__id__grades__student_id',
  );

  $$GradesTableProcessedTableManager get gradesRefs {
    final manager = $$GradesTableTableManager(
      $_db,
      $_db.grades,
    ).filter((f) => f.studentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$StudentsTableFilterComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get matricule => $composableBuilder(
    column: $table.matricule,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> enrollmentsRefs(
    Expression<bool> Function($$EnrollmentsTableFilterComposer f) f,
  ) {
    final $$EnrollmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.studentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableFilterComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> attendanceRecordsRefs(
    Expression<bool> Function($$AttendanceRecordsTableFilterComposer f) f,
  ) {
    final $$AttendanceRecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.attendanceRecords,
      getReferencedColumn: (t) => t.studentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceRecordsTableFilterComposer(
            $db: $db,
            $table: $db.attendanceRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> gradesRefs(
    Expression<bool> Function($$GradesTableFilterComposer f) f,
  ) {
    final $$GradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.studentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableFilterComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StudentsTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get matricule => $composableBuilder(
    column: $table.matricule,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StudentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get matricule =>
      $composableBuilder(column: $table.matricule, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => column,
  );

  Expression<T> enrollmentsRefs<T extends Object>(
    Expression<T> Function($$EnrollmentsTableAnnotationComposer a) f,
  ) {
    final $$EnrollmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.enrollments,
      getReferencedColumn: (t) => t.studentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EnrollmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.enrollments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> attendanceRecordsRefs<T extends Object>(
    Expression<T> Function($$AttendanceRecordsTableAnnotationComposer a) f,
  ) {
    final $$AttendanceRecordsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.attendanceRecords,
          getReferencedColumn: (t) => t.studentId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$AttendanceRecordsTableAnnotationComposer(
                $db: $db,
                $table: $db.attendanceRecords,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> gradesRefs<T extends Object>(
    Expression<T> Function($$GradesTableAnnotationComposer a) f,
  ) {
    final $$GradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.studentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableAnnotationComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StudentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudentsTable,
          Student,
          $$StudentsTableFilterComposer,
          $$StudentsTableOrderingComposer,
          $$StudentsTableAnnotationComposer,
          $$StudentsTableCreateCompanionBuilder,
          $$StudentsTableUpdateCompanionBuilder,
          (Student, $$StudentsTableReferences),
          Student,
          PrefetchHooks Function({
            bool enrollmentsRefs,
            bool attendanceRecordsRefs,
            bool gradesRefs,
          })
        > {
  $$StudentsTableTableManager(_$AppDatabase db, $StudentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> matricule = const Value.absent(),
                Value<String> firstName = const Value.absent(),
                Value<String> lastName = const Value.absent(),
                Value<DateTime?> birthDate = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StudentsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                matricule: matricule,
                firstName: firstName,
                lastName: lastName,
                birthDate: birthDate,
                gender: gender,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> matricule = const Value.absent(),
                required String firstName,
                required String lastName,
                Value<DateTime?> birthDate = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StudentsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                matricule: matricule,
                firstName: firstName,
                lastName: lastName,
                birthDate: birthDate,
                gender: gender,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StudentsTable, Student>(table),
                  $$StudentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                enrollmentsRefs = false,
                attendanceRecordsRefs = false,
                gradesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (enrollmentsRefs) db.enrollments,
                    if (attendanceRecordsRefs) db.attendanceRecords,
                    if (gradesRefs) db.grades,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (enrollmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          Student,
                          $StudentsTable,
                          Enrollment,
                          $EnrollmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$StudentsTableReferences
                              ._enrollmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StudentsTableReferences(
                                db,
                                table,
                                p0,
                              ).enrollmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'student_id',
                          typedResults: items,
                        ),
                      if (attendanceRecordsRefs)
                        await $_getPrefetchedDataByColumns<
                          Student,
                          $StudentsTable,
                          AttendanceRecord,
                          $AttendanceRecordsTable
                        >(
                          currentTable: table,
                          referencedTable: $$StudentsTableReferences
                              ._attendanceRecordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StudentsTableReferences(
                                db,
                                table,
                                p0,
                              ).attendanceRecordsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'student_id',
                          typedResults: items,
                        ),
                      if (gradesRefs)
                        await $_getPrefetchedDataByColumns<
                          Student,
                          $StudentsTable,
                          Grade,
                          $GradesTable
                        >(
                          currentTable: table,
                          referencedTable: $$StudentsTableReferences
                              ._gradesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StudentsTableReferences(
                                db,
                                table,
                                p0,
                              ).gradesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'student_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$StudentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudentsTable,
      Student,
      $$StudentsTableFilterComposer,
      $$StudentsTableOrderingComposer,
      $$StudentsTableAnnotationComposer,
      $$StudentsTableCreateCompanionBuilder,
      $$StudentsTableUpdateCompanionBuilder,
      (Student, $$StudentsTableReferences),
      Student,
      PrefetchHooks Function({
        bool enrollmentsRefs,
        bool attendanceRecordsRefs,
        bool gradesRefs,
      })
    >;
typedef $$EnrollmentsTableCreateCompanionBuilder =
    EnrollmentsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String studentId,
      required String classroomId,
      required String academicYearId,
      required DateTime enrollmentDate,
      Value<DateTime?> exitDate,
      Value<String> status,
      Value<int> rowid,
    });
typedef $$EnrollmentsTableUpdateCompanionBuilder =
    EnrollmentsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> studentId,
      Value<String> classroomId,
      Value<String> academicYearId,
      Value<DateTime> enrollmentDate,
      Value<DateTime?> exitDate,
      Value<String> status,
      Value<int> rowid,
    });

final class $$EnrollmentsTableReferences
    extends BaseReferences<_$AppDatabase, $EnrollmentsTable, Enrollment> {
  $$EnrollmentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentsTable _studentIdTable(_$AppDatabase db) =>
      db.students.createAlias('enrollments__student_id__students__id');

  $$StudentsTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<String>('student_id')!;

    final manager = $$StudentsTableTableManager(
      $_db,
      $_db.students,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ClassroomsTable _classroomIdTable(_$AppDatabase db) =>
      db.classrooms.createAlias('enrollments__classroom_id__classrooms__id');

  $$ClassroomsTableProcessedTableManager get classroomId {
    final $_column = $_itemColumn<String>('classroom_id')!;

    final manager = $$ClassroomsTableTableManager(
      $_db,
      $_db.classrooms,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classroomIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AcademicYearsTable _academicYearIdTable(_$AppDatabase db) => db
      .academicYears
      .createAlias('enrollments__academic_year_id__academic_years__id');

  $$AcademicYearsTableProcessedTableManager get academicYearId {
    final $_column = $_itemColumn<String>('academic_year_id')!;

    final manager = $$AcademicYearsTableTableManager(
      $_db,
      $_db.academicYears,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_academicYearIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EnrollmentsTableFilterComposer
    extends Composer<_$AppDatabase, $EnrollmentsTable> {
  $$EnrollmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get enrollmentDate => $composableBuilder(
    column: $table.enrollmentDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get exitDate => $composableBuilder(
    column: $table.exitDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$StudentsTableFilterComposer get studentId {
    final $$StudentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableFilterComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ClassroomsTableFilterComposer get classroomId {
    final $$ClassroomsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableFilterComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableFilterComposer get academicYearId {
    final $$AcademicYearsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableFilterComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EnrollmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $EnrollmentsTable> {
  $$EnrollmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get enrollmentDate => $composableBuilder(
    column: $table.enrollmentDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get exitDate => $composableBuilder(
    column: $table.exitDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$StudentsTableOrderingComposer get studentId {
    final $$StudentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableOrderingComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ClassroomsTableOrderingComposer get classroomId {
    final $$ClassroomsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableOrderingComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableOrderingComposer get academicYearId {
    final $$AcademicYearsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableOrderingComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EnrollmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EnrollmentsTable> {
  $$EnrollmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get enrollmentDate => $composableBuilder(
    column: $table.enrollmentDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get exitDate =>
      $composableBuilder(column: $table.exitDate, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$StudentsTableAnnotationComposer get studentId {
    final $$StudentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableAnnotationComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ClassroomsTableAnnotationComposer get classroomId {
    final $$ClassroomsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableAnnotationComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableAnnotationComposer get academicYearId {
    final $$AcademicYearsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableAnnotationComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EnrollmentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EnrollmentsTable,
          Enrollment,
          $$EnrollmentsTableFilterComposer,
          $$EnrollmentsTableOrderingComposer,
          $$EnrollmentsTableAnnotationComposer,
          $$EnrollmentsTableCreateCompanionBuilder,
          $$EnrollmentsTableUpdateCompanionBuilder,
          (Enrollment, $$EnrollmentsTableReferences),
          Enrollment,
          PrefetchHooks Function({
            bool studentId,
            bool classroomId,
            bool academicYearId,
          })
        > {
  $$EnrollmentsTableTableManager(_$AppDatabase db, $EnrollmentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EnrollmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EnrollmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EnrollmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> studentId = const Value.absent(),
                Value<String> classroomId = const Value.absent(),
                Value<String> academicYearId = const Value.absent(),
                Value<DateTime> enrollmentDate = const Value.absent(),
                Value<DateTime?> exitDate = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EnrollmentsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                studentId: studentId,
                classroomId: classroomId,
                academicYearId: academicYearId,
                enrollmentDate: enrollmentDate,
                exitDate: exitDate,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String studentId,
                required String classroomId,
                required String academicYearId,
                required DateTime enrollmentDate,
                Value<DateTime?> exitDate = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EnrollmentsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                studentId: studentId,
                classroomId: classroomId,
                academicYearId: academicYearId,
                enrollmentDate: enrollmentDate,
                exitDate: exitDate,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EnrollmentsTable, Enrollment>(table),
                  $$EnrollmentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                studentId = false,
                classroomId = false,
                academicYearId = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (studentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.studentId,
                            referencedTable: $$EnrollmentsTableReferences
                                ._studentIdTable(db),
                            referencedColumn: $$EnrollmentsTableReferences
                                ._studentIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (classroomId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.classroomId,
                            referencedTable: $$EnrollmentsTableReferences
                                ._classroomIdTable(db),
                            referencedColumn: $$EnrollmentsTableReferences
                                ._classroomIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (academicYearId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.academicYearId,
                            referencedTable: $$EnrollmentsTableReferences
                                ._academicYearIdTable(db),
                            referencedColumn: $$EnrollmentsTableReferences
                                ._academicYearIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$EnrollmentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EnrollmentsTable,
      Enrollment,
      $$EnrollmentsTableFilterComposer,
      $$EnrollmentsTableOrderingComposer,
      $$EnrollmentsTableAnnotationComposer,
      $$EnrollmentsTableCreateCompanionBuilder,
      $$EnrollmentsTableUpdateCompanionBuilder,
      (Enrollment, $$EnrollmentsTableReferences),
      Enrollment,
      PrefetchHooks Function({
        bool studentId,
        bool classroomId,
        bool academicYearId,
      })
    >;
typedef $$SubjectsTableCreateCompanionBuilder = SubjectsCompanion Function({
  required String id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  required String name,
  Value<String> description,
  Value<int> rowid,
});
typedef $$SubjectsTableUpdateCompanionBuilder = SubjectsCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  Value<String> name,
  Value<String> description,
  Value<int> rowid,
});

final class $$SubjectsTableReferences
    extends BaseReferences<_$AppDatabase, $SubjectsTable, Subject> {
  $$SubjectsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $TeachingAssignmentsTable,
    List<TeachingAssignment>
  >
  _teachingAssignmentsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.teachingAssignments,
        aliasName: 'subjects__id__teaching_assignments__subject_id',
      );

  $$TeachingAssignmentsTableProcessedTableManager get teachingAssignmentsRefs {
    final manager = $$TeachingAssignmentsTableTableManager(
      $_db,
      $_db.teachingAssignments,
    ).filter((f) => f.subjectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _teachingAssignmentsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SubjectsTableFilterComposer
    extends Composer<_$AppDatabase, $SubjectsTable> {
  $$SubjectsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> teachingAssignmentsRefs(
    Expression<bool> Function($$TeachingAssignmentsTableFilterComposer f) f,
  ) {
    final $$TeachingAssignmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.teachingAssignments,
      getReferencedColumn: (t) => t.subjectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TeachingAssignmentsTableFilterComposer(
            $db: $db,
            $table: $db.teachingAssignments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SubjectsTableOrderingComposer
    extends Composer<_$AppDatabase, $SubjectsTable> {
  $$SubjectsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SubjectsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SubjectsTable> {
  $$SubjectsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  Expression<T> teachingAssignmentsRefs<T extends Object>(
    Expression<T> Function($$TeachingAssignmentsTableAnnotationComposer a) f,
  ) {
    final $$TeachingAssignmentsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.subjectId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableAnnotationComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SubjectsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SubjectsTable,
          Subject,
          $$SubjectsTableFilterComposer,
          $$SubjectsTableOrderingComposer,
          $$SubjectsTableAnnotationComposer,
          $$SubjectsTableCreateCompanionBuilder,
          $$SubjectsTableUpdateCompanionBuilder,
          (Subject, $$SubjectsTableReferences),
          Subject,
          PrefetchHooks Function({bool teachingAssignmentsRefs})
        > {
  $$SubjectsTableTableManager(_$AppDatabase db, $SubjectsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SubjectsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SubjectsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SubjectsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubjectsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                description: description,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String name,
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubjectsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                description: description,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SubjectsTable, Subject>(table),
                  $$SubjectsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({teachingAssignmentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (teachingAssignmentsRefs) db.teachingAssignments,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (teachingAssignmentsRefs)
                    await $_getPrefetchedDataByColumns<
                      Subject,
                      $SubjectsTable,
                      TeachingAssignment,
                      $TeachingAssignmentsTable
                    >(
                      currentTable: table,
                      referencedTable: $$SubjectsTableReferences
                          ._teachingAssignmentsRefsTable(db),
                      managerFromTypedResult: (p0) => $$SubjectsTableReferences(
                        db,
                        table,
                        p0,
                      ).teachingAssignmentsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'subject_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SubjectsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SubjectsTable,
      Subject,
      $$SubjectsTableFilterComposer,
      $$SubjectsTableOrderingComposer,
      $$SubjectsTableAnnotationComposer,
      $$SubjectsTableCreateCompanionBuilder,
      $$SubjectsTableUpdateCompanionBuilder,
      (Subject, $$SubjectsTableReferences),
      Subject,
      PrefetchHooks Function({bool teachingAssignmentsRefs})
    >;
typedef $$TeachingAssignmentsTableCreateCompanionBuilder =
    TeachingAssignmentsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String classroomId,
      required String subjectId,
      required String academicYearId,
      Value<double> coefficient,
      Value<int> rowid,
    });
typedef $$TeachingAssignmentsTableUpdateCompanionBuilder =
    TeachingAssignmentsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> classroomId,
      Value<String> subjectId,
      Value<String> academicYearId,
      Value<double> coefficient,
      Value<int> rowid,
    });

final class $$TeachingAssignmentsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TeachingAssignmentsTable,
          TeachingAssignment
        > {
  $$TeachingAssignmentsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ClassroomsTable _classroomIdTable(_$AppDatabase db) => db.classrooms
      .createAlias('teaching_assignments__classroom_id__classrooms__id');

  $$ClassroomsTableProcessedTableManager get classroomId {
    final $_column = $_itemColumn<String>('classroom_id')!;

    final manager = $$ClassroomsTableTableManager(
      $_db,
      $_db.classrooms,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classroomIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SubjectsTable _subjectIdTable(_$AppDatabase db) =>
      db.subjects.createAlias('teaching_assignments__subject_id__subjects__id');

  $$SubjectsTableProcessedTableManager get subjectId {
    final $_column = $_itemColumn<String>('subject_id')!;

    final manager = $$SubjectsTableTableManager(
      $_db,
      $_db.subjects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_subjectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AcademicYearsTable _academicYearIdTable(_$AppDatabase db) =>
      db.academicYears.createAlias(
        'teaching_assignments__academic_year_id__academic_years__id',
      );

  $$AcademicYearsTableProcessedTableManager get academicYearId {
    final $_column = $_itemColumn<String>('academic_year_id')!;

    final manager = $$AcademicYearsTableTableManager(
      $_db,
      $_db.academicYears,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_academicYearIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$AttendanceSessionsTable, List<AttendanceSession>>
  _attendanceSessionsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.attendanceSessions,
    aliasName:
        'teaching_assignments__id__attendance_sessions__teaching_assignment_id',
  );

  $$AttendanceSessionsTableProcessedTableManager get attendanceSessionsRefs {
    final manager =
        $$AttendanceSessionsTableTableManager(
          $_db,
          $_db.attendanceSessions,
        ).filter(
          (f) =>
              f.teachingAssignmentId.id.sqlEquals($_itemColumn<String>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _attendanceSessionsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvaluationsTable, List<Evaluation>>
  _evaluationsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evaluations,
    aliasName: 'teaching_assignments__id__evaluations__teaching_assignment_id',
  );

  $$EvaluationsTableProcessedTableManager get evaluationsRefs {
    final manager = $$EvaluationsTableTableManager($_db, $_db.evaluations)
        .filter(
          (f) =>
              f.teachingAssignmentId.id.sqlEquals($_itemColumn<String>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(_evaluationsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TeachingAssignmentsTableFilterComposer
    extends Composer<_$AppDatabase, $TeachingAssignmentsTable> {
  $$TeachingAssignmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => ColumnFilters(column),
  );

  $$ClassroomsTableFilterComposer get classroomId {
    final $$ClassroomsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableFilterComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SubjectsTableFilterComposer get subjectId {
    final $$SubjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.subjectId,
      referencedTable: $db.subjects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SubjectsTableFilterComposer(
            $db: $db,
            $table: $db.subjects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableFilterComposer get academicYearId {
    final $$AcademicYearsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableFilterComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> attendanceSessionsRefs(
    Expression<bool> Function($$AttendanceSessionsTableFilterComposer f) f,
  ) {
    final $$AttendanceSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.attendanceSessions,
      getReferencedColumn: (t) => t.teachingAssignmentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceSessionsTableFilterComposer(
            $db: $db,
            $table: $db.attendanceSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> evaluationsRefs(
    Expression<bool> Function($$EvaluationsTableFilterComposer f) f,
  ) {
    final $$EvaluationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.teachingAssignmentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableFilterComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TeachingAssignmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $TeachingAssignmentsTable> {
  $$TeachingAssignmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClassroomsTableOrderingComposer get classroomId {
    final $$ClassroomsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableOrderingComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SubjectsTableOrderingComposer get subjectId {
    final $$SubjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.subjectId,
      referencedTable: $db.subjects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SubjectsTableOrderingComposer(
            $db: $db,
            $table: $db.subjects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableOrderingComposer get academicYearId {
    final $$AcademicYearsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableOrderingComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TeachingAssignmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TeachingAssignmentsTable> {
  $$TeachingAssignmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => column,
  );

  $$ClassroomsTableAnnotationComposer get classroomId {
    final $$ClassroomsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classroomId,
      referencedTable: $db.classrooms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassroomsTableAnnotationComposer(
            $db: $db,
            $table: $db.classrooms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SubjectsTableAnnotationComposer get subjectId {
    final $$SubjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.subjectId,
      referencedTable: $db.subjects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SubjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.subjects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AcademicYearsTableAnnotationComposer get academicYearId {
    final $$AcademicYearsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.academicYearId,
      referencedTable: $db.academicYears,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AcademicYearsTableAnnotationComposer(
            $db: $db,
            $table: $db.academicYears,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> attendanceSessionsRefs<T extends Object>(
    Expression<T> Function($$AttendanceSessionsTableAnnotationComposer a) f,
  ) {
    final $$AttendanceSessionsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.attendanceSessions,
          getReferencedColumn: (t) => t.teachingAssignmentId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$AttendanceSessionsTableAnnotationComposer(
                $db: $db,
                $table: $db.attendanceSessions,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> evaluationsRefs<T extends Object>(
    Expression<T> Function($$EvaluationsTableAnnotationComposer a) f,
  ) {
    final $$EvaluationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.teachingAssignmentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableAnnotationComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TeachingAssignmentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TeachingAssignmentsTable,
          TeachingAssignment,
          $$TeachingAssignmentsTableFilterComposer,
          $$TeachingAssignmentsTableOrderingComposer,
          $$TeachingAssignmentsTableAnnotationComposer,
          $$TeachingAssignmentsTableCreateCompanionBuilder,
          $$TeachingAssignmentsTableUpdateCompanionBuilder,
          (TeachingAssignment, $$TeachingAssignmentsTableReferences),
          TeachingAssignment,
          PrefetchHooks Function({
            bool classroomId,
            bool subjectId,
            bool academicYearId,
            bool attendanceSessionsRefs,
            bool evaluationsRefs,
          })
        > {
  $$TeachingAssignmentsTableTableManager(
    _$AppDatabase db,
    $TeachingAssignmentsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TeachingAssignmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TeachingAssignmentsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TeachingAssignmentsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> classroomId = const Value.absent(),
                Value<String> subjectId = const Value.absent(),
                Value<String> academicYearId = const Value.absent(),
                Value<double> coefficient = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TeachingAssignmentsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                classroomId: classroomId,
                subjectId: subjectId,
                academicYearId: academicYearId,
                coefficient: coefficient,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String classroomId,
                required String subjectId,
                required String academicYearId,
                Value<double> coefficient = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TeachingAssignmentsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                classroomId: classroomId,
                subjectId: subjectId,
                academicYearId: academicYearId,
                coefficient: coefficient,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TeachingAssignmentsTable, TeachingAssignment>(
                    table,
                  ),
                  $$TeachingAssignmentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                classroomId = false,
                subjectId = false,
                academicYearId = false,
                attendanceSessionsRefs = false,
                evaluationsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (attendanceSessionsRefs) db.attendanceSessions,
                    if (evaluationsRefs) db.evaluations,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (classroomId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.classroomId,
                            referencedTable:
                                $$TeachingAssignmentsTableReferences
                                    ._classroomIdTable(db),
                            referencedColumn:
                                $$TeachingAssignmentsTableReferences
                                    ._classroomIdTable(db)
                                    .id,
                          ) as T;
                        }
                        if (subjectId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.subjectId,
                            referencedTable:
                                $$TeachingAssignmentsTableReferences
                                    ._subjectIdTable(db),
                            referencedColumn:
                                $$TeachingAssignmentsTableReferences
                                    ._subjectIdTable(db)
                                    .id,
                          ) as T;
                        }
                        if (academicYearId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.academicYearId,
                            referencedTable:
                                $$TeachingAssignmentsTableReferences
                                    ._academicYearIdTable(db),
                            referencedColumn:
                                $$TeachingAssignmentsTableReferences
                                    ._academicYearIdTable(db)
                                    .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (attendanceSessionsRefs)
                        await $_getPrefetchedDataByColumns<
                          TeachingAssignment,
                          $TeachingAssignmentsTable,
                          AttendanceSession,
                          $AttendanceSessionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TeachingAssignmentsTableReferences
                              ._attendanceSessionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TeachingAssignmentsTableReferences(
                                db,
                                table,
                                p0,
                              ).attendanceSessionsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'teaching_assignment_id',
                          typedResults: items,
                        ),
                      if (evaluationsRefs)
                        await $_getPrefetchedDataByColumns<
                          TeachingAssignment,
                          $TeachingAssignmentsTable,
                          Evaluation,
                          $EvaluationsTable
                        >(
                          currentTable: table,
                          referencedTable: $$TeachingAssignmentsTableReferences
                              ._evaluationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TeachingAssignmentsTableReferences(
                                db,
                                table,
                                p0,
                              ).evaluationsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'teaching_assignment_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TeachingAssignmentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TeachingAssignmentsTable,
      TeachingAssignment,
      $$TeachingAssignmentsTableFilterComposer,
      $$TeachingAssignmentsTableOrderingComposer,
      $$TeachingAssignmentsTableAnnotationComposer,
      $$TeachingAssignmentsTableCreateCompanionBuilder,
      $$TeachingAssignmentsTableUpdateCompanionBuilder,
      (TeachingAssignment, $$TeachingAssignmentsTableReferences),
      TeachingAssignment,
      PrefetchHooks Function({
        bool classroomId,
        bool subjectId,
        bool academicYearId,
        bool attendanceSessionsRefs,
        bool evaluationsRefs,
      })
    >;
typedef $$AttendanceSessionsTableCreateCompanionBuilder =
    AttendanceSessionsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String teachingAssignmentId,
      required String schoolTermId,
      required DateTime date,
      Value<String> topic,
      Value<String> status,
      Value<int> rowid,
    });
typedef $$AttendanceSessionsTableUpdateCompanionBuilder =
    AttendanceSessionsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> teachingAssignmentId,
      Value<String> schoolTermId,
      Value<DateTime> date,
      Value<String> topic,
      Value<String> status,
      Value<int> rowid,
    });

final class $$AttendanceSessionsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $AttendanceSessionsTable,
          AttendanceSession
        > {
  $$AttendanceSessionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TeachingAssignmentsTable _teachingAssignmentIdTable(
    _$AppDatabase db,
  ) => db.teachingAssignments.createAlias(
    'attendance_sessions__teaching_assignment_id__teaching_assignments__id',
  );

  $$TeachingAssignmentsTableProcessedTableManager get teachingAssignmentId {
    final $_column = $_itemColumn<String>('teaching_assignment_id')!;

    final manager = $$TeachingAssignmentsTableTableManager(
      $_db,
      $_db.teachingAssignments,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(
      _teachingAssignmentIdTable($_db),
    );
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SchoolTermsTable _schoolTermIdTable(_$AppDatabase db) => db
      .schoolTerms
      .createAlias('attendance_sessions__school_term_id__school_terms__id');

  $$SchoolTermsTableProcessedTableManager get schoolTermId {
    final $_column = $_itemColumn<String>('school_term_id')!;

    final manager = $$SchoolTermsTableTableManager(
      $_db,
      $_db.schoolTerms,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_schoolTermIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$AttendanceRecordsTable, List<AttendanceRecord>>
  _attendanceRecordsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.attendanceRecords,
    aliasName:
        'attendance_sessions__id__attendance_records__attendance_session_id',
  );

  $$AttendanceRecordsTableProcessedTableManager get attendanceRecordsRefs {
    final manager =
        $$AttendanceRecordsTableTableManager(
          $_db,
          $_db.attendanceRecords,
        ).filter(
          (f) =>
              f.attendanceSessionId.id.sqlEquals($_itemColumn<String>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _attendanceRecordsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AttendanceSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $AttendanceSessionsTable> {
  $$AttendanceSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$TeachingAssignmentsTableFilterComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.teachingAssignmentId,
      referencedTable: $db.teachingAssignments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TeachingAssignmentsTableFilterComposer(
            $db: $db,
            $table: $db.teachingAssignments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SchoolTermsTableFilterComposer get schoolTermId {
    final $$SchoolTermsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableFilterComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> attendanceRecordsRefs(
    Expression<bool> Function($$AttendanceRecordsTableFilterComposer f) f,
  ) {
    final $$AttendanceRecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.attendanceRecords,
      getReferencedColumn: (t) => t.attendanceSessionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceRecordsTableFilterComposer(
            $db: $db,
            $table: $db.attendanceRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AttendanceSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $AttendanceSessionsTable> {
  $$AttendanceSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$TeachingAssignmentsTableOrderingComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.teachingAssignmentId,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableOrderingComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$SchoolTermsTableOrderingComposer get schoolTermId {
    final $$SchoolTermsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableOrderingComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttendanceSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttendanceSessionsTable> {
  $$AttendanceSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get topic =>
      $composableBuilder(column: $table.topic, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$TeachingAssignmentsTableAnnotationComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.teachingAssignmentId,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableAnnotationComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$SchoolTermsTableAnnotationComposer get schoolTermId {
    final $$SchoolTermsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableAnnotationComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> attendanceRecordsRefs<T extends Object>(
    Expression<T> Function($$AttendanceRecordsTableAnnotationComposer a) f,
  ) {
    final $$AttendanceRecordsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.attendanceRecords,
          getReferencedColumn: (t) => t.attendanceSessionId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$AttendanceRecordsTableAnnotationComposer(
                $db: $db,
                $table: $db.attendanceRecords,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AttendanceSessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AttendanceSessionsTable,
          AttendanceSession,
          $$AttendanceSessionsTableFilterComposer,
          $$AttendanceSessionsTableOrderingComposer,
          $$AttendanceSessionsTableAnnotationComposer,
          $$AttendanceSessionsTableCreateCompanionBuilder,
          $$AttendanceSessionsTableUpdateCompanionBuilder,
          (AttendanceSession, $$AttendanceSessionsTableReferences),
          AttendanceSession,
          PrefetchHooks Function({
            bool teachingAssignmentId,
            bool schoolTermId,
            bool attendanceRecordsRefs,
          })
        > {
  $$AttendanceSessionsTableTableManager(
    _$AppDatabase db,
    $AttendanceSessionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AttendanceSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AttendanceSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AttendanceSessionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> teachingAssignmentId = const Value.absent(),
                Value<String> schoolTermId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> topic = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AttendanceSessionsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                teachingAssignmentId: teachingAssignmentId,
                schoolTermId: schoolTermId,
                date: date,
                topic: topic,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String teachingAssignmentId,
                required String schoolTermId,
                required DateTime date,
                Value<String> topic = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AttendanceSessionsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                teachingAssignmentId: teachingAssignmentId,
                schoolTermId: schoolTermId,
                date: date,
                topic: topic,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AttendanceSessionsTable, AttendanceSession>(
                    table,
                  ),
                  $$AttendanceSessionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                teachingAssignmentId = false,
                schoolTermId = false,
                attendanceRecordsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (attendanceRecordsRefs) db.attendanceRecords,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (teachingAssignmentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.teachingAssignmentId,
                            referencedTable: $$AttendanceSessionsTableReferences
                                ._teachingAssignmentIdTable(db),
                            referencedColumn:
                                $$AttendanceSessionsTableReferences
                                    ._teachingAssignmentIdTable(db)
                                    .id,
                          ) as T;
                        }
                        if (schoolTermId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.schoolTermId,
                            referencedTable: $$AttendanceSessionsTableReferences
                                ._schoolTermIdTable(db),
                            referencedColumn:
                                $$AttendanceSessionsTableReferences
                                    ._schoolTermIdTable(db)
                                    .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (attendanceRecordsRefs)
                        await $_getPrefetchedDataByColumns<
                          AttendanceSession,
                          $AttendanceSessionsTable,
                          AttendanceRecord,
                          $AttendanceRecordsTable
                        >(
                          currentTable: table,
                          referencedTable: $$AttendanceSessionsTableReferences
                              ._attendanceRecordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AttendanceSessionsTableReferences(
                                db,
                                table,
                                p0,
                              ).attendanceRecordsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'attendance_session_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AttendanceSessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AttendanceSessionsTable,
      AttendanceSession,
      $$AttendanceSessionsTableFilterComposer,
      $$AttendanceSessionsTableOrderingComposer,
      $$AttendanceSessionsTableAnnotationComposer,
      $$AttendanceSessionsTableCreateCompanionBuilder,
      $$AttendanceSessionsTableUpdateCompanionBuilder,
      (AttendanceSession, $$AttendanceSessionsTableReferences),
      AttendanceSession,
      PrefetchHooks Function({
        bool teachingAssignmentId,
        bool schoolTermId,
        bool attendanceRecordsRefs,
      })
    >;
typedef $$AttendanceRecordsTableCreateCompanionBuilder =
    AttendanceRecordsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String attendanceSessionId,
      required String studentId,
      Value<String> status,
      Value<String> comment,
      Value<int> rowid,
    });
typedef $$AttendanceRecordsTableUpdateCompanionBuilder =
    AttendanceRecordsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> attendanceSessionId,
      Value<String> studentId,
      Value<String> status,
      Value<String> comment,
      Value<int> rowid,
    });

final class $$AttendanceRecordsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $AttendanceRecordsTable,
          AttendanceRecord
        > {
  $$AttendanceRecordsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AttendanceSessionsTable _attendanceSessionIdTable(_$AppDatabase db) =>
      db.attendanceSessions.createAlias(
        'attendance_records__attendance_session_id__attendance_sessions__id',
      );

  $$AttendanceSessionsTableProcessedTableManager get attendanceSessionId {
    final $_column = $_itemColumn<String>('attendance_session_id')!;

    final manager = $$AttendanceSessionsTableTableManager(
      $_db,
      $_db.attendanceSessions,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_attendanceSessionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $StudentsTable _studentIdTable(_$AppDatabase db) =>
      db.students.createAlias('attendance_records__student_id__students__id');

  $$StudentsTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<String>('student_id')!;

    final manager = $$StudentsTableTableManager(
      $_db,
      $_db.students,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$AttendanceRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $AttendanceRecordsTable> {
  $$AttendanceRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  $$AttendanceSessionsTableFilterComposer get attendanceSessionId {
    final $$AttendanceSessionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attendanceSessionId,
      referencedTable: $db.attendanceSessions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceSessionsTableFilterComposer(
            $db: $db,
            $table: $db.attendanceSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$StudentsTableFilterComposer get studentId {
    final $$StudentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableFilterComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttendanceRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $AttendanceRecordsTable> {
  $$AttendanceRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  $$AttendanceSessionsTableOrderingComposer get attendanceSessionId {
    final $$AttendanceSessionsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attendanceSessionId,
      referencedTable: $db.attendanceSessions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AttendanceSessionsTableOrderingComposer(
            $db: $db,
            $table: $db.attendanceSessions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$StudentsTableOrderingComposer get studentId {
    final $$StudentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableOrderingComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttendanceRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttendanceRecordsTable> {
  $$AttendanceRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  $$AttendanceSessionsTableAnnotationComposer get attendanceSessionId {
    final $$AttendanceSessionsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.attendanceSessionId,
          referencedTable: $db.attendanceSessions,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$AttendanceSessionsTableAnnotationComposer(
                $db: $db,
                $table: $db.attendanceSessions,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$StudentsTableAnnotationComposer get studentId {
    final $$StudentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableAnnotationComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AttendanceRecordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AttendanceRecordsTable,
          AttendanceRecord,
          $$AttendanceRecordsTableFilterComposer,
          $$AttendanceRecordsTableOrderingComposer,
          $$AttendanceRecordsTableAnnotationComposer,
          $$AttendanceRecordsTableCreateCompanionBuilder,
          $$AttendanceRecordsTableUpdateCompanionBuilder,
          (AttendanceRecord, $$AttendanceRecordsTableReferences),
          AttendanceRecord,
          PrefetchHooks Function({bool attendanceSessionId, bool studentId})
        > {
  $$AttendanceRecordsTableTableManager(
    _$AppDatabase db,
    $AttendanceRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AttendanceRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AttendanceRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AttendanceRecordsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> attendanceSessionId = const Value.absent(),
                Value<String> studentId = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AttendanceRecordsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                attendanceSessionId: attendanceSessionId,
                studentId: studentId,
                status: status,
                comment: comment,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String attendanceSessionId,
                required String studentId,
                Value<String> status = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AttendanceRecordsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                attendanceSessionId: attendanceSessionId,
                studentId: studentId,
                status: status,
                comment: comment,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AttendanceRecordsTable, AttendanceRecord>(table),
                  $$AttendanceRecordsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({attendanceSessionId = false, studentId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (attendanceSessionId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.attendanceSessionId,
                            referencedTable: $$AttendanceRecordsTableReferences
                                ._attendanceSessionIdTable(db),
                            referencedColumn: $$AttendanceRecordsTableReferences
                                ._attendanceSessionIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (studentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.studentId,
                            referencedTable: $$AttendanceRecordsTableReferences
                                ._studentIdTable(db),
                            referencedColumn: $$AttendanceRecordsTableReferences
                                ._studentIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$AttendanceRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AttendanceRecordsTable,
      AttendanceRecord,
      $$AttendanceRecordsTableFilterComposer,
      $$AttendanceRecordsTableOrderingComposer,
      $$AttendanceRecordsTableAnnotationComposer,
      $$AttendanceRecordsTableCreateCompanionBuilder,
      $$AttendanceRecordsTableUpdateCompanionBuilder,
      (AttendanceRecord, $$AttendanceRecordsTableReferences),
      AttendanceRecord,
      PrefetchHooks Function({bool attendanceSessionId, bool studentId})
    >;
typedef $$EvaluationsTableCreateCompanionBuilder =
    EvaluationsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String teachingAssignmentId,
      required String schoolTermId,
      required String title,
      Value<String> type,
      required double maxScore,
      required double coefficient,
      required DateTime evaluationDate,
      Value<int> rowid,
    });
typedef $$EvaluationsTableUpdateCompanionBuilder =
    EvaluationsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> teachingAssignmentId,
      Value<String> schoolTermId,
      Value<String> title,
      Value<String> type,
      Value<double> maxScore,
      Value<double> coefficient,
      Value<DateTime> evaluationDate,
      Value<int> rowid,
    });

final class $$EvaluationsTableReferences
    extends BaseReferences<_$AppDatabase, $EvaluationsTable, Evaluation> {
  $$EvaluationsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TeachingAssignmentsTable _teachingAssignmentIdTable(
    _$AppDatabase db,
  ) => db.teachingAssignments.createAlias(
    'evaluations__teaching_assignment_id__teaching_assignments__id',
  );

  $$TeachingAssignmentsTableProcessedTableManager get teachingAssignmentId {
    final $_column = $_itemColumn<String>('teaching_assignment_id')!;

    final manager = $$TeachingAssignmentsTableTableManager(
      $_db,
      $_db.teachingAssignments,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(
      _teachingAssignmentIdTable($_db),
    );
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SchoolTermsTable _schoolTermIdTable(_$AppDatabase db) => db
      .schoolTerms
      .createAlias('evaluations__school_term_id__school_terms__id');

  $$SchoolTermsTableProcessedTableManager get schoolTermId {
    final $_column = $_itemColumn<String>('school_term_id')!;

    final manager = $$SchoolTermsTableTableManager(
      $_db,
      $_db.schoolTerms,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_schoolTermIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$GradesTable, List<Grade>> _gradesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.grades,
    aliasName: 'evaluations__id__grades__evaluation_id',
  );

  $$GradesTableProcessedTableManager get gradesRefs {
    final manager = $$GradesTableTableManager(
      $_db,
      $_db.grades,
    ).filter((f) => f.evaluationId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EvaluationsTableFilterComposer
    extends Composer<_$AppDatabase, $EvaluationsTable> {
  $$EvaluationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxScore => $composableBuilder(
    column: $table.maxScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get evaluationDate => $composableBuilder(
    column: $table.evaluationDate,
    builder: (column) => ColumnFilters(column),
  );

  $$TeachingAssignmentsTableFilterComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.teachingAssignmentId,
      referencedTable: $db.teachingAssignments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TeachingAssignmentsTableFilterComposer(
            $db: $db,
            $table: $db.teachingAssignments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SchoolTermsTableFilterComposer get schoolTermId {
    final $$SchoolTermsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableFilterComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> gradesRefs(
    Expression<bool> Function($$GradesTableFilterComposer f) f,
  ) {
    final $$GradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.evaluationId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableFilterComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EvaluationsTableOrderingComposer
    extends Composer<_$AppDatabase, $EvaluationsTable> {
  $$EvaluationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxScore => $composableBuilder(
    column: $table.maxScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get evaluationDate => $composableBuilder(
    column: $table.evaluationDate,
    builder: (column) => ColumnOrderings(column),
  );

  $$TeachingAssignmentsTableOrderingComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableOrderingComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.teachingAssignmentId,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableOrderingComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$SchoolTermsTableOrderingComposer get schoolTermId {
    final $$SchoolTermsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableOrderingComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvaluationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EvaluationsTable> {
  $$EvaluationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get maxScore =>
      $composableBuilder(column: $table.maxScore, builder: (column) => column);

  GeneratedColumn<double> get coefficient => $composableBuilder(
    column: $table.coefficient,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get evaluationDate => $composableBuilder(
    column: $table.evaluationDate,
    builder: (column) => column,
  );

  $$TeachingAssignmentsTableAnnotationComposer get teachingAssignmentId {
    final $$TeachingAssignmentsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.teachingAssignmentId,
          referencedTable: $db.teachingAssignments,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TeachingAssignmentsTableAnnotationComposer(
                $db: $db,
                $table: $db.teachingAssignments,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$SchoolTermsTableAnnotationComposer get schoolTermId {
    final $$SchoolTermsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.schoolTermId,
      referencedTable: $db.schoolTerms,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolTermsTableAnnotationComposer(
            $db: $db,
            $table: $db.schoolTerms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> gradesRefs<T extends Object>(
    Expression<T> Function($$GradesTableAnnotationComposer a) f,
  ) {
    final $$GradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.evaluationId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableAnnotationComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EvaluationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EvaluationsTable,
          Evaluation,
          $$EvaluationsTableFilterComposer,
          $$EvaluationsTableOrderingComposer,
          $$EvaluationsTableAnnotationComposer,
          $$EvaluationsTableCreateCompanionBuilder,
          $$EvaluationsTableUpdateCompanionBuilder,
          (Evaluation, $$EvaluationsTableReferences),
          Evaluation,
          PrefetchHooks Function({
            bool teachingAssignmentId,
            bool schoolTermId,
            bool gradesRefs,
          })
        > {
  $$EvaluationsTableTableManager(_$AppDatabase db, $EvaluationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EvaluationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EvaluationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EvaluationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> teachingAssignmentId = const Value.absent(),
                Value<String> schoolTermId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> maxScore = const Value.absent(),
                Value<double> coefficient = const Value.absent(),
                Value<DateTime> evaluationDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvaluationsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                teachingAssignmentId: teachingAssignmentId,
                schoolTermId: schoolTermId,
                title: title,
                type: type,
                maxScore: maxScore,
                coefficient: coefficient,
                evaluationDate: evaluationDate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String teachingAssignmentId,
                required String schoolTermId,
                required String title,
                Value<String> type = const Value.absent(),
                required double maxScore,
                required double coefficient,
                required DateTime evaluationDate,
                Value<int> rowid = const Value.absent(),
              }) => EvaluationsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                teachingAssignmentId: teachingAssignmentId,
                schoolTermId: schoolTermId,
                title: title,
                type: type,
                maxScore: maxScore,
                coefficient: coefficient,
                evaluationDate: evaluationDate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EvaluationsTable, Evaluation>(table),
                  $$EvaluationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                teachingAssignmentId = false,
                schoolTermId = false,
                gradesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [if (gradesRefs) db.grades],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (teachingAssignmentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.teachingAssignmentId,
                            referencedTable: $$EvaluationsTableReferences
                                ._teachingAssignmentIdTable(db),
                            referencedColumn: $$EvaluationsTableReferences
                                ._teachingAssignmentIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (schoolTermId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.schoolTermId,
                            referencedTable: $$EvaluationsTableReferences
                                ._schoolTermIdTable(db),
                            referencedColumn: $$EvaluationsTableReferences
                                ._schoolTermIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (gradesRefs)
                        await $_getPrefetchedDataByColumns<
                          Evaluation,
                          $EvaluationsTable,
                          Grade,
                          $GradesTable
                        >(
                          currentTable: table,
                          referencedTable: $$EvaluationsTableReferences
                              ._gradesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$EvaluationsTableReferences(
                                db,
                                table,
                                p0,
                              ).gradesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'evaluation_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$EvaluationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EvaluationsTable,
      Evaluation,
      $$EvaluationsTableFilterComposer,
      $$EvaluationsTableOrderingComposer,
      $$EvaluationsTableAnnotationComposer,
      $$EvaluationsTableCreateCompanionBuilder,
      $$EvaluationsTableUpdateCompanionBuilder,
      (Evaluation, $$EvaluationsTableReferences),
      Evaluation,
      PrefetchHooks Function({
        bool teachingAssignmentId,
        bool schoolTermId,
        bool gradesRefs,
      })
    >;
typedef $$GradesTableCreateCompanionBuilder = GradesCompanion Function({
  required String id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  required String evaluationId,
  required String studentId,
  Value<double?> score,
  Value<String> comment,
  Value<String> status,
  Value<int> rowid,
});
typedef $$GradesTableUpdateCompanionBuilder = GradesCompanion Function({
  Value<String> id,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<DateTime?> deletedAt,
  Value<String> evaluationId,
  Value<String> studentId,
  Value<double?> score,
  Value<String> comment,
  Value<String> status,
  Value<int> rowid,
});

final class $$GradesTableReferences
    extends BaseReferences<_$AppDatabase, $GradesTable, Grade> {
  $$GradesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $EvaluationsTable _evaluationIdTable(_$AppDatabase db) =>
      db.evaluations.createAlias('grades__evaluation_id__evaluations__id');

  $$EvaluationsTableProcessedTableManager get evaluationId {
    final $_column = $_itemColumn<String>('evaluation_id')!;

    final manager = $$EvaluationsTableTableManager(
      $_db,
      $_db.evaluations,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_evaluationIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $StudentsTable _studentIdTable(_$AppDatabase db) =>
      db.students.createAlias('grades__student_id__students__id');

  $$StudentsTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<String>('student_id')!;

    final manager = $$StudentsTableTableManager(
      $_db,
      $_db.students,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$GradeAuditsTable, List<GradeAudit>>
  _gradeAuditsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.gradeAudits,
    aliasName: 'grades__id__grade_audits__grade_id',
  );

  $$GradeAuditsTableProcessedTableManager get gradeAuditsRefs {
    final manager = $$GradeAuditsTableTableManager(
      $_db,
      $_db.gradeAudits,
    ).filter((f) => f.gradeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradeAuditsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$GradesTableFilterComposer
    extends Composer<_$AppDatabase, $GradesTable> {
  $$GradesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  $$EvaluationsTableFilterComposer get evaluationId {
    final $$EvaluationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.evaluationId,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableFilterComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$StudentsTableFilterComposer get studentId {
    final $$StudentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableFilterComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> gradeAuditsRefs(
    Expression<bool> Function($$GradeAuditsTableFilterComposer f) f,
  ) {
    final $$GradeAuditsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.gradeAudits,
      getReferencedColumn: (t) => t.gradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradeAuditsTableFilterComposer(
            $db: $db,
            $table: $db.gradeAudits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$GradesTableOrderingComposer
    extends Composer<_$AppDatabase, $GradesTable> {
  $$GradesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  $$EvaluationsTableOrderingComposer get evaluationId {
    final $$EvaluationsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.evaluationId,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableOrderingComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$StudentsTableOrderingComposer get studentId {
    final $$StudentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableOrderingComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GradesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GradesTable> {
  $$GradesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<double> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$EvaluationsTableAnnotationComposer get evaluationId {
    final $$EvaluationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.evaluationId,
      referencedTable: $db.evaluations,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvaluationsTableAnnotationComposer(
            $db: $db,
            $table: $db.evaluations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$StudentsTableAnnotationComposer get studentId {
    final $$StudentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studentId,
      referencedTable: $db.students,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentsTableAnnotationComposer(
            $db: $db,
            $table: $db.students,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> gradeAuditsRefs<T extends Object>(
    Expression<T> Function($$GradeAuditsTableAnnotationComposer a) f,
  ) {
    final $$GradeAuditsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.gradeAudits,
      getReferencedColumn: (t) => t.gradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradeAuditsTableAnnotationComposer(
            $db: $db,
            $table: $db.gradeAudits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$GradesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GradesTable,
          Grade,
          $$GradesTableFilterComposer,
          $$GradesTableOrderingComposer,
          $$GradesTableAnnotationComposer,
          $$GradesTableCreateCompanionBuilder,
          $$GradesTableUpdateCompanionBuilder,
          (Grade, $$GradesTableReferences),
          Grade,
          PrefetchHooks Function({
            bool evaluationId,
            bool studentId,
            bool gradeAuditsRefs,
          })
        > {
  $$GradesTableTableManager(_$AppDatabase db, $GradesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GradesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GradesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GradesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> evaluationId = const Value.absent(),
                Value<String> studentId = const Value.absent(),
                Value<double?> score = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GradesCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                evaluationId: evaluationId,
                studentId: studentId,
                score: score,
                comment: comment,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String evaluationId,
                required String studentId,
                Value<double?> score = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GradesCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                evaluationId: evaluationId,
                studentId: studentId,
                score: score,
                comment: comment,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GradesTable, Grade>(table),
                  $$GradesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                evaluationId = false,
                studentId = false,
                gradeAuditsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (gradeAuditsRefs) db.gradeAudits,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (evaluationId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.evaluationId,
                            referencedTable: $$GradesTableReferences
                                ._evaluationIdTable(db),
                            referencedColumn: $$GradesTableReferences
                                ._evaluationIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (studentId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.studentId,
                            referencedTable: $$GradesTableReferences
                                ._studentIdTable(db),
                            referencedColumn: $$GradesTableReferences
                                ._studentIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (gradeAuditsRefs)
                        await $_getPrefetchedDataByColumns<
                          Grade,
                          $GradesTable,
                          GradeAudit,
                          $GradeAuditsTable
                        >(
                          currentTable: table,
                          referencedTable: $$GradesTableReferences
                              ._gradeAuditsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$GradesTableReferences(
                                db,
                                table,
                                p0,
                              ).gradeAuditsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'grade_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$GradesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GradesTable,
      Grade,
      $$GradesTableFilterComposer,
      $$GradesTableOrderingComposer,
      $$GradesTableAnnotationComposer,
      $$GradesTableCreateCompanionBuilder,
      $$GradesTableUpdateCompanionBuilder,
      (Grade, $$GradesTableReferences),
      Grade,
      PrefetchHooks Function({
        bool evaluationId,
        bool studentId,
        bool gradeAuditsRefs,
      })
    >;
typedef $$GradeAuditsTableCreateCompanionBuilder =
    GradeAuditsCompanion Function({
      required String id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String gradeId,
      Value<double?> oldScore,
      Value<double?> newScore,
      required String oldStatus,
      required String newStatus,
      Value<int> rowid,
    });
typedef $$GradeAuditsTableUpdateCompanionBuilder =
    GradeAuditsCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> gradeId,
      Value<double?> oldScore,
      Value<double?> newScore,
      Value<String> oldStatus,
      Value<String> newStatus,
      Value<int> rowid,
    });

final class $$GradeAuditsTableReferences
    extends BaseReferences<_$AppDatabase, $GradeAuditsTable, GradeAudit> {
  $$GradeAuditsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GradesTable _gradeIdTable(_$AppDatabase db) =>
      db.grades.createAlias('grade_audits__grade_id__grades__id');

  $$GradesTableProcessedTableManager get gradeId {
    final $_column = $_itemColumn<String>('grade_id')!;

    final manager = $$GradesTableTableManager(
      $_db,
      $_db.grades,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_gradeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GradeAuditsTableFilterComposer
    extends Composer<_$AppDatabase, $GradeAuditsTable> {
  $$GradeAuditsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get oldScore => $composableBuilder(
    column: $table.oldScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get newScore => $composableBuilder(
    column: $table.newScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get oldStatus => $composableBuilder(
    column: $table.oldStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get newStatus => $composableBuilder(
    column: $table.newStatus,
    builder: (column) => ColumnFilters(column),
  );

  $$GradesTableFilterComposer get gradeId {
    final $$GradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gradeId,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableFilterComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GradeAuditsTableOrderingComposer
    extends Composer<_$AppDatabase, $GradeAuditsTable> {
  $$GradeAuditsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get oldScore => $composableBuilder(
    column: $table.oldScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get newScore => $composableBuilder(
    column: $table.newScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get oldStatus => $composableBuilder(
    column: $table.oldStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get newStatus => $composableBuilder(
    column: $table.newStatus,
    builder: (column) => ColumnOrderings(column),
  );

  $$GradesTableOrderingComposer get gradeId {
    final $$GradesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gradeId,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableOrderingComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GradeAuditsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GradeAuditsTable> {
  $$GradeAuditsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<double> get oldScore =>
      $composableBuilder(column: $table.oldScore, builder: (column) => column);

  GeneratedColumn<double> get newScore =>
      $composableBuilder(column: $table.newScore, builder: (column) => column);

  GeneratedColumn<String> get oldStatus =>
      $composableBuilder(column: $table.oldStatus, builder: (column) => column);

  GeneratedColumn<String> get newStatus =>
      $composableBuilder(column: $table.newStatus, builder: (column) => column);

  $$GradesTableAnnotationComposer get gradeId {
    final $$GradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gradeId,
      referencedTable: $db.grades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GradesTableAnnotationComposer(
            $db: $db,
            $table: $db.grades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GradeAuditsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GradeAuditsTable,
          GradeAudit,
          $$GradeAuditsTableFilterComposer,
          $$GradeAuditsTableOrderingComposer,
          $$GradeAuditsTableAnnotationComposer,
          $$GradeAuditsTableCreateCompanionBuilder,
          $$GradeAuditsTableUpdateCompanionBuilder,
          (GradeAudit, $$GradeAuditsTableReferences),
          GradeAudit,
          PrefetchHooks Function({bool gradeId})
        > {
  $$GradeAuditsTableTableManager(_$AppDatabase db, $GradeAuditsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GradeAuditsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GradeAuditsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GradeAuditsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> gradeId = const Value.absent(),
                Value<double?> oldScore = const Value.absent(),
                Value<double?> newScore = const Value.absent(),
                Value<String> oldStatus = const Value.absent(),
                Value<String> newStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GradeAuditsCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                gradeId: gradeId,
                oldScore: oldScore,
                newScore: newScore,
                oldStatus: oldStatus,
                newStatus: newStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String gradeId,
                Value<double?> oldScore = const Value.absent(),
                Value<double?> newScore = const Value.absent(),
                required String oldStatus,
                required String newStatus,
                Value<int> rowid = const Value.absent(),
              }) => GradeAuditsCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                gradeId: gradeId,
                oldScore: oldScore,
                newScore: newScore,
                oldStatus: oldStatus,
                newStatus: newStatus,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GradeAuditsTable, GradeAudit>(table),
                  $$GradeAuditsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({gradeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (gradeId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.gradeId,
                        referencedTable: $$GradeAuditsTableReferences
                            ._gradeIdTable(db),
                        referencedColumn: $$GradeAuditsTableReferences
                            ._gradeIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GradeAuditsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GradeAuditsTable,
      GradeAudit,
      $$GradeAuditsTableFilterComposer,
      $$GradeAuditsTableOrderingComposer,
      $$GradeAuditsTableAnnotationComposer,
      $$GradeAuditsTableCreateCompanionBuilder,
      $$GradeAuditsTableUpdateCompanionBuilder,
      (GradeAudit, $$GradeAuditsTableReferences),
      GradeAudit,
      PrefetchHooks Function({bool gradeId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AcademicYearsTableTableManager get academicYears =>
      $$AcademicYearsTableTableManager(_db, _db.academicYears);
  $$SchoolTermsTableTableManager get schoolTerms =>
      $$SchoolTermsTableTableManager(_db, _db.schoolTerms);
  $$ClassroomsTableTableManager get classrooms =>
      $$ClassroomsTableTableManager(_db, _db.classrooms);
  $$StudentsTableTableManager get students =>
      $$StudentsTableTableManager(_db, _db.students);
  $$EnrollmentsTableTableManager get enrollments =>
      $$EnrollmentsTableTableManager(_db, _db.enrollments);
  $$SubjectsTableTableManager get subjects =>
      $$SubjectsTableTableManager(_db, _db.subjects);
  $$TeachingAssignmentsTableTableManager get teachingAssignments =>
      $$TeachingAssignmentsTableTableManager(_db, _db.teachingAssignments);
  $$AttendanceSessionsTableTableManager get attendanceSessions =>
      $$AttendanceSessionsTableTableManager(_db, _db.attendanceSessions);
  $$AttendanceRecordsTableTableManager get attendanceRecords =>
      $$AttendanceRecordsTableTableManager(_db, _db.attendanceRecords);
  $$EvaluationsTableTableManager get evaluations =>
      $$EvaluationsTableTableManager(_db, _db.evaluations);
  $$GradesTableTableManager get grades =>
      $$GradesTableTableManager(_db, _db.grades);
  $$GradeAuditsTableTableManager get gradeAudits =>
      $$GradeAuditsTableTableManager(_db, _db.gradeAudits);
}
