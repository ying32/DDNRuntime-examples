//----------------------------------------------------------------------------
//  System.Collections.Specialized.dll: System.Collections.Specialized, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Collections.Specialized
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMCOLLECTIONSSPECIALIZED}
unit DDNC.System.Collections.Specialized;
{$ENDIF}

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

  DNIOrderedDictionary = interface; // type: System.Collections.Specialized.IOrderedDictionary, namespace: System.Collections.Specialized
  DNHybridDictionary = interface; // type: System.Collections.Specialized.HybridDictionary, namespace: System.Collections.Specialized
  DNListDictionary = interface; // type: System.Collections.Specialized.ListDictionary, namespace: System.Collections.Specialized
  DNListDictionary_DictionaryNode = interface; // type: System.Collections.Specialized.ListDictionary+DictionaryNode, namespace: System.Collections.Specialized
  DNNameObjectCollectionBase = interface; // type: System.Collections.Specialized.NameObjectCollectionBase, namespace: System.Collections.Specialized
  DNNameObjectCollectionBase_KeysCollection = interface; // type: System.Collections.Specialized.NameObjectCollectionBase+KeysCollection, namespace: System.Collections.Specialized
  DNNameValueCollection = interface; // type: System.Collections.Specialized.NameValueCollection, namespace: System.Collections.Specialized
  DNOrderedDictionary = interface; // type: System.Collections.Specialized.OrderedDictionary, namespace: System.Collections.Specialized
  DNStringCollection = interface; // type: System.Collections.Specialized.StringCollection, namespace: System.Collections.Specialized
  DNStringDictionary = interface; // type: System.Collections.Specialized.StringDictionary, namespace: System.Collections.Specialized
  DNStringEnumerator = interface; // type: System.Collections.Specialized.StringEnumerator, namespace: System.Collections.Specialized
  DNBitVector32 = interface; // type: System.Collections.Specialized.BitVector32, namespace: System.Collections.Specialized
  DNBitVector32_Section = interface; // type: System.Collections.Specialized.BitVector32+Section, namespace: System.Collections.Specialized


