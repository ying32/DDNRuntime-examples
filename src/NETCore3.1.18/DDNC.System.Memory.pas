//----------------------------------------------------------------------------
//  System.Memory.dll: System.Memory, Version=4.2.1.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Memory
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Memory;

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


{ declares }

  DNIBufferWriter<T> = interface; // type: System.Buffers.IBufferWriter`1, namespace: System.Buffers
  DNArrayBufferWriter<T> = interface; // type: System.Buffers.ArrayBufferWriter`1, namespace: System.Buffers
  DNBuffersExtensions = interface; // type: System.Buffers.BuffersExtensions, namespace: System.Buffers
  DNMemoryPool<T> = interface; // type: System.Buffers.MemoryPool`1, namespace: System.Buffers
  DNReadOnlySequenceSegment<T> = interface; // type: System.Buffers.ReadOnlySequenceSegment`1, namespace: System.Buffers
  DNSequenceReaderExtensions = interface; // type: System.Buffers.SequenceReaderExtensions, namespace: System.Buffers
  DNBase64 = interface; // type: System.Buffers.Text.Base64, namespace: System.Buffers.Text
  DNSequenceMarshal = interface; // type: System.Runtime.InteropServices.SequenceMarshal, namespace: System.Runtime.InteropServices
  DNReadOnlySequence<T> = interface; // type: System.Buffers.ReadOnlySequence`1, namespace: System.Buffers
  DNReadOnlySequence_Enumerator<T> = interface; // type: System.Buffers.ReadOnlySequence`1+Enumerator, namespace: System.Buffers
  DNSequenceReader<T> = interface; // type: System.Buffers.SequenceReader`1, namespace: System.Buffers
  DNSequencePosition = interface; // type: System.SequencePosition, namespace: System


