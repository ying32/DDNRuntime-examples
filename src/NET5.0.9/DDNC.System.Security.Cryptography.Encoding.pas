//----------------------------------------------------------------------------
//  System.Security.Cryptography.Encoding.dll: System.Security.Cryptography.Encoding, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Security.Cryptography.Encoding
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Security.Cryptography.Encoding;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Security.Cryptography.Primitives;

type

{ enums }

  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.FromBase64TransformMode')]
  DNFromBase64TransformMode = type Integer;
  DNFromBase64TransformModeHelper = record helper for DNFromBase64TransformMode
  public const
    IgnoreWhiteSpaces = 0;
    DoNotIgnoreWhiteSpaces = 1;
  end;


  //-------------namespace: System.Security.Cryptography----------------
  [DNTypeName('System.Security.Cryptography.OidGroup')]
  DNOidGroup = type Integer;
  DNOidGroupHelper = record helper for DNOidGroup
  public const
    All = 0;
    HashAlgorithm = 1;
    EncryptionAlgorithm = 2;
    PublicKeyAlgorithm = 3;
    SignatureAlgorithm = 4;
    Attribute = 5;
    ExtensionOrAttribute = 6;
    EnhancedKeyUsage = 7;
    Policy = 8;
    Template = 9;
    KeyDerivationFunction = 10;
  end;




type


{ declares }

  DNAsnEncodedData = interface; // type: System.Security.Cryptography.AsnEncodedData, namespace: System.Security.Cryptography
  DNAsnEncodedDataCollection = interface; // type: System.Security.Cryptography.AsnEncodedDataCollection, namespace: System.Security.Cryptography
  DNAsnEncodedDataEnumerator = interface; // type: System.Security.Cryptography.AsnEncodedDataEnumerator, namespace: System.Security.Cryptography
  DNFromBase64Transform = interface; // type: System.Security.Cryptography.FromBase64Transform, namespace: System.Security.Cryptography
  DNOid = interface; // type: System.Security.Cryptography.Oid, namespace: System.Security.Cryptography
  DNOidCollection = interface; // type: System.Security.Cryptography.OidCollection, namespace: System.Security.Cryptography
  DNOidEnumerator = interface; // type: System.Security.Cryptography.OidEnumerator, namespace: System.Security.Cryptography
  DNPemEncoding = interface; // type: System.Security.Cryptography.PemEncoding, namespace: System.Security.Cryptography
  DNToBase64Transform = interface; // type: System.Security.Cryptography.ToBase64Transform, namespace: System.Security.Cryptography
  DNPemFields = interface; // type: System.Security.Cryptography.PemFields, namespace: System.Security.Cryptography


