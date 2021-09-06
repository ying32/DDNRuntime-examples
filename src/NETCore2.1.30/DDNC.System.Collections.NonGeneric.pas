//----------------------------------------------------------------------------
//  System.Collections.NonGeneric.dll: System.Collections.NonGeneric, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Collections.NonGeneric
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMCOLLECTIONSNONGENERIC}
unit DDNC.System.Collections.NonGeneric;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Runtime.Extensions;

type


{ declares }

  DNCaseInsensitiveComparer = interface; // type: System.Collections.CaseInsensitiveComparer, namespace: System.Collections
  DNCaseInsensitiveHashCodeProvider = interface; // type: System.Collections.CaseInsensitiveHashCodeProvider, namespace: System.Collections
  DNCollectionBase = interface; // type: System.Collections.CollectionBase, namespace: System.Collections
  DNDictionaryBase = interface; // type: System.Collections.DictionaryBase, namespace: System.Collections
  DNQueue = interface; // type: System.Collections.Queue, namespace: System.Collections
  DNReadOnlyCollectionBase = interface; // type: System.Collections.ReadOnlyCollectionBase, namespace: System.Collections
  DNSortedList = interface; // type: System.Collections.SortedList, namespace: System.Collections
  DNCollectionsUtil = interface; // type: System.Collections.Specialized.CollectionsUtil, namespace: System.Collections.Specialized
  DNStack = interface; // type: System.Collections.Stack, namespace: System.Collections


