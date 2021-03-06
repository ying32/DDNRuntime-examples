//----------------------------------------------------------------------------
//  System.ObjectModel.dll: System.ObjectModel, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.ObjectModel
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.ObjectModel;

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

  //-------------namespace: System.Collections.Specialized----------------
  [DNTypeName('System.Collections.Specialized.NotifyCollectionChangedAction')]
  DNNotifyCollectionChangedAction = type Integer;
  DNNotifyCollectionChangedActionHelper = record helper for DNNotifyCollectionChangedAction
  public const
    Add = 0;
    Remove = 1;
    Replace = 2;
    Move = 3;
    Reset = 4;
  end;




type


{ declares }

  DNINotifyCollectionChanged = interface; // type: System.Collections.Specialized.INotifyCollectionChanged, namespace: System.Collections.Specialized
  DNINotifyDataErrorInfo = interface; // type: System.ComponentModel.INotifyDataErrorInfo, namespace: System.ComponentModel
  DNINotifyPropertyChanged = interface; // type: System.ComponentModel.INotifyPropertyChanged, namespace: System.ComponentModel
  DNINotifyPropertyChanging = interface; // type: System.ComponentModel.INotifyPropertyChanging, namespace: System.ComponentModel
  DNICommand = interface; // type: System.Windows.Input.ICommand, namespace: System.Windows.Input
  DNKeyedCollection<TKey, TItem> = interface; // type: System.Collections.ObjectModel.KeyedCollection`2, namespace: System.Collections.ObjectModel
  DNObservableCollection<T> = interface; // type: System.Collections.ObjectModel.ObservableCollection`1, namespace: System.Collections.ObjectModel
  DNReadOnlyObservableCollection<T> = interface; // type: System.Collections.ObjectModel.ReadOnlyObservableCollection`1, namespace: System.Collections.ObjectModel
  DNReadOnlyDictionary<TKey, TValue> = interface; // type: System.Collections.ObjectModel.ReadOnlyDictionary`2, namespace: System.Collections.ObjectModel
  DNReadOnlyDictionary_KeyCollection<TKey, TValue> = interface; // type: System.Collections.ObjectModel.ReadOnlyDictionary`2+KeyCollection, namespace: System.Collections.ObjectModel
  DNReadOnlyDictionary_ValueCollection<TKey, TValue> = interface; // type: System.Collections.ObjectModel.ReadOnlyDictionary`2+ValueCollection, namespace: System.Collections.ObjectModel
  DNNotifyCollectionChangedEventArgs = interface; // type: System.Collections.Specialized.NotifyCollectionChangedEventArgs, namespace: System.Collections.Specialized
  DNDataErrorsChangedEventArgs = interface; // type: System.ComponentModel.DataErrorsChangedEventArgs, namespace: System.ComponentModel
  DNPropertyChangedEventArgs = interface; // type: System.ComponentModel.PropertyChangedEventArgs, namespace: System.ComponentModel
  DNPropertyChangingEventArgs = interface; // type: System.ComponentModel.PropertyChangingEventArgs, namespace: System.ComponentModel

{ delegates }

  [DNTypeName('System.Collections.Specialized.NotifyCollectionChangedEventHandler')]
  DNNotifyCollectionChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNNotifyCollectionChangedEventArgs) of object;

  [DNTypeName('System.ComponentModel.PropertyChangedEventHandler')]
  DNPropertyChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNPropertyChangedEventArgs) of object;

  [DNTypeName('System.ComponentModel.PropertyChangingEventHandler')]
  DNPropertyChangingEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNPropertyChangingEventArgs) of object;




