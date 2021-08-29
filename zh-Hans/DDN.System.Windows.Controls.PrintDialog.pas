//----------------------------------------------------------------------------
//  PresentationFramework.dll: PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework: 4.0
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Windows.Controls.PrintDialog
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Windows.Controls.PrintDialog;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.PresentationFramework,
  DDN.System.Printing,
  DDN.ReachFramework,
  DDN.PresentationCore;

type


{ declares }

  DNPrintDialog = interface; // type: System.Windows.Controls.PrintDialog, namespace: System.Windows.Controls


{ objects }

  //-------------namespace: System.Windows.Controls----------------
  DNPrintDialogClass = interface(DDN.mscorlib.DNObjectClass)
  ['{CEB0CE94-EB6B-51E6-AD2B-52258638203E}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Windows.Controls.PrintDialog" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPrintDialog;

  end;

  ///<summary>
  ///  调用标准 Microsoft Windows 打印对话框中，用于配置 <see cref="T:System.Printing.PrintTicket" />
  ///  和 <see cref="T:System.Printing.PrintQueue" />
  ///  根据用户输入，然后打印文档。
  ///</summary>
  [DNTypeName('System.Windows.Controls.PrintDialog')]
  DNPrintDialog = interface(DDN.mscorlib.DNObject)
  ['{1ECA845D-0AF9-3702-AFEE-75CB6B682526}']
  { getters & setters } 

    function get_PageRangeSelection: DNPageRangeSelection;
    procedure set_PageRangeSelection(value: DNPageRangeSelection);
    function get_PageRange: DNPageRange;
    procedure set_PageRange(value: DNPageRange);
    function get_UserPageRangeEnabled: Boolean;
    procedure set_UserPageRangeEnabled(value: Boolean);
    function get_SelectedPagesEnabled: Boolean;
    procedure set_SelectedPagesEnabled(value: Boolean);
    function get_CurrentPageEnabled: Boolean;
    procedure set_CurrentPageEnabled(value: Boolean);
    function get_MinPage: UInt32;
    procedure set_MinPage(value: UInt32);
    function get_MaxPage: UInt32;
    procedure set_MaxPage(value: UInt32);
    function get_PrintQueue: DDN.System.Printing.DNPrintQueue;
    procedure set_PrintQueue(value: DDN.System.Printing.DNPrintQueue);
    function get_PrintTicket: DDN.ReachFramework.DNPrintTicket;
    procedure set_PrintTicket(value: DDN.ReachFramework.DNPrintTicket);
    function get_PrintableAreaWidth: Double;
    function get_PrintableAreaHeight: Double;

  { methods } 

    ///<summary>
    ///  调用 <see cref="T:System.Windows.Controls.PrintDialog" />
    ///  为模式对话框。
    ///</summary>
    ///<returns>
    ///  如果用户单击“打印”，则为 <see langword="true" />
    ///  ；如果用户单击“取消”，则为 <see langword="false" />
    ///  ；或如果用户关闭对话框而不单击“打印”或“取消”，则为 <see langword="null" />
    ///  。
    ///</returns>
    function ShowDialog: DDN.mscorlib.DNNullable<Boolean>;
    ///<summary>
    ///  打印 visual （非文本） 对象，该类派生自 <see cref="T:System.Windows.Media.Visual" />
    ///  类，为 <see cref="T:System.Printing.PrintQueue" />
    ///  当前选定。
    ///</summary>
    ///  <param name="visual"><see cref="T:System.Windows.Media.Visual" />
    ///  打印。
    ///</param>
    ///  <param name="description">
    ///  要打印的作业的说明。
    ///  此文本出现在 用户界面 (UI) 的打印机。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="visual" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure PrintVisual(visual: DDN.PresentationCore.DNVisual; description: string);
    ///<summary>
    ///  打印 <see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  对象传递给 <see cref="T:System.Printing.PrintQueue" />
    ///  当前选定。
    ///</summary>
    ///  <param name="documentPaginator"><see cref="T:System.Windows.Documents.DocumentPaginator" />
    ///  对象打印。
    ///</param>
    ///  <param name="description">
    ///  要打印的作业的说明。
    ///  此文本出现在 用户界面 (UI) 的打印机。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="documentPaginator" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure PrintDocument(documentPaginator: DDN.PresentationCore.DNDocumentPaginator; description: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置 <see cref="T:System.Windows.Controls.PageRangeSelection" />
    ///  的此实例的 <see cref="T:System.Windows.Controls.PrintDialog" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Windows.Controls.PageRangeSelection" />
    ///  值，该值表示要打印的页范围的类型。
    ///</returns>
    property PageRangeSelection: DNPageRangeSelection read get_PageRangeSelection write set_PageRangeSelection;
    ///<summary>
    ///  获取或设置要打印时的页面范围 <see cref="P:System.Windows.Controls.PrintDialog.PageRangeSelection" />
    ///  设置为 <see cref="F:System.Windows.Controls.PageRangeSelection.UserPages" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Windows.Controls.PageRange" />
    ///  表示打印的页范围。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Windows.Controls.PageRange" />
    ///  对象，该对象用于设置该属性具有范围的开始处，或者设置为小于 1 的值范围的末尾。
    ///</exception>
    property PageRange: DNPageRange read get_PageRange write set_PageRange;
    ///<summary>
    ///  获取或设置一个值，该值指示是否的用户 打印 的对话框具有用于指定要打印的页范围的选项。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该选项才可用。否则为 <see langword="false" />
    ///  。
    ///</returns>
    property UserPageRangeEnabled: Boolean read get_UserPageRangeEnabled write set_UserPageRangeEnabled;
    ///<summary>
    ///  获取或设置一个值，该值指示是否启用选项可在打印所选的页面。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果启用打印所选的页的选项;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SelectedPagesEnabled: Boolean read get_SelectedPagesEnabled write set_SelectedPagesEnabled;
    ///<summary>
    ///  获取或设置一个值，该值指示是否启用用于打印当前页的选项。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果启用打印当前页的选项;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property CurrentPageEnabled: Boolean read get_CurrentPageEnabled write set_CurrentPageEnabled;
    ///<summary>
    ///  获取或设置允许的最小页码页范围内。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.UInt32" />
    ///  ，表示可以使用中的页范围的最小页码 打印 对话框。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  该属性设置为小于 1。
    ///</exception>
    property MinPage: UInt32 read get_MinPage write set_MinPage;
    ///<summary>
    ///  获取或设置允许的最大页码页范围内。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.UInt32" />
    ///  ，表示可以使用中的页范围的最大页码 打印 对话框。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  该属性设置为小于 1。
    ///</exception>
    property MaxPage: UInt32 read get_MaxPage write set_MaxPage;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Printing.PrintQueue" />
    ///  ，它表示所选打印机。
    ///</summary>
    ///<returns><see cref="T:System.Printing.PrintQueue" />
    ///  用户选择的。
    ///</returns>
    property PrintQueue: DDN.System.Printing.DNPrintQueue read get_PrintQueue write set_PrintQueue;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Printing.PrintTicket" />
    ///  ，它由 <see cref="T:System.Windows.Controls.PrintDialog" />
    ///  当用户单击 打印 当前打印作业。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Printing.PrintTicket" />
    ///  下一步的时候，都可以使用 打印 单击对话框中的按钮。
    ///  将此值设置 <see cref="P:System.Windows.Controls.PrintDialog.PrintTicket" />
    ///  属性不会验证或修改指定 <see cref="T:System.Printing.PrintTicket" />
    ///  特定 <see cref="T:System.Printing.PrintQueue" />
    ///  。
    ///  如果需要可以使用 <see cref="M:System.Printing.PrintQueue.MergeAndValidatePrintTicket(System.Printing.PrintTicket,System.Printing.PrintTicket)" />
    ///  方法来创建 <see cref="T:System.Printing.PrintQueue" />
    ///  -特定 <see cref="T:System.Printing.PrintTicket" />
    ///  这是对给定的打印机有效。
    ///</returns>
    property PrintTicket: DDN.ReachFramework.DNPrintTicket read get_PrintTicket write set_PrintTicket;
    ///<summary>
    ///  获取页上的可打印区域的宽度。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Double" />
    ///  ，表示可打印的页面区域的宽度。
    ///</returns>
    property PrintableAreaWidth: Double read get_PrintableAreaWidth;
    ///<summary>
    ///  获取页上的可打印区域的高度。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Double" />
    ///  表示可打印的页面区域的高度。
    ///</returns>
    property PrintableAreaHeight: Double read get_PrintableAreaHeight;
  end;

  TDNPrintDialog = class(TDNGenericImport<DNPrintDialogClass, DNPrintDialog>) end;


implementation

end.