{ objects }

  //-------------namespace: System.Collections----------------
  DNCaseInsensitiveComparerClass = interface(DNObjectClass)
  ['{BEFE21CF-3FEC-5B17-A74E-864BE831BBFC}']
  { static getter & setter } 

    {class} function get_Default: DNCaseInsensitiveComparer;
    {class} function get_DefaultInvariant: DNCaseInsensitiveComparer;

  { constructors } 

    {class} function init: DNCaseInsensitiveComparer; overload;
    {class} function init(culture: DDNC.System.Private.CoreLib.DNCultureInfo): DNCaseInsensitiveComparer; overload;

  { static propertys } 

    {class} property &Default: DNCaseInsensitiveComparer read get_Default;
    {class} property DefaultInvariant: DNCaseInsensitiveComparer read get_DefaultInvariant;
  end;

  [DNTypeName('System.Collections.CaseInsensitiveComparer')]
  DNCaseInsensitiveComparer = interface(DDNC.System.Private.CoreLib.DNIComparer)
  ['{88E639D9-C2F5-3F4F-9771-088060D71FCB}']
  { methods } 

    function Compare(a: DDNC.System.Private.CoreLib.DNObject; b: DDNC.System.Private.CoreLib.DNObject): Int32;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNCaseInsensitiveComparer = class(TDNGenericImport<DNCaseInsensitiveComparerClass, DNCaseInsensitiveComparer>) end;

  //-------------namespace: System.Collections----------------
  DNCaseInsensitiveHashCodeProviderClass = interface(DNObjectClass)
  ['{280D43E8-41A8-5573-BA7E-0DE460ECE54F}']
  { static getter & setter } 

    {class} function get_Default: DNCaseInsensitiveHashCodeProvider;
    {class} function get_DefaultInvariant: DNCaseInsensitiveHashCodeProvider;

  { constructors } 

    {class} function init: DNCaseInsensitiveHashCodeProvider; overload;
    {class} function init(culture: DDNC.System.Private.CoreLib.DNCultureInfo): DNCaseInsensitiveHashCodeProvider; overload;

  { static propertys } 

    {class} property &Default: DNCaseInsensitiveHashCodeProvider read get_Default;
    {class} property DefaultInvariant: DNCaseInsensitiveHashCodeProvider read get_DefaultInvariant;
  end;

  [DNTypeName('System.Collections.CaseInsensitiveHashCodeProvider')]
  DNCaseInsensitiveHashCodeProvider = interface(DDNC.System.Runtime.Extensions.DNIHashCodeProvider)
  ['{7FA22C93-EB00-3090-BE90-F107D420C7EB}']
  { methods } 

    function GetHashCode(obj: DDNC.System.Private.CoreLib.DNObject): Int32; overload;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNCaseInsensitiveHashCodeProvider = class(TDNGenericImport<DNCaseInsensitiveHashCodeProviderClass, DNCaseInsensitiveHashCodeProvider>) end;

  //-------------namespace: System.Collections----------------
  DNCollectionBaseClass = interface(DNObjectClass)
  ['{EDAB63EA-A0B6-58CB-B6E4-05DCCF435B17}']
  end;

  [DNTypeName('System.Collections.CollectionBase')]
  DNCollectionBase = interface(DDNC.System.Private.CoreLib.DNIList)
  ['{3AD0870F-2B33-3388-A56E-186203F4A1D0}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCollectionBase = class(TDNGenericImport<DNCollectionBaseClass, DNCollectionBase>) end;

  //-------------namespace: System.Collections----------------
  DNDictionaryBaseClass = interface(DNObjectClass)
  ['{08ADBD0D-238D-55EF-B24B-CFAD1C2D91EC}']
  end;

  [DNTypeName('System.Collections.DictionaryBase')]
  DNDictionaryBase = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{BC580952-17D5-3A6F-A6C4-749F9AC9E48F}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNDictionaryBase = class(TDNGenericImport<DNDictionaryBaseClass, DNDictionaryBase>) end;

  //-------------namespace: System.Collections----------------
  DNQueueClass = interface(DNObjectClass)
  ['{9C7B4BCE-3664-52C3-B166-6A0B7F7068A9}']
  { constructors } 

    {class} function init: DNQueue; overload;
    {class} function init(capacity: Int32): DNQueue; overload;
    {class} function init(capacity: Int32; growFactor: Single): DNQueue; overload;
    {class} function init(col: DDNC.System.Private.CoreLib.DNICollection): DNQueue; overload;

  { static methods } 

    {class} function Synchronized(queue: DNQueue): DNQueue;

  end;

  [DNTypeName('System.Collections.Queue')]
  DNQueue = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{4409C816-8CB2-3AB6-9B38-45997CF1D1DC}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Clone: DDNC.System.Private.CoreLib.DNObject;
    procedure Clear;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    procedure Enqueue(obj: DDNC.System.Private.CoreLib.DNObject);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function Dequeue: DDNC.System.Private.CoreLib.DNObject;
    function Peek: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ToArray: TArray<DDNC.System.Private.CoreLib.DNObject>;
    procedure TrimToSize;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNQueue = class(TDNGenericImport<DNQueueClass, DNQueue>) end;

  //-------------namespace: System.Collections----------------
  DNReadOnlyCollectionBaseClass = interface(DNObjectClass)
  ['{DDB92E9D-90DD-575D-B929-0D8C46DB6CCC}']
  end;

  [DNTypeName('System.Collections.ReadOnlyCollectionBase')]
  DNReadOnlyCollectionBase = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{A8A0B64B-9C83-3D91-AED8-220D77346BCC}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyCollectionBase = class(TDNGenericImport<DNReadOnlyCollectionBaseClass, DNReadOnlyCollectionBase>) end;

  //-------------namespace: System.Collections----------------
  DNSortedListClass = interface(DNObjectClass)
  ['{74AB63B1-1F0C-55A9-8CF4-5D091328B9DA}']
  { constructors } 

    {class} function init: DNSortedList; overload;
    {class} function init(initialCapacity: Int32): DNSortedList; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer): DNSortedList; overload;
    {class} function init(comparer: DDNC.System.Private.CoreLib.DNIComparer; capacity: Int32): DNSortedList; overload;
    {class} function init(d: DDNC.System.Private.CoreLib.DNIDictionary): DNSortedList; overload;
    {class} function init(d: DDNC.System.Private.CoreLib.DNIDictionary; comparer: DDNC.System.Private.CoreLib.DNIComparer): DNSortedList; overload;

  { static methods } 

    {class} function Synchronized(list: DNSortedList): DNSortedList;

  end;

  [DNTypeName('System.Collections.SortedList')]
  DNSortedList = interface(DDNC.System.Private.CoreLib.DNIDictionary)
  ['{82083B7C-8535-30A0-877B-E519C789FBCB}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;
    function get_Keys: DDNC.System.Private.CoreLib.DNICollection;
    function get_Values: DDNC.System.Private.CoreLib.DNICollection;
    function get_IsReadOnly: Boolean;
    function get_IsFixedSize: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Item(key: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNObject;
    procedure set_Item(key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);

  { methods } 

    procedure Add(key: DDNC.System.Private.CoreLib.DNObject; value: DDNC.System.Private.CoreLib.DNObject);
    procedure Clear;
    function Clone: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ContainsKey(key: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function ContainsValue(value: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; arrayIndex: Int32);
    function GetByIndex(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIDictionaryEnumerator;
    function GetKey(index: Int32): DDNC.System.Private.CoreLib.DNObject;
    function GetKeyList: DDNC.System.Private.CoreLib.DNIList;
    function GetValueList: DDNC.System.Private.CoreLib.DNIList;
    function IndexOfKey(key: DDNC.System.Private.CoreLib.DNObject): Int32;
    function IndexOfValue(value: DDNC.System.Private.CoreLib.DNObject): Int32;
    procedure RemoveAt(index: Int32);
    procedure Remove(key: DDNC.System.Private.CoreLib.DNObject);
    procedure SetByIndex(index: Int32; value: DDNC.System.Private.CoreLib.DNObject);
    procedure TrimToSize;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Private.CoreLib.DNICollection read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNICollection read get_Values;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsFixedSize: Boolean read get_IsFixedSize;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Item[key: DDNC.System.Private.CoreLib.DNObject]: DDNC.System.Private.CoreLib.DNObject read get_Item write set_Item; default;
  end;

  TDNSortedList = class(TDNGenericImport<DNSortedListClass, DNSortedList>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNCollectionsUtilClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{FA82EDFD-D9CF-5F8B-921E-2D3DE4314FA2}']
  { constructors } 

    {class} function init: DNCollectionsUtil;

  { static methods } 

    {class} function CreateCaseInsensitiveHashtable: DDNC.System.Runtime.Extensions.DNHashtable; overload;
    {class} function CreateCaseInsensitiveHashtable(capacity: Int32): DDNC.System.Runtime.Extensions.DNHashtable; overload;
    {class} function CreateCaseInsensitiveHashtable(d: DDNC.System.Private.CoreLib.DNIDictionary): DDNC.System.Runtime.Extensions.DNHashtable; overload;
    {class} function CreateCaseInsensitiveSortedList: DNSortedList;

  end;

  [DNTypeName('System.Collections.Specialized.CollectionsUtil')]
  DNCollectionsUtil = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E2A2C6F9-EDCB-3240-9465-BA492A4B5D65}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNCollectionsUtil = class(TDNGenericImport<DNCollectionsUtilClass, DNCollectionsUtil>) end;

  //-------------namespace: System.Collections----------------
  DNStackClass = interface(DNObjectClass)
  ['{12B4F964-65C1-5DDB-8287-A36854E7A0E4}']
  { constructors } 

    {class} function init: DNStack; overload;
    {class} function init(initialCapacity: Int32): DNStack; overload;
    {class} function init(col: DDNC.System.Private.CoreLib.DNICollection): DNStack; overload;

  { static methods } 

    {class} function Synchronized(stack: DNStack): DNStack;

  end;

  [DNTypeName('System.Collections.Stack')]
  DNStack = interface(DDNC.System.Private.CoreLib.DNICollection)
  ['{938147FA-AA3D-3997-ADBA-558E787DF8CE}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    procedure Clear;
    function Clone: DDNC.System.Private.CoreLib.DNObject;
    function &Contains(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    function Peek: DDNC.System.Private.CoreLib.DNObject;
    function Pop: DDNC.System.Private.CoreLib.DNObject;
    procedure Push(obj: DDNC.System.Private.CoreLib.DNObject);
    function ToArray: TArray<DDNC.System.Private.CoreLib.DNObject>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNStack = class(TDNGenericImport<DNStackClass, DNStack>) end;


implementation


initialization
  LoadAssemblyModule('System.Collections.NonGeneric.dll', True);

finalization

end.