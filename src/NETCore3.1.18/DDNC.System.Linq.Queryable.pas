//----------------------------------------------------------------------------
//  System.Linq.Queryable.dll: System.Linq.Queryable, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Linq.Queryable
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Linq.Queryable;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Linq.Expressions;

type


{ declares }

  DNEnumerableExecutor = interface; // type: System.Linq.EnumerableExecutor, namespace: System.Linq
  DNEnumerableExecutor<T> = interface; // type: System.Linq.EnumerableExecutor`1, namespace: System.Linq
  DNEnumerableQuery = interface; // type: System.Linq.EnumerableQuery, namespace: System.Linq
  DNEnumerableQuery<T> = interface; // type: System.Linq.EnumerableQuery`1, namespace: System.Linq
  DNQueryable = interface; // type: System.Linq.Queryable, namespace: System.Linq


{ objects }

  //-------------namespace: System.Linq----------------
  DNEnumerableExecutorClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{0B9162BB-3CC1-541A-A9B4-FAC2EFE965D7}']
  end;

  [DNTypeName('System.Linq.EnumerableExecutor')]
  DNEnumerableExecutor = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D3845693-1DD5-3A25-ADB3-B66E5E7747F1}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEnumerableExecutor = class(TDNGenericImport<DNEnumerableExecutorClass, DNEnumerableExecutor>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableExecutorClass<T> = interface(DNEnumerableExecutorClass)
  ['{9758E7BD-3F15-518E-B5DF-51E0370B9C4C}']
  { constructors } 

    {class} function init(expression: DDNC.System.Linq.Expressions.DNExpression): DNEnumerableExecutor<T>;

  end;

  [DNTypeName('System.Linq.EnumerableExecutor`1')]
  DNEnumerableExecutor<T> = interface(DNEnumerableExecutor)
  ['{D9CF66A0-2D32-38D7-9A66-D708876BDA2B}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEnumerableExecutor<T> = class(TDNGenericImport<DNEnumerableExecutorClass<T>, DNEnumerableExecutor<T>>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableQueryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{75602CAF-7BEF-5AB0-8E3E-5E42C30E06BD}']
  end;

  [DNTypeName('System.Linq.EnumerableQuery')]
  DNEnumerableQuery = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{277486C5-919B-345B-8428-7A232352A645}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEnumerableQuery = class(TDNGenericImport<DNEnumerableQueryClass, DNEnumerableQuery>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableQueryClass<T> = interface(DNEnumerableQueryClass)
  ['{6B55403E-EA4E-51B6-8CDB-0DD992804751}']
  { constructors } 

    {class} function init(enumerable: DDNC.System.Private.CoreLib.DNIEnumerable<T>): DNEnumerableQuery<T>; overload;
    {class} function init(expression: DDNC.System.Linq.Expressions.DNExpression): DNEnumerableQuery<T>; overload;

  end;

  [DNTypeName('System.Linq.EnumerableQuery`1')]
  DNEnumerableQuery<T> = interface(DNEnumerableQuery)
  ['{1BCF56DE-5F33-37B6-8C5B-4BE774F44A51}']
  { methods } 

    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNEnumerableQuery<T> = class(TDNGenericImport<DNEnumerableQueryClass<T>, DNEnumerableQuery<T>>) end;

  //-------------namespace: System.Linq----------------
  DNQueryableClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{3582ECC5-89C8-5DA8-96BB-00F92D4980F2}']
  { static methods } 

    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Int32>): Int32; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Int64>): Int64; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Single>): Single; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Double>): Double; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Int32>): Double; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Int64>): Double; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Single>): Single; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Double>): Double; overload;
    {class} function AsQueryable(source: DDNC.System.Private.CoreLib.DNIEnumerable): DDNC.System.Linq.Expressions.DNIQueryable; overload;

  end;

  [DNTypeName('System.Linq.Queryable')]
  DNQueryable = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{42DDA847-C747-3B70-81ED-E6659AC556E1}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNQueryable = class(TDNGenericImport<DNQueryableClass, DNQueryable>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Linq.Queryable, Version=4.0.4.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