{ objects }

  //-------------namespace: System.Buffers----------------
  [DNTypeName('System.Buffers.IBufferWriter`1')]
  DNIBufferWriter<T> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{89472571-765F-32B2-945C-CEF8AE50EF89}']
  { methods } 

    procedure Advance(count: Int32);
    function GetMemory(sizeHint: Int32): DDNC.System.Private.CoreLib.DNMemory<T>;
    function GetSpan(sizeHint: Int32): DDNC.System.Private.CoreLib.DNSpan<T>;

  end;

  //-------------namespace: System.Buffers----------------
  DNArrayBufferWriterClass<T> = interface(DNObjectClass)
  ['{6853AA82-26A0-54C9-9E09-67F7348EE359}']
  { constructors } 

    {class} function init: DNArrayBufferWriter<T>; overload;
    {class} function init(initialCapacity: Int32): DNArrayBufferWriter<T>; overload;

  end;

  [DNTypeName('System.Buffers.ArrayBufferWriter`1')]
  DNArrayBufferWriter<T> = interface(DNIBufferWriter<T>)
  ['{91308CD5-1DF9-3F8B-A7BE-EBAB69E8E97A}']
  { getters & setters } 

    function get_WrittenMemory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;
    function get_WrittenSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>;
    function get_WrittenCount: Int32;
    function get_Capacity: Int32;
    function get_FreeCapacity: Int32;

  { methods } 

    procedure Clear;
    procedure Advance(count: Int32);
    function GetMemory(sizeHint: Int32): DDNC.System.Private.CoreLib.DNMemory<T>;
    function GetSpan(sizeHint: Int32): DDNC.System.Private.CoreLib.DNSpan<T>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property WrittenMemory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_WrittenMemory;
    property WrittenSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T> read get_WrittenSpan;
    property WrittenCount: Int32 read get_WrittenCount;
    property Capacity: Int32 read get_Capacity;
    property FreeCapacity: Int32 read get_FreeCapacity;
  end;

  TDNArrayBufferWriter<T> = class(TDNGenericImport<DNArrayBufferWriterClass<T>, DNArrayBufferWriter<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNBuffersExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{39B51511-643F-5DD6-94D3-4365480E7635}']
  end;

  [DNTypeName('System.Buffers.BuffersExtensions')]
  DNBuffersExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{21CFACB9-AE0C-3411-B896-F2C6D4727A15}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNBuffersExtensions = class(TDNGenericImport<DNBuffersExtensionsClass, DNBuffersExtensions>) end;

  //-------------namespace: System.Buffers----------------
  DNMemoryPoolClass<T> = interface(DNObjectClass)
  ['{6D20EFA5-3B31-54B6-BA44-FABD78350B5C}']
  { static getter & setter } 

    {class} function get_Shared: DNMemoryPool<T>;

  { static propertys } 

    {class} property Shared: DNMemoryPool<T> read get_Shared;
  end;

  [DNTypeName('System.Buffers.MemoryPool`1')]
  DNMemoryPool<T> = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{0FA725D8-3708-319A-BCEE-0578B74F55CE}']
  { getters & setters } 

    function get_MaxBufferSize: Int32;

  { methods } 

    function Rent(minBufferSize: Int32): DDNC.System.Private.CoreLib.DNIMemoryOwner<T>;
    procedure Dispose;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property MaxBufferSize: Int32 read get_MaxBufferSize;
  end;

  TDNMemoryPool<T> = class(TDNGenericImport<DNMemoryPoolClass<T>, DNMemoryPool<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequenceSegmentClass<T> = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{8AF4D17F-8908-5681-B6F9-2B2600F2FE6D}']
  end;

  [DNTypeName('System.Buffers.ReadOnlySequenceSegment`1')]
  DNReadOnlySequenceSegment<T> = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{6B6246BC-DA4A-3C53-B8DF-9413C2F65CE1}']
  { getters & setters } 

    function get_Memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;
    function get_Next: DNReadOnlySequenceSegment<T>;
    function get_RunningIndex: Int64;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_Memory;
    property Next: DNReadOnlySequenceSegment<T> read get_Next;
    property RunningIndex: Int64 read get_RunningIndex;
  end;

  TDNReadOnlySequenceSegment<T> = class(TDNGenericImport<DNReadOnlySequenceSegmentClass<T>, DNReadOnlySequenceSegment<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNSequenceReaderExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{E5C166B6-E94B-53FB-A53E-4A1D4C0B37DF}']
  { static methods } 

    {class} function TryReadLittleEndian(out reader: DNSequenceReader<Byte>; out value: Int16): Boolean; overload;
    {class} function TryReadBigEndian(out reader: DNSequenceReader<Byte>; out value: Int16): Boolean; overload;
    {class} function TryReadLittleEndian(out reader: DNSequenceReader<Byte>; out value: Int32): Boolean; overload;
    {class} function TryReadBigEndian(out reader: DNSequenceReader<Byte>; out value: Int32): Boolean; overload;
    {class} function TryReadLittleEndian(out reader: DNSequenceReader<Byte>; out value: Int64): Boolean; overload;
    {class} function TryReadBigEndian(out reader: DNSequenceReader<Byte>; out value: Int64): Boolean; overload;

  end;

  [DNTypeName('System.Buffers.SequenceReaderExtensions')]
  DNSequenceReaderExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{2DF60DC4-9611-3660-AF58-1DD4C73FC386}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNSequenceReaderExtensions = class(TDNGenericImport<DNSequenceReaderExtensionsClass, DNSequenceReaderExtensions>) end;

  //-------------namespace: System.Buffers.Text----------------
  DNBase64Class = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{32A1FF3C-DC43-5109-AB69-138D74B139F6}']
  { static methods } 

    {class} function DecodeFromUtf8(utf8: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; bytes: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesConsumed: Int32; out bytesWritten: Int32; isFinalBlock: Boolean): DDNC.System.Private.CoreLib.DNOperationStatus;
    {class} function GetMaxDecodedFromUtf8Length(length: Int32): Int32;
    {class} function DecodeFromUtf8InPlace(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32): DDNC.System.Private.CoreLib.DNOperationStatus;
    {class} function EncodeToUtf8(bytes: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; utf8: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesConsumed: Int32; out bytesWritten: Int32; isFinalBlock: Boolean): DDNC.System.Private.CoreLib.DNOperationStatus;
    {class} function GetMaxEncodedToUtf8Length(length: Int32): Int32;
    {class} function EncodeToUtf8InPlace(buffer: DDNC.System.Private.CoreLib.DNSpan<Byte>; dataLength: Int32; out bytesWritten: Int32): DDNC.System.Private.CoreLib.DNOperationStatus;

  end;

  [DNTypeName('System.Buffers.Text.Base64')]
  DNBase64 = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{CA432AC9-0C99-3CE2-B90F-A551F413A345}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNBase64 = class(TDNGenericImport<DNBase64Class, DNBase64>) end;

  //-------------namespace: System.Runtime.InteropServices----------------
  DNSequenceMarshalClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{8094B07D-7BC5-5FF4-B985-13457FE57FF5}']
  end;

  [DNTypeName('System.Runtime.InteropServices.SequenceMarshal')]
  DNSequenceMarshal = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{CC8C3CB9-471F-3627-8043-83619F681A5D}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNSequenceMarshal = class(TDNGenericImport<DNSequenceMarshalClass, DNSequenceMarshal>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequenceClass<T> = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{67C02017-B470-5D9E-9152-815174CDB811}']
  { constructors } 

    {class} function init(startSegment: DNReadOnlySequenceSegment<T>; startIndex: Int32; endSegment: DNReadOnlySequenceSegment<T>; endIndex: Int32): DNReadOnlySequence<T>; overload;
    {class} function init(&array: TArray<T>): DNReadOnlySequence<T>; overload;
    {class} function init(&array: TArray<T>; start: Int32; length: Int32): DNReadOnlySequence<T>; overload;
    {class} function init(memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>): DNReadOnlySequence<T>; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNReadOnlySequence<T>;

  { static fields } 

    {class} property Empty: DNReadOnlySequence<T> read __fakeFieldGet_Empty;

  end;

  [DNTypeName('System.Buffers.ReadOnlySequence`1')]
  DNReadOnlySequence<T> = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{00FACC74-FDC6-32BE-AAEC-CBAE66A94DD0}']
  { getters & setters } 

    function get_Length: Int64;
    function get_IsEmpty: Boolean;
    function get_IsSingleSegment: Boolean;
    function get_First: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;
    function get_FirstSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>;
    function get_Start: DNSequencePosition;
    function get_End: DNSequencePosition;

  { methods } 

    function Slice(start: Int64; length: Int64): DNReadOnlySequence<T>; overload;
    function Slice(start: Int64; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; length: Int64): DNReadOnlySequence<T>; overload;
    function Slice(start: Int32; length: Int32): DNReadOnlySequence<T>; overload;
    function Slice(start: Int32; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; length: Int32): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition; &end: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: DNSequencePosition): DNReadOnlySequence<T>; overload;
    function Slice(start: Int64): DNReadOnlySequence<T>; overload;
    function ToString: string;
    function GetEnumerator: DNReadOnlySequence_Enumerator<T>;
    function GetPosition(offset: Int64): DNSequencePosition; overload;
    function GetPosition(offset: Int64; origin: DNSequencePosition): DNSequencePosition; overload;
    function TryGet(out position: DNSequencePosition; out memory: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>; advance: Boolean): Boolean;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Length: Int64 read get_Length;
    property IsEmpty: Boolean read get_IsEmpty;
    property IsSingleSegment: Boolean read get_IsSingleSegment;
    property First: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_First;
    property FirstSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T> read get_FirstSpan;
    property Start: DNSequencePosition read get_Start;
    property &End: DNSequencePosition read get_End;
  end;

  TDNReadOnlySequence<T> = class(TDNGenericImport<DNReadOnlySequenceClass<T>, DNReadOnlySequence<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNReadOnlySequence_EnumeratorClass<T> = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{E8A94807-D376-5A98-B741-217450A52DB7}']
  { constructors } 

    {class} function init(out sequence: DNReadOnlySequence<T>): DNReadOnlySequence_Enumerator<T>;

  end;

  [DNTypeName('System.Buffers.ReadOnlySequence`1+Enumerator')]
  DNReadOnlySequence_Enumerator<T> = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{3ACBF2FA-A6AE-3DBF-BDCF-50CA1B2C77EB}']
  { getters & setters } 

    function get_Current: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T>;

  { methods } 

    function MoveNext: Boolean;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Current: DDNC.System.Private.CoreLib.DNReadOnlyMemory<T> read get_Current;
  end;

  TDNReadOnlySequence_Enumerator<T> = class(TDNGenericImport<DNReadOnlySequence_EnumeratorClass<T>, DNReadOnlySequence_Enumerator<T>>) end;

  //-------------namespace: System.Buffers----------------
  DNSequenceReaderClass<T> = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{D780E622-51BB-5D64-9742-2D2981C22A83}']
  { constructors } 

    {class} function init(sequence: DNReadOnlySequence<T>): DNSequenceReader<T>;

  end;

  [DNTypeName('System.Buffers.SequenceReader`1')]
  DNSequenceReader<T> = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{2A96E036-4D6E-32DC-AD0F-8A379259E1CA}']
  { getters & setters } 

    function get_End: Boolean;
    function get_Sequence: DNReadOnlySequence<T>;
    function get_Position: DNSequencePosition;
    function get_CurrentSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>;
    function get_CurrentSpanIndex: Int32;
    function get_UnreadSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>;
    function get_Consumed: Int64;
    function get_Remaining: Int64;
    function get_Length: Int64;

  { methods } 

    function TryPeek(out value: T): Boolean;
    function TryRead(out value: T): Boolean;
    procedure Rewind(count: Int64);
    procedure Advance(count: Int64);
    function TryCopyTo(destination: DDNC.System.Private.CoreLib.DNSpan<T>): Boolean;
    function TryReadTo(out span: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; delimiter: T; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadTo(out span: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; delimiter: T; delimiterEscape: T; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadTo(out sequence: DNReadOnlySequence<T>; delimiter: T; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadTo(out sequence: DNReadOnlySequence<T>; delimiter: T; delimiterEscape: T; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadToAny(out span: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; delimiters: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadToAny(out sequence: DNReadOnlySequence<T>; delimiters: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; advancePastDelimiter: Boolean): Boolean; overload;
    function TryReadTo(out sequence: DNReadOnlySequence<T>; delimiter: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; advancePastDelimiter: Boolean): Boolean; overload;
    function TryAdvanceTo(delimiter: T; advancePastDelimiter: Boolean): Boolean;
    function TryAdvanceToAny(delimiters: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; advancePastDelimiter: Boolean): Boolean;
    function AdvancePast(value: T): Int64;
    function AdvancePastAny(values: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>): Int64; overload;
    function AdvancePastAny(value0: T; value1: T; value2: T; value3: T): Int64; overload;
    function AdvancePastAny(value0: T; value1: T; value2: T): Int64; overload;
    function AdvancePastAny(value0: T; value1: T): Int64; overload;
    function IsNext(next: T; advancePast: Boolean): Boolean; overload;
    function IsNext(next: DDNC.System.Private.CoreLib.DNReadOnlySpan<T>; advancePast: Boolean): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property &End: Boolean read get_End;
    property Sequence: DNReadOnlySequence<T> read get_Sequence;
    property Position: DNSequencePosition read get_Position;
    property CurrentSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T> read get_CurrentSpan;
    property CurrentSpanIndex: Int32 read get_CurrentSpanIndex;
    property UnreadSpan: DDNC.System.Private.CoreLib.DNReadOnlySpan<T> read get_UnreadSpan;
    property Consumed: Int64 read get_Consumed;
    property Remaining: Int64 read get_Remaining;
    property Length: Int64 read get_Length;
  end;

  TDNSequenceReader<T> = class(TDNGenericImport<DNSequenceReaderClass<T>, DNSequenceReader<T>>) end;

  //-------------namespace: System----------------
  DNSequencePositionClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{0057A3AE-12BB-52A4-A6DB-2768F74BE0A5}']
  { constructors } 

    {class} function init(&object: DDNC.System.Private.CoreLib.DNObject; integer: Int32): DNSequencePosition;

  end;

  [DNTypeName('System.SequencePosition')]
  DNSequencePosition = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{B08963FA-895E-34F0-9778-E5E693C76A8B}']
  { methods } 

    function GetObject: DDNC.System.Private.CoreLib.DNObject;
    function GetInteger: Int32;
    function Equals(other: DNSequencePosition): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSequencePosition = class(TDNGenericImport<DNSequencePositionClass, DNSequencePosition>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Memory, Version=4.2.1.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