{ objects }

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{1F2314F1-B415-571F-9C81-CF7AD50E4A89}']
  { constructors } 

    {class} function init(rawData: TArray<Byte>): DNAsnEncodedData; overload;
    {class} function init(rawData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNAsnEncodedData; overload;
    {class} function init(asnEncodedData: DNAsnEncodedData): DNAsnEncodedData; overload;
    {class} function init(oid: DNOid; rawData: TArray<Byte>): DNAsnEncodedData; overload;
    {class} function init(oid: string; rawData: TArray<Byte>): DNAsnEncodedData; overload;
    {class} function init(oid: DNOid; rawData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNAsnEncodedData; overload;
    {class} function init(oid: string; rawData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): DNAsnEncodedData; overload;

  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedData')]
  DNAsnEncodedData = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{AA6D94A8-2ECB-3BFE-B861-5BAC2838BCF0}']
  { getters & setters } 

    function get_Oid: DNOid;
    procedure set_Oid(value: DNOid);
    function get_RawData: TArray<Byte>;
    procedure set_RawData(value: TArray<Byte>);

  { methods } 

    procedure CopyFrom(asnEncodedData: DNAsnEncodedData);
    function Format(multiLine: Boolean): string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Oid: DNOid read get_Oid write set_Oid;
    property RawData: TArray<Byte> read get_RawData write set_RawData;
  end;

  TDNAsnEncodedData = class(TDNGenericImport<DNAsnEncodedDataClass, DNAsnEncodedData>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataCollectionClass = interface(DNObjectClass)
  ['{2BB70D5E-3C53-519F-830B-FCBAE2654FD0}']
  { constructors } 

    {class} function init: DNAsnEncodedDataCollection; overload;
    {class} function init(asnEncodedData: DNAsnEncodedData): DNAsnEncodedDataCollection; overload;

  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedDataCollection')]
  DNAsnEncodedDataCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{8F4FA996-614A-35FF-9CF9-EB7886DF5C4F}']
  { getters & setters } 

    function get_Item(index: Int32): DNAsnEncodedData;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(asnEncodedData: DNAsnEncodedData): Int32;
    procedure Remove(asnEncodedData: DNAsnEncodedData);
    function GetEnumerator: DNAsnEncodedDataEnumerator;
    procedure CopyTo(&array: TArray<DNAsnEncodedData>; index: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[index: Int32]: DNAsnEncodedData read get_Item; default;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNAsnEncodedDataCollection = class(TDNGenericImport<DNAsnEncodedDataCollectionClass, DNAsnEncodedDataCollection>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNAsnEncodedDataEnumeratorClass = interface(DNObjectClass)
  ['{6313CE7B-BB3F-5E1E-86ED-851151CB7745}']
  end;

  [DNTypeName('System.Security.Cryptography.AsnEncodedDataEnumerator')]
  DNAsnEncodedDataEnumerator = interface(DDNC.System.Private.CoreLib.DNIEnumerator)
  ['{908ADB0F-78F3-30AB-9E21-EFB4E5542E79}']
  { getters & setters } 

    function get_Current: DNAsnEncodedData;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Current: DNAsnEncodedData read get_Current;
  end;

  TDNAsnEncodedDataEnumerator = class(TDNGenericImport<DNAsnEncodedDataEnumeratorClass, DNAsnEncodedDataEnumerator>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNFromBase64TransformClass = interface(DNObjectClass)
  ['{F876A039-E25B-5C89-86C2-3C9969B05A3B}']
  { constructors } 

    {class} function init: DNFromBase64Transform; overload;
    {class} function init(whitespaces: DNFromBase64TransformMode): DNFromBase64Transform; overload;

  end;

  [DNTypeName('System.Security.Cryptography.FromBase64Transform')]
  DNFromBase64Transform = interface(DDNC.System.Security.Cryptography.Primitives.DNICryptoTransform)
  ['{DE6919B8-A590-30F9-98C7-0515A239AF32}']
  { getters & setters } 

    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Clear;
    procedure Dispose;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNFromBase64Transform = class(TDNGenericImport<DNFromBase64TransformClass, DNFromBase64Transform>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{BC537203-AB09-5132-8B56-34B5D475CF6E}']
  { constructors } 

    {class} function init: DNOid; overload;
    {class} function init(oid: string): DNOid; overload;
    {class} function init(value: string; friendlyName: string): DNOid; overload;
    {class} function init(oid: DNOid): DNOid; overload;

  { static methods } 

    {class} function FromFriendlyName(friendlyName: string; group: DNOidGroup): DNOid;
    {class} function FromOidValue(oidValue: string; group: DNOidGroup): DNOid;

  end;

  [DNTypeName('System.Security.Cryptography.Oid')]
  DNOid = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{40A4D241-A36B-32D9-98B6-D8D6033D8C97}']
  { getters & setters } 

    function get_Value: string;
    procedure set_Value(value: string);
    function get_FriendlyName: string;
    procedure set_FriendlyName(value: string);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Value: string read get_Value write set_Value;
    property FriendlyName: string read get_FriendlyName write set_FriendlyName;
  end;

  TDNOid = class(TDNGenericImport<DNOidClass, DNOid>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidCollectionClass = interface(DNObjectClass)
  ['{D50DED31-C4B8-5562-8676-8CA933AD6514}']
  { constructors } 

    {class} function init: DNOidCollection;

  end;

  [DNTypeName('System.Security.Cryptography.OidCollection')]
  DNOidCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{1872EBD4-778A-3049-8300-402E1AD5CC9D}']
  { getters & setters } 

    function get_Item(index: Int32): DNOid; overload;
    function get_Item(oid: string): DNOid; overload;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(oid: DNOid): Int32;
    function GetEnumerator: DNOidEnumerator;
    procedure CopyTo(&array: TArray<DNOid>; index: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[index: Int32]: DNOid read get_Item; default;
    property Item[oid: string]: DNOid read get_Item; default;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNOidCollection = class(TDNGenericImport<DNOidCollectionClass, DNOidCollection>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNOidEnumeratorClass = interface(DNObjectClass)
  ['{4F5C84C1-0D2A-542D-8ECC-9611E1E9C4B7}']
  end;

  [DNTypeName('System.Security.Cryptography.OidEnumerator')]
  DNOidEnumerator = interface(DDNC.System.Private.CoreLib.DNIEnumerator)
  ['{62731FFD-7BB2-3CDE-92A3-D052E115431D}']
  { getters & setters } 

    function get_Current: DNOid;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Current: DNOid read get_Current;
  end;

  TDNOidEnumerator = class(TDNGenericImport<DNOidEnumeratorClass, DNOidEnumerator>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNPemEncodingClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{68810050-F1D2-58BD-BC1C-C8BD955B13DA}']
  { static methods } 

    {class} function Find(pemData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>): DNPemFields;
    {class} function TryFind(pemData: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; out fields: DNPemFields): Boolean;
    {class} function GetEncodedSize(labelLength: Int32; dataLength: Int32): Int32;
    {class} function TryWrite(&label: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; data: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; destination: DDNC.System.Private.CoreLib.DNSpan<Char>; out charsWritten: Int32): Boolean;
    {class} function Write(&label: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; data: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>): TArray<Char>;

  end;

  [DNTypeName('System.Security.Cryptography.PemEncoding')]
  DNPemEncoding = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9CB8136F-2A3C-32E8-8D40-7FA82C7DEEE5}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNPemEncoding = class(TDNGenericImport<DNPemEncodingClass, DNPemEncoding>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNToBase64TransformClass = interface(DNObjectClass)
  ['{D469C0FC-2298-5D42-8ED0-6F7CEB462A68}']
  { constructors } 

    {class} function init: DNToBase64Transform;

  end;

  [DNTypeName('System.Security.Cryptography.ToBase64Transform')]
  DNToBase64Transform = interface(DDNC.System.Security.Cryptography.Primitives.DNICryptoTransform)
  ['{671511C1-9EC9-3686-A7A8-FECB045A6A85}']
  { getters & setters } 

    function get_InputBlockSize: Int32;
    function get_OutputBlockSize: Int32;
    function get_CanTransformMultipleBlocks: Boolean;
    function get_CanReuseTransform: Boolean;

  { methods } 

    function TransformBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32; outputBuffer: TArray<Byte>; outputOffset: Int32): Int32;
    function TransformFinalBlock(inputBuffer: TArray<Byte>; inputOffset: Int32; inputCount: Int32): TArray<Byte>;
    procedure Dispose;
    procedure Clear;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property InputBlockSize: Int32 read get_InputBlockSize;
    property OutputBlockSize: Int32 read get_OutputBlockSize;
    property CanTransformMultipleBlocks: Boolean read get_CanTransformMultipleBlocks;
    property CanReuseTransform: Boolean read get_CanReuseTransform;
  end;

  TDNToBase64Transform = class(TDNGenericImport<DNToBase64TransformClass, DNToBase64Transform>) end;

  //-------------namespace: System.Security.Cryptography----------------
  DNPemFieldsClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{ECF114F0-7E3C-59F5-BCCC-68E4D3E826EE}']
  end;

  [DNTypeName('System.Security.Cryptography.PemFields')]
  DNPemFields = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{955C7E06-50E6-3625-8ABF-9C6C589D351D}']
  { getters & setters } 

    function get_Location: DDNC.System.Private.CoreLib.DNRange;
    function get_Label: DDNC.System.Private.CoreLib.DNRange;
    function get_Base64Data: DDNC.System.Private.CoreLib.DNRange;
    function get_DecodedDataLength: Int32;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Location: DDNC.System.Private.CoreLib.DNRange read get_Location;
    property &Label: DDNC.System.Private.CoreLib.DNRange read get_Label;
    property Base64Data: DDNC.System.Private.CoreLib.DNRange read get_Base64Data;
    property DecodedDataLength: Int32 read get_DecodedDataLength;
  end;

  TDNPemFields = class(TDNGenericImport<DNPemFieldsClass, DNPemFields>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Security.Cryptography.Encoding, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
