//----------------------------------------------------------------------------
//  System.Collections.Concurrent.dll: System.Collections.Concurrent, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Collections.Concurrent
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Collections.Concurrent;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib;

type

{ enums }

  //-------------namespace: System.Collections.Concurrent----------------
  [DNTypeName('System.Collections.Concurrent.EnumerablePartitionerOptions')]
  DNEnumerablePartitionerOptions = type Integer;
  DNEnumerablePartitionerOptionsHelper = record helper for DNEnumerablePartitionerOptions
  public const
    None = 0;
    NoBuffering = 1;
  end;




type


{ declares }

  DNBlockingCollection<T> = interface; // type: System.Collections.Concurrent.BlockingCollection`1, namespace: System.Collections.Concurrent
  DNConcurrentBag<T> = interface; // type: System.Collections.Concurrent.ConcurrentBag`1, namespace: System.Collections.Concurrent
  DNConcurrentDictionary<TKey, TValue> = interface; // type: System.Collections.Concurrent.ConcurrentDictionary`2, namespace: System.Collections.Concurrent
  DNConcurrentStack<T> = interface; // type: System.Collections.Concurrent.ConcurrentStack`1, namespace: System.Collections.Concurrent
  DNPartitioner<TSource> = interface; // type: System.Collections.Concurrent.Partitioner`1, namespace: System.Collections.Concurrent
  DNOrderablePartitioner<TSource> = interface; // type: System.Collections.Concurrent.OrderablePartitioner`1, namespace: System.Collections.Concurrent
  DNPartitioner = interface; // type: System.Collections.Concurrent.Partitioner, namespace: System.Collections.Concurrent


