//----------------------------------------------------------------------------
//  System.Threading.Tasks.Dataflow.dll: System.Threading.Tasks.Dataflow, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Threading.Tasks.Dataflow
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Threading.Tasks.Dataflow;

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

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowMessageStatus')]
  DNDataflowMessageStatus = type Integer;
  DNDataflowMessageStatusHelper = record helper for DNDataflowMessageStatus
  public const
    Accepted = 0;
    Declined = 1;
    Postponed = 2;
    NotAvailable = 3;
    DecliningPermanently = 4;
  end;




type


{ declares }

  DNIDataflowBlock = interface; // type: System.Threading.Tasks.Dataflow.IDataflowBlock, namespace: System.Threading.Tasks.Dataflow
  DNISourceBlock<TOutput> = interface; // type: System.Threading.Tasks.Dataflow.ISourceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNIReceivableSourceBlock<TOutput> = interface; // type: System.Threading.Tasks.Dataflow.IReceivableSourceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNITargetBlock<TInput> = interface; // type: System.Threading.Tasks.Dataflow.ITargetBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNIPropagatorBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.IPropagatorBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNActionBlock<TInput> = interface; // type: System.Threading.Tasks.Dataflow.ActionBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBatchBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BatchBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBatchedJoinBlock<T1, T2> = interface; // type: System.Threading.Tasks.Dataflow.BatchedJoinBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNBatchedJoinBlock<T1, T2, T3> = interface; // type: System.Threading.Tasks.Dataflow.BatchedJoinBlock`3, namespace: System.Threading.Tasks.Dataflow
  DNBroadcastBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BroadcastBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNBufferBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.BufferBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNDataflowBlock = interface; // type: System.Threading.Tasks.Dataflow.DataflowBlock, namespace: System.Threading.Tasks.Dataflow
  DNDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.DataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNExecutionDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.ExecutionDataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNGroupingDataflowBlockOptions = interface; // type: System.Threading.Tasks.Dataflow.GroupingDataflowBlockOptions, namespace: System.Threading.Tasks.Dataflow
  DNDataflowLinkOptions = interface; // type: System.Threading.Tasks.Dataflow.DataflowLinkOptions, namespace: System.Threading.Tasks.Dataflow
  DNJoinBlock<T1, T2> = interface; // type: System.Threading.Tasks.Dataflow.JoinBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNJoinBlock<T1, T2, T3> = interface; // type: System.Threading.Tasks.Dataflow.JoinBlock`3, namespace: System.Threading.Tasks.Dataflow
  DNTransformBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.TransformBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNTransformManyBlock<TInput, TOutput> = interface; // type: System.Threading.Tasks.Dataflow.TransformManyBlock`2, namespace: System.Threading.Tasks.Dataflow
  DNWriteOnceBlock<T> = interface; // type: System.Threading.Tasks.Dataflow.WriteOnceBlock`1, namespace: System.Threading.Tasks.Dataflow
  DNDataflowMessageHeader = interface; // type: System.Threading.Tasks.Dataflow.DataflowMessageHeader, namespace: System.Threading.Tasks.Dataflow