{ objects }

  //-------------namespace: System.Collections.Specialized----------------
  [DNTypeName('System.Collections.Specialized.INotifyCollectionChanged')]
  DNINotifyCollectionChanged = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{150173C6-D488-3654-807A-7FE534EB309C}']
  { events } 

    procedure add_CollectionChanged(value: DNNotifyCollectionChangedEventHandler);
    procedure remove_CollectionChanged(value: DNNotifyCollectionChangedEventHandler);

  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.INotifyDataErrorInfo')]
  DNINotifyDataErrorInfo = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{93FD8F7C-CC87-33E4-9C0D-6802CEA49FA1}']
  { getters & setters } 

    function get_HasErrors: Boolean;

  { events } 

    procedure add_ErrorsChanged(value: DDNC.System.Private.CoreLib.DNEventHandler<DNDataErrorsChangedEventArgs>);
    procedure remove_ErrorsChanged(value: DDNC.System.Private.CoreLib.DNEventHandler<DNDataErrorsChangedEventArgs>);

  { methods } 

    function GetErrors(propertyName: string): DDNC.System.Private.CoreLib.DNIEnumerable;

  { propertys } 

    property HasErrors: Boolean read get_HasErrors;
  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.INotifyPropertyChanged')]
  DNINotifyPropertyChanged = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{C1E4E159-8825-3659-BAB8-17F67BE9E7EE}']
  { events } 

    procedure add_PropertyChanged(value: DNPropertyChangedEventHandler);
    procedure remove_PropertyChanged(value: DNPropertyChangedEventHandler);

  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.INotifyPropertyChanging')]
  DNINotifyPropertyChanging = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{A5A88A27-3028-3A2A-B8FB-F5E0900FDB20}']
  { events } 

    procedure add_PropertyChanging(value: DNPropertyChangingEventHandler);
    procedure remove_PropertyChanging(value: DNPropertyChangingEventHandler);

  end;

  //-------------namespace: System.Windows.Input----------------
  [DNTypeName('System.Windows.Input.ICommand')]
  DNICommand = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{87196B24-1A72-31F7-8F0B-0E068BC21B4C}']
  { events } 

    procedure add_CanExecuteChanged(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_CanExecuteChanged(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function CanExecute(parameter: DDNC.System.Private.CoreLib.DNObject): Boolean;
    procedure Execute(parameter: DDNC.System.Private.CoreLib.DNObject);

  end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNKeyedCollectionClass<TKey, TItem> = interface(DDNC.System.Private.CoreLib.DNCollectionClass<TItem>)
  ['{54BA032E-1841-525D-976F-61C7D038F465}']
  end;

  [DNTypeName('System.Collections.ObjectModel.KeyedCollection`2')]
  DNKeyedCollection<TKey, TItem> = interface(DDNC.System.Private.CoreLib.DNCollection<TItem>)
  ['{004CD3CD-CCA1-31A3-8D2C-8344D619296E}']
  { getters & setters } 

    function get_Comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey>;
    function get_Item(key: TKey): TItem;
    function get_Count: Int32;

  { methods } 

    function &Contains(key: TKey): Boolean; overload;
    function TryGetValue(key: TKey; out item: TItem): Boolean;
    function Remove(key: TKey): Boolean;
    procedure CopyTo(&array: TArray<TItem>; index: Int32);
    function &Contains(item: TItem): Boolean; overload;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TItem>;
    function IndexOf(item: TItem): Int32;
    procedure Insert(index: Int32; item: TItem);
    procedure RemoveAt(index: Int32);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Comparer: DDNC.System.Private.CoreLib.DNIEqualityComparer<TKey> read get_Comparer;
    property Item[key: TKey]: TItem read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNKeyedCollection<TKey, TItem> = class(TDNGenericImport<DNKeyedCollectionClass<TKey, TItem>, DNKeyedCollection<TKey, TItem>>) end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNObservableCollectionClass<T> = interface(DDNC.System.Private.CoreLib.DNCollectionClass<T>)
  ['{4A7F35EC-595A-553A-85B9-37B4BA44006E}']
  { constructors } 

    {class} function init: DNObservableCollection<T>; overload;
    {class} function init(collection: DDNC.System.Private.CoreLib.DNIEnumerable<T>): DNObservableCollection<T>; overload;
    {class} function init(list: DDNC.System.Private.CoreLib.DNList<T>): DNObservableCollection<T>; overload;

  end;

  [DNTypeName('System.Collections.ObjectModel.ObservableCollection`1')]
  DNObservableCollection<T> = interface(DDNC.System.Private.CoreLib.DNCollection<T>)
  ['{90100767-72C7-3E7D-8CF4-98F851049B32}']
  { getters & setters } 

    function get_Count: Int32;

  { events } 

    procedure add_CollectionChanged(value: DNNotifyCollectionChangedEventHandler);
    procedure remove_CollectionChanged(value: DNNotifyCollectionChangedEventHandler);

  { methods } 

    procedure Move(oldIndex: Int32; newIndex: Int32);
    procedure CopyTo(&array: TArray<T>; index: Int32);
    function &Contains(item: T): Boolean;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<T>;
    function IndexOf(item: T): Int32;
    procedure Insert(index: Int32; item: T);
    procedure RemoveAt(index: Int32);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNObservableCollection<T> = class(TDNGenericImport<DNObservableCollectionClass<T>, DNObservableCollection<T>>) end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNReadOnlyObservableCollectionClass<T> = interface(DDNC.System.Private.CoreLib.DNReadOnlyCollectionClass<T>)
  ['{8B9FF349-EF8C-5F5F-861B-0850EA022C65}']
  { constructors } 

    {class} function init(list: DNObservableCollection<T>): DNReadOnlyObservableCollection<T>;

  end;

  [DNTypeName('System.Collections.ObjectModel.ReadOnlyObservableCollection`1')]
  DNReadOnlyObservableCollection<T> = interface(DDNC.System.Private.CoreLib.DNReadOnlyCollection<T>)
  ['{0AC998C0-1E76-3C70-A1E0-455FD0E3E9AA}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function &Contains(value: T): Boolean;
    procedure CopyTo(&array: TArray<T>; index: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<T>;
    function IndexOf(value: T): Int32;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyObservableCollection<T> = class(TDNGenericImport<DNReadOnlyObservableCollectionClass<T>, DNReadOnlyObservableCollection<T>>) end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNReadOnlyDictionaryClass<TKey, TValue> = interface(DNObjectClass)
  ['{317362E4-8350-59C8-AEC0-16405D0DDB29}']
  { constructors } 

    {class} function init(dictionary: DDNC.System.Private.CoreLib.DNIDictionary<TKey, TValue>): DNReadOnlyDictionary<TKey, TValue>;

  end;

  [DNTypeName('System.Collections.ObjectModel.ReadOnlyDictionary`2')]
  DNReadOnlyDictionary<TKey, TValue> = interface(DDNC.System.Private.CoreLib.DNIDictionary<TKey, TValue>)
  ['{9E1E1741-7F21-320B-9686-04AFBDC9BAA9}']
  { getters & setters } 

    function get_Keys: DNReadOnlyDictionary_KeyCollection<TKey, TValue>;
    function get_Values: DNReadOnlyDictionary_ValueCollection<TKey, TValue>;
    function get_Count: Int32;

  { methods } 

    function ContainsKey(key: TKey): Boolean;
    function TryGetValue(key: TKey; out value: TValue): Boolean;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<DDNC.System.Private.CoreLib.DNKeyValuePair<TKey, TValue>>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Keys: DNReadOnlyDictionary_KeyCollection<TKey, TValue> read get_Keys;
    property Values: DNReadOnlyDictionary_ValueCollection<TKey, TValue> read get_Values;
    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyDictionary<TKey, TValue> = class(TDNGenericImport<DNReadOnlyDictionaryClass<TKey, TValue>, DNReadOnlyDictionary<TKey, TValue>>) end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNReadOnlyDictionary_KeyCollectionClass<TKey, TValue> = interface(DNObjectClass)
  ['{C7DB46D4-86FD-55E4-85A2-B5F2FFD47E1F}']
  end;

  [DNTypeName('System.Collections.ObjectModel.ReadOnlyDictionary`2+KeyCollection')]
  DNReadOnlyDictionary_KeyCollection<TKey, TValue> = interface(DDNC.System.Private.CoreLib.DNICollection<TKey>)
  ['{6AC02E3D-186B-342E-9985-A17BF830E0D3}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    procedure CopyTo(&array: TArray<TKey>; arrayIndex: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TKey>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyDictionary_KeyCollection<TKey, TValue> = class(TDNGenericImport<DNReadOnlyDictionary_KeyCollectionClass<TKey, TValue>, DNReadOnlyDictionary_KeyCollection<TKey, TValue>>) end;

  //-------------namespace: System.Collections.ObjectModel----------------
  DNReadOnlyDictionary_ValueCollectionClass<TKey, TValue> = interface(DNObjectClass)
  ['{D407FE21-292D-58DE-98D6-7F55636C6C0F}']
  end;

  [DNTypeName('System.Collections.ObjectModel.ReadOnlyDictionary`2+ValueCollection')]
  DNReadOnlyDictionary_ValueCollection<TKey, TValue> = interface(DDNC.System.Private.CoreLib.DNICollection<TValue>)
  ['{08AF8707-4AC2-3257-AA55-3E2A3BB47F05}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    procedure CopyTo(&array: TArray<TValue>; arrayIndex: Int32);
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TValue>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNReadOnlyDictionary_ValueCollection<TKey, TValue> = class(TDNGenericImport<DNReadOnlyDictionary_ValueCollectionClass<TKey, TValue>, DNReadOnlyDictionary_ValueCollection<TKey, TValue>>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNotifyCollectionChangedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{EB1E3D36-D01F-5730-8B46-46830A756E2B}']
  { constructors } 

    {class} function init(action: DNNotifyCollectionChangedAction): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItem: DDNC.System.Private.CoreLib.DNObject): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItem: DDNC.System.Private.CoreLib.DNObject; index: Int32): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItems: DDNC.System.Private.CoreLib.DNIList): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItems: DDNC.System.Private.CoreLib.DNIList; startingIndex: Int32): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; newItem: DDNC.System.Private.CoreLib.DNObject; oldItem: DDNC.System.Private.CoreLib.DNObject): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; newItem: DDNC.System.Private.CoreLib.DNObject; oldItem: DDNC.System.Private.CoreLib.DNObject; index: Int32): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; newItems: DDNC.System.Private.CoreLib.DNIList; oldItems: DDNC.System.Private.CoreLib.DNIList): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; newItems: DDNC.System.Private.CoreLib.DNIList; oldItems: DDNC.System.Private.CoreLib.DNIList; startingIndex: Int32): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItem: DDNC.System.Private.CoreLib.DNObject; index: Int32; oldIndex: Int32): DNNotifyCollectionChangedEventArgs; overload;
    {class} function init(action: DNNotifyCollectionChangedAction; changedItems: DDNC.System.Private.CoreLib.DNIList; index: Int32; oldIndex: Int32): DNNotifyCollectionChangedEventArgs; overload;

  end;

  [DNTypeName('System.Collections.Specialized.NotifyCollectionChangedEventArgs')]
  DNNotifyCollectionChangedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{DB69E9C6-5D61-387D-86D6-296D8A86F018}']
  { getters & setters } 

    function get_Action: DNNotifyCollectionChangedAction;
    function get_NewItems: DDNC.System.Private.CoreLib.DNIList;
    function get_OldItems: DDNC.System.Private.CoreLib.DNIList;
    function get_NewStartingIndex: Int32;
    function get_OldStartingIndex: Int32;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Action: DNNotifyCollectionChangedAction read get_Action;
    property NewItems: DDNC.System.Private.CoreLib.DNIList read get_NewItems;
    property OldItems: DDNC.System.Private.CoreLib.DNIList read get_OldItems;
    property NewStartingIndex: Int32 read get_NewStartingIndex;
    property OldStartingIndex: Int32 read get_OldStartingIndex;
  end;

  TDNNotifyCollectionChangedEventArgs = class(TDNGenericImport<DNNotifyCollectionChangedEventArgsClass, DNNotifyCollectionChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNDataErrorsChangedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{A305981E-150E-5BC1-B703-81CA34716355}']
  { constructors } 

    {class} function init(propertyName: string): DNDataErrorsChangedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.DataErrorsChangedEventArgs')]
  DNDataErrorsChangedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{63BE84AE-9E16-365C-AAE8-FC8F44FD8CE1}']
  { getters & setters } 

    function get_PropertyName: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property PropertyName: string read get_PropertyName;
  end;

  TDNDataErrorsChangedEventArgs = class(TDNGenericImport<DNDataErrorsChangedEventArgsClass, DNDataErrorsChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNPropertyChangedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{5142D1D1-4CA7-5D3F-92C6-2784C2852E7F}']
  { constructors } 

    {class} function init(propertyName: string): DNPropertyChangedEventArgs;

  end;

  [DNTypeName('System.ComponentModel.PropertyChangedEventArgs')]
  DNPropertyChangedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{DFEBA011-03F3-3CD0-AEB3-57C3BB8E2173}']
  { getters & setters } 

    function get_PropertyName: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property PropertyName: string read get_PropertyName;
  end;

  TDNPropertyChangedEventArgs = class(TDNGenericImport<DNPropertyChangedEventArgsClass, DNPropertyChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNPropertyChangingEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{3F3C8A6E-50B5-532F-A06B-B9177E271CE1}']
  { constructors } 

    {class} function init(propertyName: string): DNPropertyChangingEventArgs;

  end;

  [DNTypeName('System.ComponentModel.PropertyChangingEventArgs')]
  DNPropertyChangingEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{62B48E6E-1058-33AD-9E49-FFF29C08143D}']
  { getters & setters } 

    function get_PropertyName: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property PropertyName: string read get_PropertyName;
  end;

  TDNPropertyChangingEventArgs = class(TDNGenericImport<DNPropertyChangingEventArgsClass, DNPropertyChangingEventArgs>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.ObjectModel, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