{ objects }

  //-------------namespace: System.Collections.Concurrent----------------
  DNBlockingCollectionClass<T> = interface(DNObjectClass)
  ['{784B8A0F-035A-5CD4-88FD-D68619E0FB3C}']
  { constructors } 

    {class} function init: DNBlockingCollection<T>; overload;
    {class} function init(boundedCapacity: Int32): DNBlockingCollection<T>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIProducerConsumerCollection<T>; boundedCapacity: Int32): DNBlockingCollection<T>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIProducerConsumerCollection<T>): DNBlockingCollection<T>; overload;

  { static methods } 

    {class} function AddToAny(collections: TArray<DNBlockingCollection<T>>; item: T): Int32; overload;
    {class} function AddToAny(collections: TArray<DNBlockingCollection<T>>; item: T; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Int32; overload;
    {class} function TryAddToAny(collections: TArray<DNBlockingCollection<T>>; item: T): Int32; overload;
    {class} function TryAddToAny(collections: TArray<DNBlockingCollection<T>>; item: T; timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Int32; overload;
    {class} function TryAddToAny(collections: TArray<DNBlockingCollection<T>>; item: T; millisecondsTimeout: Int32): Int32; overload;
    {class} function TryAddToAny(collections: TArray<DNBlockingCollection<T>>; item: T; millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Int32; overload;
    {class} function TakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T): Int32; overload;
    {class} function TakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Int32; overload;
    {class} function TryTakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T): Int32; overload;
    {class} function TryTakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T; timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Int32; overload;
    {class} function TryTakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T; millisecondsTimeout: Int32): Int32; overload;
    {class} function TryTakeFromAny(collections: TArray<DNBlockingCollection<T>>; out item: T; millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Int32; overload;

  end;

  [DNTypeName('System.Collections.Concurrent.BlockingCollection`1')]
  DNBlockingCollection<T> = interface(DDNC.System.Private.CoreLib.DNIEnumerable<T>)
  ['{CA7600AE-0181-3642-9461-F3352DA928CD}']
  { getters & setters } 

    function get_BoundedCapacity: Int32;
    function get_IsAddingCompleted: Boolean;
    function get_IsCompleted: Boolean;
    function get_Count: Int32;

  { methods } 

    procedure Add(item: T); overload;
    procedure Add(item: T; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken); overload;
    function TryAdd(item: T): Boolean; overload;
    function TryAdd(item: T; timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Boolean; overload;
    function TryAdd(item: T; millisecondsTimeout: Int32): Boolean; overload;
    function TryAdd(item: T; millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    function Take: T; overload;
    function Take(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): T; overload;
    function TryTake(out item: T): Boolean; overload;
    function TryTake(out item: T; timeout: DDNC.System.Private.CoreLib.DNTimeSpan): Boolean; overload;
    function TryTake(out item: T; millisecondsTimeout: Int32): Boolean; overload;
    function TryTake(out item: T; millisecondsTimeout: Int32; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): Boolean; overload;
    procedure CompleteAdding;
    procedure Dispose;
    function ToArray: TArray<T>;
    procedure CopyTo(&array: TArray<T>; index: Int32);
    function GetConsumingEnumerable: DDNC.System.Private.CoreLib.DNIEnumerable<T>; overload;
    function GetConsumingEnumerable(cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNIEnumerable<T>; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BoundedCapacity: Int32 read get_BoundedCapacity;
    property IsAddingCompleted: Boolean read get_IsAddingCompleted;
    property IsCompleted: Boolean read get_IsCompleted;
    property Count: Int32 read get_Count;
  end;

  TDNBlockingCollection<T> = class(TDNGenericImport<DNBlockingCollectionClass<T>, DNBlockingCollection<T>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNConcurrentBagClass<T> = interface(DNObjectClass)
  ['{114852FA-3905-5675-84D7-81624DF91FDC}']
  { constructors } 

    {class} function init: DNConcurrentBag<T>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIEnumerable<T>): DNConcurrentBag<T>; overload;

  end;

  [DNTypeName('System.Collections.Concurrent.ConcurrentBag`1')]
  DNConcurrentBag<T> = interface(DDNC.System.Private.CoreLib.DNIProducerConsumerCollection<T>)
  ['{6CBBF161-9B12-3C82-B2A7-5C3D9C30B4F8}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsEmpty: Boolean;

  { methods } 

    procedure Add(item: T);
    function TryTake(out result: T): Boolean;
    function TryPeek(out result: T): Boolean;
    procedure CopyTo(&array: TArray<T>; index: Int32);
    function ToArray: TArray<T>;
    procedure Clear;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<T>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsEmpty: Boolean read get_IsEmpty;
  end;

  TDNConcurrentBag<T> = class(TDNGenericImport<DNConcurrentBagClass<T>, DNConcurrentBag<T>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNConcurrentDictionaryClass<TKey, TValue> = interface(DNObjectClass)
  ['{BB35BF14-8796-54F3-BEFE-1349690CB7F1}']
  { constructors } 

    {class} function init: DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(concurrencyLevel: Int32; capacity: Int32): DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>): DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey>): DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>; comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey>): DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(concurrencyLevel: Int32; collection: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>; comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey>): DNConcurrentDictionary<TKey, TValue>; overload;
    {class} function init(concurrencyLevel: Int32; capacity: Int32; comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey>): DNConcurrentDictionary<TKey, TValue>; overload;

  end;

  [DNTypeName('System.Collections.Concurrent.ConcurrentDictionary`2')]
  DNConcurrentDictionary<TKey, TValue> = interface(DDNC.System.Private.CoreLib.DNIDictionary<TKey, TValue>)
  ['{98ABFBE8-EF07-39FE-B349-F67084034F13}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsEmpty: Boolean;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection<TKey>;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection<TValue>;

  { methods } 

    function TryAdd(key: TKey; value: TValue): Boolean;
    function ContainsKey(key: TKey): Boolean;
    function TryRemove(key: TKey; out value: TValue): Boolean; overload;
    function TryRemove(item: DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>): Boolean; overload;
    function TryGetValue(key: TKey; out value: TValue): Boolean;
    function TryUpdate(key: TKey; newValue: TValue; comparisonValue: TValue): Boolean;
    function ToArray: TArray<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>;
    function GetOrAdd(key: TKey; valueFactory: DDNC.System.Private.CoreLib.DNFunc<TKey, TValue>): TValue; overload;
    function GetOrAdd(key: TKey; value: TValue): TValue; overload;
    function AddOrUpdate(key: TKey; addValueFactory: DDNC.System.Private.CoreLib.DNFunc<TKey, TValue>; updateValueFactory: DDNC.System.Private.CoreLib.DNFunc<TKey, TValue, TValue>): TValue; overload;
    function AddOrUpdate(key: TKey; addValue: TValue; updateValueFactory: DDNC.System.Private.CoreLib.DNFunc<TKey, TValue, TValue>): TValue; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsEmpty: Boolean read get_IsEmpty;
    property Keys: DDNC.System.Private.CoreLib.DNICollection<TKey> read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNICollection<TValue> read get_Values;
  end;

  TDNConcurrentDictionary<TKey, TValue> = class(TDNGenericImport<DNConcurrentDictionaryClass<TKey, TValue>, DNConcurrentDictionary<TKey, TValue>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNConcurrentStackClass<T> = interface(DNObjectClass)
  ['{1A5FF45E-7F2D-5699-884F-091C98401A6C}']
  { constructors } 

    {class} function init: DNConcurrentStack<T>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIEnumerable<T>): DNConcurrentStack<T>; overload;

  end;

  [DNTypeName('System.Collections.Concurrent.ConcurrentStack`1')]
  DNConcurrentStack<T> = interface(DDNC.System.Private.CoreLib.DNIProducerConsumerCollection<T>)
  ['{A567EEC7-9E85-3AD2-9C88-C29AD3FE0B60}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Count: Int32;

  { methods } 

    procedure Clear;
    procedure CopyTo(&array: TArray<T>; index: Int32);
    procedure Push(item: T);
    procedure PushRange(items: TArray<T>); overload;
    procedure PushRange(items: TArray<T>; startIndex: Int32; count: Int32); overload;
    function TryPeek(out result: T): Boolean;
    function TryPop(out result: T): Boolean;
    function TryPopRange(items: TArray<T>): Int32; overload;
    function TryPopRange(items: TArray<T>; startIndex: Int32; count: Int32): Int32; overload;
    function ToArray: TArray<T>;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<T>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsEmpty: Boolean read get_IsEmpty;
    property Count: Int32 read get_Count;
  end;

  TDNConcurrentStack<T> = class(TDNGenericImport<DNConcurrentStackClass<T>, DNConcurrentStack<T>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNPartitionerClass<TSource> = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{611A854E-16C9-52F4-A6B7-40A4E9716311}']
  end;

  [DNTypeName('System.Collections.Concurrent.Partitioner`1')]
  DNPartitioner<TSource> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{96016DA0-49F1-3532-AAB1-B1AD0DB751A8}']
  { getters & setters } 

    function get_SupportsDynamicPartitions: Boolean;

  { methods } 

    function GetPartitions(partitionCount: Int32): DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNIEnumerator<TSource>>;
    function GetDynamicPartitions: DDNC.System.Private.CoreLib.DNIEnumerable<TSource>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property SupportsDynamicPartitions: Boolean read get_SupportsDynamicPartitions;
  end;

  TDNPartitioner<TSource> = class(TDNGenericImport<DNPartitionerClass<TSource>, DNPartitioner<TSource>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNOrderablePartitionerClass<TSource> = interface(DNPartitionerClass<TSource>)
  ['{25EA5339-5D9F-5197-BDD2-6BC54D474C3C}']
  end;

  [DNTypeName('System.Collections.Concurrent.OrderablePartitioner`1')]
  DNOrderablePartitioner<TSource> = interface(DNPartitioner<TSource>)
  ['{3839891C-4ADC-3CEC-990A-A8101952B8AC}']
  { getters & setters } 

    function get_KeysOrderedInEachPartition: Boolean;
    function get_KeysOrderedAcrossPartitions: Boolean;
    function get_KeysNormalized: Boolean;
    function get_SupportsDynamicPartitions: Boolean;

  { methods } 

    function GetOrderablePartitions(partitionCount: Int32): DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNIEnumerator<DDNC.System.Private.CoreLib.DNKeyValuePair<Int64, TSource>>>;
    function GetOrderableDynamicPartitions: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Private.CoreLib.DNKeyValuePair<Int64, TSource>>;
    function GetPartitions(partitionCount: Int32): DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNIEnumerator<TSource>>;
    function GetDynamicPartitions: DDNC.System.Private.CoreLib.DNIEnumerable<TSource>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property KeysOrderedInEachPartition: Boolean read get_KeysOrderedInEachPartition;
    property KeysOrderedAcrossPartitions: Boolean read get_KeysOrderedAcrossPartitions;
    property KeysNormalized: Boolean read get_KeysNormalized;
    property SupportsDynamicPartitions: Boolean read get_SupportsDynamicPartitions;
  end;

  TDNOrderablePartitioner<TSource> = class(TDNGenericImport<DNOrderablePartitionerClass<TSource>, DNOrderablePartitioner<TSource>>) end;

  //-------------namespace: System.Collections.Concurrent----------------
  DNPartitionerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C7E2A61F-8C28-5A05-AF1A-0DCF08AD4635}']
  { static methods } 

    {class} function Create(fromInclusive: Int64; toExclusive: Int64): DNOrderablePartitioner<DDNC.System.Private.CoreLib.DNTuple<Int64, Int64>>; overload;
    {class} function Create(fromInclusive: Int64; toExclusive: Int64; rangeSize: Int64): DNOrderablePartitioner<DDNC.System.Private.CoreLib.DNTuple<Int64, Int64>>; overload;
    {class} function Create(fromInclusive: Int32; toExclusive: Int32): DNOrderablePartitioner<DDNC.System.Private.CoreLib.DNTuple<Int32, Int32>>; overload;
    {class} function Create(fromInclusive: Int32; toExclusive: Int32; rangeSize: Int32): DNOrderablePartitioner<DDNC.System.Private.CoreLib.DNTuple<Int32, Int32>>; overload;

  end;

  [DNTypeName('System.Collections.Concurrent.Partitioner')]
  DNPartitioner = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{78A44796-B0CB-3834-9CFD-F5766958DBBC}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNPartitioner = class(TDNGenericImport<DNPartitionerClass, DNPartitioner>) end;


implementation


initialization
  LoadAssemblyModule('System.Collections.Concurrent, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.