{ objects }

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IDataflowBlock')]
  DNIDataflowBlock = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E1BD6CA2-CA92-3066-ABAF-1A792727FC4A}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    procedure Fault(exception: DDNC.System.Private.CoreLib.DNException);

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.ISourceBlock`1')]
  DNISourceBlock<TOutput> = interface(DNIDataflowBlock)
  ['{E986232A-4388-39DF-AC79-96B754E76439}']
  { methods } 

    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function ConsumeMessage(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>; out messageConsumed: Boolean): TOutput;
    function ReserveMessage(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>): Boolean;
    procedure ReleaseReservation(messageHeader: DNDataflowMessageHeader; target: DNITargetBlock<TOutput>);

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IReceivableSourceBlock`1')]
  DNIReceivableSourceBlock<TOutput> = interface(DNISourceBlock<TOutput>)
  ['{0EA62736-976E-31E6-9472-159ADF33C413}']
  { methods } 

    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.ITargetBlock`1')]
  DNITargetBlock<TInput> = interface(DNIDataflowBlock)
  ['{E4E18FDC-AEF4-309D-A150-4B9E171DCF79}']
  { methods } 

    function OfferMessage(messageHeader: DNDataflowMessageHeader; messageValue: TInput; source: DNISourceBlock<TInput>; consumeToAccept: Boolean): DNDataflowMessageStatus;

  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  [DNTypeName('System.Threading.Tasks.Dataflow.IPropagatorBlock`2')]
  DNIPropagatorBlock<TInput, TOutput> = interface(DNITargetBlock<TInput>)
  ['{78EBD1AF-0468-358A-B2E7-FD79469B946B}']
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNActionBlockClass<TInput> = interface(DNObjectClass)
  ['{1C84440B-60E4-5EE7-9E5B-BFEDDF0AC305}']
  { constructors } 

    {class} function init(action: DDNC.System.Private.CoreLib.DNAction<TInput>): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNAction<TInput>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask>): DNActionBlock<TInput>; overload;
    {class} function init(action: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNActionBlock<TInput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.ActionBlock`1')]
  DNActionBlock<TInput> = interface(DNITargetBlock<TInput>)
  ['{EA94A1DB-38CD-3271-93D8-E6CECF6A1D63}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;

  { methods } 

    procedure Complete;
    function Post(item: TInput): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
  end;

  TDNActionBlock<TInput> = class(TDNGenericImport<DNActionBlockClass<TInput>, DNActionBlock<TInput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchBlockClass<T> = interface(DNObjectClass)
  ['{0EC137A3-025D-5A29-9DB4-50CF0E746624}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchBlock<T>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchBlock`1')]
  DNBatchBlock<T> = interface(DNIPropagatorBlock<T, TArray<T>>)
  ['{F9038628-CB91-3AE3-B2E0-911275019D40}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_BatchSize: Int32;

  { methods } 

    procedure Complete;
    procedure TriggerBatch;
    function LinkTo(target: DNITargetBlock<TArray<T>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TArray<T>>; out item: TArray<T>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TArray<T>>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property BatchSize: Int32 read get_BatchSize;
  end;

  TDNBatchBlock<T> = class(TDNGenericImport<DNBatchBlockClass<T>, DNBatchBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchedJoinBlockClass<T1, T2> = interface(DNObjectClass)
  ['{5D51E39D-FB97-5164-9586-AA69729CA669}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchedJoinBlock<T1, T2>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchedJoinBlock<T1, T2>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchedJoinBlock`2')]
  DNBatchedJoinBlock<T1, T2> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>)
  ['{6B518CA5-E15C-3D00-BEA2-9178D8523503}']
  { getters & setters } 

    function get_BatchSize: Int32;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>; out item: DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BatchSize: Int32 read get_BatchSize;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBatchedJoinBlock<T1, T2> = class(TDNGenericImport<DNBatchedJoinBlockClass<T1, T2>, DNBatchedJoinBlock<T1, T2>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBatchedJoinBlockClass<T1, T2, T3> = interface(DNObjectClass)
  ['{81437606-A8D2-5DDD-8749-121C32A1CC6B}']
  { constructors } 

    {class} function init(batchSize: Int32): DNBatchedJoinBlock<T1, T2, T3>; overload;
    {class} function init(batchSize: Int32; dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNBatchedJoinBlock<T1, T2, T3>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BatchedJoinBlock`3')]
  DNBatchedJoinBlock<T1, T2, T3> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>)
  ['{D4069B51-2A23-3015-BEDD-AA08A0E1B84B}']
  { getters & setters } 

    function get_BatchSize: Int32;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_Target3: DNITargetBlock<T3>;
    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>; out item: DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<DDNC.System.Private.CoreLib.DNIList<T1>, DDNC.System.Private.CoreLib.DNIList<T2>, DDNC.System.Private.CoreLib.DNIList<T3>>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BatchSize: Int32 read get_BatchSize;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property Target3: DNITargetBlock<T3> read get_Target3;
    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBatchedJoinBlock<T1, T2, T3> = class(TDNGenericImport<DNBatchedJoinBlockClass<T1, T2, T3>, DNBatchedJoinBlock<T1, T2, T3>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBroadcastBlockClass<T> = interface(DNObjectClass)
  ['{4B4FEB96-BBFD-5056-810D-AE534A3003D9}']
  { constructors } 

    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>): DNBroadcastBlock<T>; overload;
    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>; dataflowBlockOptions: DNDataflowBlockOptions): DNBroadcastBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BroadcastBlock`1')]
  DNBroadcastBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{EC264EE8-BAD9-349C-86E0-0AA11C8C95E2}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBroadcastBlock<T> = class(TDNGenericImport<DNBroadcastBlockClass<T>, DNBroadcastBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNBufferBlockClass<T> = interface(DNObjectClass)
  ['{631DE362-87DC-5F16-BC35-C2D3965EDC78}']
  { constructors } 

    {class} function init: DNBufferBlock<T>; overload;
    {class} function init(dataflowBlockOptions: DNDataflowBlockOptions): DNBufferBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.BufferBlock`1')]
  DNBufferBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{6DCB50C0-22A7-36F4-AE7F-F763FC119BE1}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<T>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNBufferBlock<T> = class(TDNGenericImport<DNBufferBlockClass<T>, DNBufferBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowBlockClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{54B9D29D-8CC1-587C-B6E0-5D06FDE4A1BC}']
  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowBlock')]
  DNDataflowBlock = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F10D135E-5B92-3607-9617-06340C921402}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNDataflowBlock = class(TDNGenericImport<DNDataflowBlockClass, DNDataflowBlock>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowBlockOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{876BDBFB-0864-52B1-800E-6E48ABBB8A5E}']
  { constructors } 

    {class} function init: DNDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowBlockOptions')]
  DNDataflowBlockOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{EC96308D-B240-3E4E-A9F5-EF56667B1EE4}']
  { getters & setters } 

    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNDataflowBlockOptions = class(TDNGenericImport<DNDataflowBlockOptionsClass, DNDataflowBlockOptions>)
  public const
   Unbounded = -1;
  end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNExecutionDataflowBlockOptionsClass = interface(DNDataflowBlockOptionsClass)
  ['{5BB5E1B9-F088-5BD8-B4C3-031E5E0EB264}']
  { constructors } 

    {class} function init: DNExecutionDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.ExecutionDataflowBlockOptions')]
  DNExecutionDataflowBlockOptions = interface(DNDataflowBlockOptions)
  ['{AE540B25-487D-32DC-A7E1-6590DE45E4D9}']
  { getters & setters } 

    function get_MaxDegreeOfParallelism: Int32;
    procedure set_MaxDegreeOfParallelism(value: Int32);
    function get_SingleProducerConstrained: Boolean;
    procedure set_SingleProducerConstrained(value: Boolean);
    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property MaxDegreeOfParallelism: Int32 read get_MaxDegreeOfParallelism write set_MaxDegreeOfParallelism;
    property SingleProducerConstrained: Boolean read get_SingleProducerConstrained write set_SingleProducerConstrained;
    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNExecutionDataflowBlockOptions = class(TDNGenericImport<DNExecutionDataflowBlockOptionsClass, DNExecutionDataflowBlockOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNGroupingDataflowBlockOptionsClass = interface(DNDataflowBlockOptionsClass)
  ['{6957E73E-AE03-5381-A118-40B9DD0B520F}']
  { constructors } 

    {class} function init: DNGroupingDataflowBlockOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.GroupingDataflowBlockOptions')]
  DNGroupingDataflowBlockOptions = interface(DNDataflowBlockOptions)
  ['{673D2996-77A3-34B2-BEE7-618664917187}']
  { getters & setters } 

    function get_Greedy: Boolean;
    procedure set_Greedy(value: Boolean);
    function get_MaxNumberOfGroups: Int64;
    procedure set_MaxNumberOfGroups(value: Int64);
    function get_TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler;
    procedure set_TaskScheduler(value: DDNC.System.Private.CoreLib.DNTaskScheduler);
    function get_CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken;
    procedure set_CancellationToken(value: DDNC.System.Private.CoreLib.DNCancellationToken);
    function get_MaxMessagesPerTask: Int32;
    procedure set_MaxMessagesPerTask(value: Int32);
    function get_BoundedCapacity: Int32;
    procedure set_BoundedCapacity(value: Int32);
    function get_NameFormat: string;
    procedure set_NameFormat(value: string);
    function get_EnsureOrdered: Boolean;
    procedure set_EnsureOrdered(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Greedy: Boolean read get_Greedy write set_Greedy;
    property MaxNumberOfGroups: Int64 read get_MaxNumberOfGroups write set_MaxNumberOfGroups;
    property TaskScheduler: DDNC.System.Private.CoreLib.DNTaskScheduler read get_TaskScheduler write set_TaskScheduler;
    property CancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken read get_CancellationToken write set_CancellationToken;
    property MaxMessagesPerTask: Int32 read get_MaxMessagesPerTask write set_MaxMessagesPerTask;
    property BoundedCapacity: Int32 read get_BoundedCapacity write set_BoundedCapacity;
    property NameFormat: string read get_NameFormat write set_NameFormat;
    property EnsureOrdered: Boolean read get_EnsureOrdered write set_EnsureOrdered;
  end;

  TDNGroupingDataflowBlockOptions = class(TDNGenericImport<DNGroupingDataflowBlockOptionsClass, DNGroupingDataflowBlockOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowLinkOptionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{F72BAB22-13E9-55DA-86B8-245939509E4D}']
  { constructors } 

    {class} function init: DNDataflowLinkOptions;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowLinkOptions')]
  DNDataflowLinkOptions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F7F22A0E-A762-3F66-BABD-F3B4404CF746}']
  { getters & setters } 

    function get_PropagateCompletion: Boolean;
    procedure set_PropagateCompletion(value: Boolean);
    function get_MaxMessages: Int32;
    procedure set_MaxMessages(value: Int32);
    function get_Append: Boolean;
    procedure set_Append(value: Boolean);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property PropagateCompletion: Boolean read get_PropagateCompletion write set_PropagateCompletion;
    property MaxMessages: Int32 read get_MaxMessages write set_MaxMessages;
    property Append: Boolean read get_Append write set_Append;
  end;

  TDNDataflowLinkOptions = class(TDNGenericImport<DNDataflowLinkOptionsClass, DNDataflowLinkOptions>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNJoinBlockClass<T1, T2> = interface(DNObjectClass)
  ['{DB21B8E2-4C14-5084-B8F1-D50E3069E5D8}']
  { constructors } 

    {class} function init: DNJoinBlock<T1, T2>; overload;
    {class} function init(dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNJoinBlock<T1, T2>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.JoinBlock`2')]
  DNJoinBlock<T1, T2> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>)
  ['{6BC11BBF-7C46-3CF8-A7BC-BD914617B675}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>; out item: DDNC.System.Private.CoreLib.DNTuple<T1, T2>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<T1, T2>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
  end;

  TDNJoinBlock<T1, T2> = class(TDNGenericImport<DNJoinBlockClass<T1, T2>, DNJoinBlock<T1, T2>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNJoinBlockClass<T1, T2, T3> = interface(DNObjectClass)
  ['{16AFA584-2480-50BD-A2FB-06A988B9726E}']
  { constructors } 

    {class} function init: DNJoinBlock<T1, T2, T3>; overload;
    {class} function init(dataflowBlockOptions: DNGroupingDataflowBlockOptions): DNJoinBlock<T1, T2, T3>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.JoinBlock`3')]
  DNJoinBlock<T1, T2, T3> = interface(DNIReceivableSourceBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>)
  ['{4C25AE2B-301C-3350-B2DD-837EF8B4D326}']
  { getters & setters } 

    function get_OutputCount: Int32;
    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_Target1: DNITargetBlock<T1>;
    function get_Target2: DNITargetBlock<T2>;
    function get_Target3: DNITargetBlock<T3>;

  { methods } 

    function LinkTo(target: DNITargetBlock<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>; out item: DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<DDNC.System.Private.CoreLib.DNTuple<T1, T2, T3>>): Boolean;
    procedure Complete;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property OutputCount: Int32 read get_OutputCount;
    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property Target1: DNITargetBlock<T1> read get_Target1;
    property Target2: DNITargetBlock<T2> read get_Target2;
    property Target3: DNITargetBlock<T3> read get_Target3;
  end;

  TDNJoinBlock<T1, T2, T3> = class(TDNGenericImport<DNJoinBlockClass<T1, T2, T3>, DNJoinBlock<T1, T2, T3>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNTransformBlockClass<TInput, TOutput> = interface(DNObjectClass)
  ['{8FC036F6-E45B-5983-8B64-55CCDAA75C70}']
  { constructors } 

    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, TOutput>): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, TOutput>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<TOutput>>): DNTransformBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<TOutput>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformBlock<TInput, TOutput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.TransformBlock`2')]
  DNTransformBlock<TInput, TOutput> = interface(DNIPropagatorBlock<TInput, TOutput>)
  ['{4214955B-B81A-3B6E-80D5-659750CD8B92}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;
    function get_OutputCount: Int32;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
    property OutputCount: Int32 read get_OutputCount;
  end;

  TDNTransformBlock<TInput, TOutput> = class(TDNGenericImport<DNTransformBlockClass<TInput, TOutput>, DNTransformBlock<TInput, TOutput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNTransformManyBlockClass<TInput, TOutput> = interface(DNObjectClass)
  ['{8EE5B62F-7395-50AE-B8D5-FC2FA6A08110}']
  { constructors } 

    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>>): DNTransformManyBlock<TInput, TOutput>; overload;
    {class} function init(transform: DDNC.System.Private.CoreLib.DNFunc<TInput, DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNIEnumerable<TOutput>>>; dataflowBlockOptions: DNExecutionDataflowBlockOptions): DNTransformManyBlock<TInput, TOutput>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.TransformManyBlock`2')]
  DNTransformManyBlock<TInput, TOutput> = interface(DNIPropagatorBlock<TInput, TOutput>)
  ['{6A479D71-AE4B-3416-80FC-50A08896B481}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;
    function get_InputCount: Int32;
    function get_OutputCount: Int32;

  { methods } 

    procedure Complete;
    function LinkTo(target: DNITargetBlock<TOutput>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<TOutput>; out item: TOutput): Boolean;
    function TryReceiveAll(out items: DDNC.System.Private.CoreLib.DNIList<TOutput>): Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
    property InputCount: Int32 read get_InputCount;
    property OutputCount: Int32 read get_OutputCount;
  end;

  TDNTransformManyBlock<TInput, TOutput> = class(TDNGenericImport<DNTransformManyBlockClass<TInput, TOutput>, DNTransformManyBlock<TInput, TOutput>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNWriteOnceBlockClass<T> = interface(DNObjectClass)
  ['{D6D7F84A-20A2-5689-A454-982C28F4D9B8}']
  { constructors } 

    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>): DNWriteOnceBlock<T>; overload;
    {class} function init(cloningFunction: DDNC.System.Private.CoreLib.DNFunc<T, T>; dataflowBlockOptions: DNDataflowBlockOptions): DNWriteOnceBlock<T>; overload;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.WriteOnceBlock`1')]
  DNWriteOnceBlock<T> = interface(DNIPropagatorBlock<T, T>)
  ['{24699ED4-FA6D-3967-8486-C28D4C834865}']
  { getters & setters } 

    function get_Completion: DDNC.System.Private.CoreLib.DNTask;

  { methods } 

    procedure Complete;
    function TryReceive(filter: DDNC.System.Private.CoreLib.DNPredicate<T>; out item: T): Boolean;
    function LinkTo(target: DNITargetBlock<T>; linkOptions: DNDataflowLinkOptions): DDNC.System.Private.CoreLib.DNIDisposable;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Completion: DDNC.System.Private.CoreLib.DNTask read get_Completion;
  end;

  TDNWriteOnceBlock<T> = class(TDNGenericImport<DNWriteOnceBlockClass<T>, DNWriteOnceBlock<T>>) end;

  //-------------namespace: System.Threading.Tasks.Dataflow----------------
  DNDataflowMessageHeaderClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{9E9A1F85-EEE2-54C1-A00B-CE6092134CF4}']
  { constructors } 

    {class} function init(id: Int64): DNDataflowMessageHeader;

  end;

  [DNTypeName('System.Threading.Tasks.Dataflow.DataflowMessageHeader')]
  DNDataflowMessageHeader = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{91DC78E9-2DBF-3BA4-8C13-3C401E9586C2}']
  { getters & setters } 

    function get_IsValid: Boolean;
    function get_Id: Int64;

  { methods } 

    function Equals(other: DNDataflowMessageHeader): Boolean; overload;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsValid: Boolean read get_IsValid;
    property Id: Int64 read get_Id;
  end;

  TDNDataflowMessageHeader = class(TDNGenericImport<DNDataflowMessageHeaderClass, DNDataflowMessageHeader>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Threading.Tasks.Dataflow, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
