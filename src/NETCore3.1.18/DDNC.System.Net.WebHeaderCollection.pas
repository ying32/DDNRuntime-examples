//----------------------------------------------------------------------------
//  System.Net.WebHeaderCollection.dll: System.Net.WebHeaderCollection, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.WebHeaderCollection
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMNETWEBHEADERCOLLECTION}
unit DDNC.System.Net.WebHeaderCollection;
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
  DDNC.System.Collections.Specialized;

type

{ enums }

  //-------------namespace: System.Net----------------
  [DNTypeName('System.Net.HttpRequestHeader')]
  DNHttpRequestHeader = type Integer;
  DNHttpRequestHeaderHelper = record helper for DNHttpRequestHeader
  public const
    CacheControl = 0;
    Connection = 1;
    Date = 2;
    KeepAlive = 3;
    Pragma = 4;
    Trailer = 5;
    TransferEncoding = 6;
    Upgrade = 7;
    Via = 8;
    Warning = 9;
    Allow = 10;
    ContentLength = 11;
    ContentType = 12;
    ContentEncoding = 13;
    ContentLanguage = 14;
    ContentLocation = 15;
    ContentMd5 = 16;
    ContentRange = 17;
    Expires = 18;
    LastModified = 19;
    Accept = 20;
    AcceptCharset = 21;
    AcceptEncoding = 22;
    AcceptLanguage = 23;
    Authorization = 24;
    Cookie = 25;
    Expect = 26;
    From = 27;
    Host = 28;
    IfMatch = 29;
    IfModifiedSince = 30;
    IfNoneMatch = 31;
    IfRange = 32;
    IfUnmodifiedSince = 33;
    MaxForwards = 34;
    ProxyAuthorization = 35;
    Referer = 36;
    Range = 37;
    Te = 38;
    Translate = 39;
    UserAgent = 40;
  end;


  //-------------namespace: System.Net----------------
  [DNTypeName('System.Net.HttpResponseHeader')]
  DNHttpResponseHeader = type Integer;
  DNHttpResponseHeaderHelper = record helper for DNHttpResponseHeader
  public const
    CacheControl = 0;
    Connection = 1;
    Date = 2;
    KeepAlive = 3;
    Pragma = 4;
    Trailer = 5;
    TransferEncoding = 6;
    Upgrade = 7;
    Via = 8;
    Warning = 9;
    Allow = 10;
    ContentLength = 11;
    ContentType = 12;
    ContentEncoding = 13;
    ContentLanguage = 14;
    ContentLocation = 15;
    ContentMd5 = 16;
    ContentRange = 17;
    Expires = 18;
    LastModified = 19;
    AcceptRanges = 20;
    Age = 21;
    ETag = 22;
    Location = 23;
    ProxyAuthenticate = 24;
    RetryAfter = 25;
    Server = 26;
    SetCookie = 27;
    Vary = 28;
    WwwAuthenticate = 29;
  end;




type


{ declares }

  DNWebHeaderCollection = interface; // type: System.Net.WebHeaderCollection, namespace: System.Net


{ objects }

  //-------------namespace: System.Net----------------
  DNWebHeaderCollectionClass = interface(DNObjectClass)
  ['{95EC7761-C88C-5E82-B118-E908B3E4EB26}']
  { constructors } 

    {class} function init: DNWebHeaderCollection;

  { static methods } 

    {class} function IsRestricted(headerName: string): Boolean; overload;
    {class} function IsRestricted(headerName: string; response: Boolean): Boolean; overload;

  end;

  [DNTypeName('System.Net.WebHeaderCollection')]
  DNWebHeaderCollection = interface(DNObject)
  ['{DCCE6B84-25F6-3C88-B9F9-3363AA0B20AF}']
  { getters & setters } 

    function get_Item(header: DNHttpRequestHeader): string; overload;
    procedure set_Item(header: DNHttpRequestHeader; value: string); overload;
    function get_Item(header: DNHttpResponseHeader): string; overload;
    procedure set_Item(header: DNHttpResponseHeader; value: string); overload;
    function get_Count: Int32;
    function get_Keys: DDNC.System.Collections.Specialized.DNNameObjectCollectionBase_KeysCollection;
    function get_AllKeys: TArray<string>;
    function get_Item(name: string): string; overload;
    procedure set_Item(name: string; value: string); overload;
    function get_Item(index: Int32): string; overload;

  { methods } 

    procedure &Set(name: string; value: string); overload;
    procedure &Set(header: DNHttpRequestHeader; value: string); overload;
    procedure &Set(header: DNHttpResponseHeader; value: string); overload;
    procedure GetObjectData(serializationInfo: DDNC.System.Private.CoreLib.DNSerializationInfo; streamingContext: DDNC.System.Private.CoreLib.DNStreamingContext);
    procedure Remove(header: DNHttpRequestHeader); overload;
    procedure Remove(header: DNHttpResponseHeader); overload;
    procedure OnDeserialization(sender: DDNC.System.Private.CoreLib.DNObject);
    function GetValues(index: Int32): TArray<string>; overload;
    function GetValues(header: string): TArray<string>; overload;
    function GetKey(index: Int32): string;
    procedure Clear;
    function Get(index: Int32): string; overload;
    function Get(name: string): string; overload;
    procedure Add(header: DNHttpRequestHeader; value: string); overload;
    procedure Add(header: DNHttpResponseHeader; value: string); overload;
    procedure Add(header: string); overload;
    procedure Add(name: string; value: string); overload;
    procedure Remove(name: string); overload;
    function ToString: string;
    function ToByteArray: TArray<Byte>;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure Add(c: DDNC.System.Collections.Specialized.DNNameValueCollection); overload;
    procedure CopyTo(dest: DDNC.System.Private.CoreLib.DNArray; index: Int32);
    function HasKeys: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Item[header: DNHttpRequestHeader]: string read get_Item write set_Item; default;
    property Item[header: DNHttpResponseHeader]: string read get_Item write set_Item; default;
    property Count: Int32 read get_Count;
    property Keys: DDNC.System.Collections.Specialized.DNNameObjectCollectionBase_KeysCollection read get_Keys;
    property AllKeys: TArray<string> read get_AllKeys;
    property Item[name: string]: string read get_Item write set_Item; default;
    property Item[index: Int32]: string read get_Item; default;
  end;

  TDNWebHeaderCollection = class(TDNGenericImport<DNWebHeaderCollectionClass, DNWebHeaderCollection>) end;


implementation


initialization
  LoadAssemblyModule('System.Net.WebHeaderCollection.dll', True);

finalization

end.