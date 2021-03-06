//----------------------------------------------------------------------------
//  System.Linq.Parallel.dll: System.Linq.Parallel, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Linq.Parallel
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Linq.Parallel;

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

  //-------------namespace: System.Linq----------------
  [DNTypeName('System.Linq.ParallelExecutionMode')]
  DNParallelExecutionMode = type Integer;
  DNParallelExecutionModeHelper = record helper for DNParallelExecutionMode
  public const
    Default_ = 0;
    ForceParallelism = 1;
  end;


  //-------------namespace: System.Linq----------------
  [DNTypeName('System.Linq.ParallelMergeOptions')]
  DNParallelMergeOptions = type Integer;
  DNParallelMergeOptionsHelper = record helper for DNParallelMergeOptions
  public const
    Default_ = 0;
    NotBuffered = 1;
    AutoBuffered = 2;
    FullyBuffered = 3;
  end;




type


{ declares }

  DNParallelEnumerable = interface; // type: System.Linq.ParallelEnumerable, namespace: System.Linq
  DNParallelQuery = interface; // type: System.Linq.ParallelQuery, namespace: System.Linq
  DNParallelQuery<TSource> = interface; // type: System.Linq.ParallelQuery`1, namespace: System.Linq
  DNOrderedParallelQuery<TSource> = interface; // type: System.Linq.OrderedParallelQuery`1, namespace: System.Linq


{ objects }

  //-------------namespace: System.Linq----------------
  DNParallelEnumerableClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C52E4D75-2336-54DB-90EC-7CFF07EAB554}']
  { static methods } 

    {class} function Average(source: DNParallelQuery<Int32>): Double; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DNParallelQuery<Int64>): Double; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DNParallelQuery<Single>): Single; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Average(source: DNParallelQuery<Double>): Double; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Average(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Sum(source: DNParallelQuery<Int32>): Int32; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Sum(source: DNParallelQuery<Int64>): Int64; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Sum(source: DNParallelQuery<Single>): Single; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Sum(source: DNParallelQuery<Double>): Double; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Sum(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Min(source: DNParallelQuery<Int32>): Int32; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Min(source: DNParallelQuery<Int64>): Int64; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Min(source: DNParallelQuery<Single>): Single; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Min(source: DNParallelQuery<Double>): Double; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Min(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Max(source: DNParallelQuery<Int32>): Int32; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Max(source: DNParallelQuery<Int64>): Int64; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Max(source: DNParallelQuery<Single>): Single; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Max(source: DNParallelQuery<Double>): Double; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Max(source: DNParallelQuery<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function AsOrdered(source: DNParallelQuery): DNParallelQuery; overload;
    {class} function AsParallel(source: DDNC.System.Private.CoreLib.DNIEnumerable): DNParallelQuery; overload;
    {class} function Range(start: Int32; count: Int32): DNParallelQuery<Int32>;

  end;

  [DNTypeName('System.Linq.ParallelEnumerable')]
  DNParallelEnumerable = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{1E6B9AD3-170B-3B90-8D75-4F6E71DB7867}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNParallelEnumerable = class(TDNGenericImport<DNParallelEnumerableClass, DNParallelEnumerable>) end;

  //-------------namespace: System.Linq----------------
  DNParallelQueryClass = interface(DNObjectClass)
  ['{41C29D12-0BBB-5D6B-85B4-662F94ED432F}']
  end;

  [DNTypeName('System.Linq.ParallelQuery')]
  DNParallelQuery = interface(DDNC.System.Private.CoreLib.DNIEnumerable)
  ['{4E39B5DE-7A32-3E66-9DD6-176EAE30AC21}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNParallelQuery = class(TDNGenericImport<DNParallelQueryClass, DNParallelQuery>) end;

  //-------------namespace: System.Linq----------------
  DNParallelQueryClass<TSource> = interface(DNParallelQueryClass)
  ['{5CF0676E-576F-5604-8BF5-709E08A644CD}']
  end;

  [DNTypeName('System.Linq.ParallelQuery`1')]
  DNParallelQuery<TSource> = interface(DNParallelQuery)
  ['{345A0C71-FD6E-3B46-B3CF-925ED2DA39AF}']
  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TSource>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNParallelQuery<TSource> = class(TDNGenericImport<DNParallelQueryClass<TSource>, DNParallelQuery<TSource>>) end;

  //-------------namespace: System.Linq----------------
  DNOrderedParallelQueryClass<TSource> = interface(DNParallelQueryClass<TSource>)
  ['{FF24391E-77F0-551B-BF99-E061E56697DD}']
  end;

  [DNTypeName('System.Linq.OrderedParallelQuery`1')]
  DNOrderedParallelQuery<TSource> = interface(DNParallelQuery<TSource>)
  ['{1029B062-F16D-3E19-AD53-E31E33FB2D1E}']
  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<TSource>;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNOrderedParallelQuery<TSource> = class(TDNGenericImport<DNOrderedParallelQueryClass<TSource>, DNOrderedParallelQuery<TSource>>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Linq.Parallel, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