{ objects }

  //-------------namespace: System.Collections.Specialized----------------
  [DNTypeName('System.Collections.Specialized.IOrderedDictionary')]
  DNIOrderedDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{0D2C82B1-3F52-34F4-AFE6-D1016005CDF3}']
  { getters & setters } 

    function get_Item(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    procedure set_Item(index: Int32; value: DDNC.System.Private.CoreLib.DNObject);

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    procedure Insert(index: Int32; key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure RemoveAt(index: Int32);

  { propertys } 

    property Item[index: Int32]: DDNC.System.Private.CoreLib.DNObject read get_Item write set_Item; default;
  end;

  //-------------namespace: System.Collections.Specialized----------------
  DNHybridDictionaryClass = interface(DNObjectClass)
  ['{95E826AA-83A4-53B3-9818-51CD83A47A02}']
  { constructors } 

    {class} function init: DNHybridDictionary; overload;
    {class} function init(initialSize: Int32): DNHybridDictionary; overload;
    {class} function init(caseInsensitive: Boolean): DNHybridDictionary; overload;
    {class} function init(initialSize: Int32; caseInsensitive: Boolean): DNHybridDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.HybridDictionary')]
  DNHybridDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{5A03C370-7B02-30F2-A2E5-4A748C08D60D}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNHybridDictionary = class(TDNGenericImport<DNHybridDictionaryClass, DNHybridDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNListDictionaryClass = interface(DNObjectClass)
  ['{FEE4A430-9A7E-512F-9AAA-4485C166B2F4}']
  { constructors } 

    {class} function init: DNListDictionary; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer): DNListDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.ListDictionary')]
  DNListDictionary = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{00C5FC9A-320C-3277-BFBF-D9FC8A31322B}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNListDictionary = class(TDNGenericImport<DNListDictionaryClass, DNListDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNListDictionary_DictionaryNodeClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{01B65336-3B93-54F9-AFC0-199C0A6F41DF}']
  { constructors } 

    {class} function init: DNListDictionary_DictionaryNode;

  end;

  [DNTypeName('System.Collections.Specialized.ListDictionary+DictionaryNode')]
  DNListDictionary_DictionaryNode = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{6D48917E-2753-3783-846F-2EE2F99E364A}']
  { fields getter & setter } 

   function __fakeFieldGet_key: DDNC.System.Private.CoreLib.DNObject;
   procedure __fakeFieldSet_key(value: DDNC.System.Private.CoreLib.DNObject);
   function __fakeFieldGet_value: DDNC.System.Private.CoreLib.DNObject;
   procedure __fakeFieldSet_value(value: DDNC.System.Private.CoreLib.DNObject);
   function __fakeFieldGet_next: DNListDictionary_DictionaryNode;
   procedure __fakeFieldSet_next(value: DNListDictionary_DictionaryNode);

  { fields } 

   property key: DDNC.System.Private.CoreLib.DNObject read __fakeFieldGet_key write __fakeFieldSet_key;
   property value: DDNC.System.Private.CoreLib.DNObject read __fakeFieldGet_value write __fakeFieldSet_value;
   property next: DNListDictionary_DictionaryNode read __fakeFieldGet_next write __fakeFieldSet_next;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNListDictionary_DictionaryNode = class(TDNGenericImport<DNListDictionary_DictionaryNodeClass, DNListDictionary_DictionaryNode>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameObjectCollectionBaseClass = interface(DNObjectClass)
  ['{347F9FF7-1468-5DA1-B39B-568253A1C347}']
  end;

  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase')]
  DNNameObjectCollectionBase = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{63033EF8-250B-324F-A189-D949F4AC822A}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    procedure OnDeserialization(sender: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNNameObjectCollectionBase = class(TDNGenericImport<DNNameObjectCollectionBaseClass, DNNameObjectCollectionBase>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameObjectCollectionBase_KeysCollectionClass = interface(DNObjectClass)
  ['{E51FE415-CAB8-51DE-A33C-6B16C8067152}']
  end;

  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase+KeysCollection')]
  DNNameObjectCollectionBase_KeysCollection = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{DE247350-5661-3763-9F37-446D58A6B005}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    function get_Count: Int32;

  { methods } 

    function Get(index: Int32): string;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[index: Int32]: string read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNNameObjectCollectionBase_KeysCollection = class(TDNGenericImport<DNNameObjectCollectionBase_KeysCollectionClass, DNNameObjectCollectionBase_KeysCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameValueCollectionClass = interface(DNNameObjectCollectionBaseClass)
  ['{E0FA7969-F028-5615-AC6A-6F3CCAB154E9}']
  { constructors } 

    {class} function init: DNNameValueCollection; overload;
    {class} function init(col: DNNameValueCollection): DNNameValueCollection; overload;
    {class} function init(hashProvider: DDNC.System.Private.CoreLib.DNIHashCodeProvider; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32): DNNameValueCollection; overload;
    {class} function init(equalityComparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; equalityComparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; col: DNNameValueCollection): DNNameValueCollection; overload;
    {class} function init(capacity: Int32; hashProvider: DDNC.System.Private.CoreLib.DNIHashCodeProvider; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNNameValueCollection; overload;

  end;

  [DNTypeName('System.Collections.Specialized.NameValueCollection')]
  DNNameValueCollection = interface(DNNameObjectCollectionBase)
  ['{5299AF9A-6594-33B7-8519-0E8E952D6293}']
  { getters & setters } 

    function get_Item(name: string): string; overload;
    procedure set_Item(name: string; value: string);
    function get_Item(index: Int32): string; overload;
    function get_AllKeys: TArray<string>;
    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    procedure Add(c: DNNameValueCollection); overload;
    procedure Clear;
    procedure CopyTo(dest: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function HasKeys: Boolean;
    procedure Add(name: string; value: string); overload;
    function Get(name: string): string; overload;
    function GetValues(name: string): TArray<string>; overload;
    procedure &Set(name: string; value: string);
    procedure Remove(name: string);
    function Get(index: Int32): string; overload;
    function GetValues(index: Int32): TArray<string>; overload;
    function GetKey(index: Int32): string;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    procedure OnDeserialization(sender: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[name: string]: string read get_Item write set_Item; default;
    property Item[index: Int32]: string read get_Item; default;
    property AllKeys: TArray<string> read get_AllKeys;
    property Count: Int32 read get_Count;
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNNameValueCollection = class(TDNGenericImport<DNNameValueCollectionClass, DNNameValueCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNOrderedDictionaryClass = interface(DNObjectClass)
  ['{0CB2F853-F56C-5586-A590-83B3FE25B0F0}']
  { constructors } 

    {class} function init: DNOrderedDictionary; overload;
    {class} function init(capacity: Int32): DNOrderedDictionary; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNOrderedDictionary; overload;
    {class} function init(capacity: Int32; comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer): DNOrderedDictionary; overload;

  end;

  [DNTypeName('System.Collections.Specialized.OrderedDictionary')]
  DNOrderedDictionary = interface(DNIOrderedDictionary)
  ['{DAB81AEF-8066-3503-A9D2-9F683D96C212}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    function AsReadOnly: DNOrderedDictionary;
    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    procedure Insert(index: Int32; key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNOrderedDictionary = class(TDNGenericImport<DNOrderedDictionaryClass, DNOrderedDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringCollectionClass = interface(DNObjectClass)
  ['{9FA0F6BD-607E-5002-ABA9-E4CAC593AF21}']
  { constructors } 

    {class} function init: DNStringCollection;

  end;

  [DNTypeName('System.Collections.Specialized.StringCollection')]
  DNStringCollection = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{F4DC53FA-EBA5-39F9-924C-902FB063C76D}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    procedure set_Item(index: Int32; value: string);
    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Add(value: string): Int32;
    procedure AddRange(value: TArray<string>);
    function &Contains(value: string): Boolean;
    procedure CopyTo(&array: TArray<string>; index: Int32);
    function GetEnumerator: DNStringEnumerator;
    function IndexOf(value: string): Int32;
    procedure Insert(index: Int32; value: string);
    procedure Remove(value: string);
    procedure RemoveAt(index: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[index: Int32]: string read get_Item write set_Item; default;
    property Count: Int32 read get_Count;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNStringCollection = class(TDNGenericImport<DNStringCollectionClass, DNStringCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringDictionaryClass = interface(DNObjectClass)
  ['{6446EFDE-8116-562A-A247-617729B2474B}']
  { constructors } 

    {class} function init: DNStringDictionary;

  end;

  [DNTypeName('System.Collections.Specialized.StringDictionary')]
  DNStringDictionary = interface(DDNC.System.Private.CoreLib.DNIEnumerable)
  ['{51F850FF-22DD-3ABF-951B-00BA2D638D49}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_Item(key: string): string;
    procedure set_Item(key: string; value: string);
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;

  { methods } 

    procedure Add(key: string; value: string);
    procedure Clear;
    function ContainsKey(key: string): Boolean;
    function ContainsValue(value: string): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure Remove(key: string);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property Item[key: string]: string read get_Item write set_Item; default;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
  end;

  TDNStringDictionary = class(TDNGenericImport<DNStringDictionaryClass, DNStringDictionary>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringEnumeratorClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{0C47CFCC-5880-57D1-A80B-0D5082A29AED}']
  end;

  [DNTypeName('System.Collections.Specialized.StringEnumerator')]
  DNStringEnumerator = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F6CE440E-E5BC-34D8-98C1-88D5C6BAFA19}']
  { getters & setters } 

    function get_Current: string;

  { methods } 

    function MoveNext: Boolean;
    procedure Reset;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Current: string read get_Current;
  end;

  TDNStringEnumerator = class(TDNGenericImport<DNStringEnumeratorClass, DNStringEnumerator>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNBitVector32Class = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{BE208736-DF1C-5BD8-97DB-6B0E74E3F280}']
  { constructors } 

    {class} function init(data: Int32): DNBitVector32; overload;
    {class} function init(value: DNBitVector32): DNBitVector32; overload;

  { static methods } 

    {class} function CreateMask: Int32; overload;
    {class} function CreateMask(previous: Int32): Int32; overload;
    {class} function CreateSection(maxValue: Int16): DNBitVector32_Section; overload;
    {class} function CreateSection(maxValue: Int16; previous: DNBitVector32_Section): DNBitVector32_Section; overload;
    {class} function ToString(value: DNBitVector32): string; overload;

  end;

  [DNTypeName('System.Collections.Specialized.BitVector32')]
  DNBitVector32 = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{EBE0C23B-AB9F-3E60-B1AE-E3D6AD272583}']
  { getters & setters } 

    function get_Item(bit: Int32): Boolean; overload;
    procedure set_Item(bit: Int32; value: Boolean); overload;
    function get_Item(section: DNBitVector32_Section): Int32; overload;
    procedure set_Item(section: DNBitVector32_Section; value: Int32); overload;
    function get_Data: Int32;

  { methods } 

    function Equals(o: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Item[bit: Int32]: Boolean read get_Item write set_Item; default;
    property Item[section: DNBitVector32_Section]: Int32 read get_Item write set_Item; default;
    property Data: Int32 read get_Data;
  end;

  TDNBitVector32 = class(TDNGenericImport<DNBitVector32Class, DNBitVector32>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNBitVector32_SectionClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{6A5B5427-A28D-5584-BC5B-AAF88B02AC42}']
  { static methods } 

    {class} function ToString(value: DNBitVector32_Section): string; overload;

  end;

  [DNTypeName('System.Collections.Specialized.BitVector32+Section')]
  DNBitVector32_Section = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{01A5FFE8-01BA-36D4-BCD6-42BF9C4AC42F}']
  { getters & setters } 

    function get_Mask: Int16;
    function get_Offset: Int16;

  { methods } 

    function Equals(o: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(obj: DNBitVector32_Section): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Mask: Int16 read get_Mask;
    property Offset: Int16 read get_Offset;
  end;

  TDNBitVector32_Section = class(TDNGenericImport<DNBitVector32_SectionClass, DNBitVector32_Section>) end;


implementation


initialization
  LoadAssemblyModule('System.Collections.Specialized.dll', True);

finalization

end.