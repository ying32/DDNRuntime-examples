中文   | [English](NEWS-README.md)    

-----

### 更新日志

* v0.1.30
   * 1、修复因低版Delphi编译器Bug造成无法编译`DDN.mscorlib.pas`，原bug描述`F2084 Internal error URW849 when unit names and type names are long enough`。
   * 2、修复Windows下因低版本.NET Framework未携带.NET Standard库造成无法运行。
   * 3、因编译器限制，调整泛型的支持，最低为XE8。
   * 4、`DDN.InitNETFramework`和`DDNC.InitNETCore`增加自定义初始时加载程序集异常处理回调。

* v0.1.25
   * 1、调整`LoadAssemblyModule`，移除2个参数，现可传入程序集强名称或者全路径。

* v0.1.24
   * 1、修复返回接口类型时在某些会报异常。
   * 2、`LoadAssemblyModule`添加一些一个参数，查询当前程序集是否已经加载。
   * 3、修复查找类型时移除掉外部程序集不可视的类型。

* v0.1.23
   * 1、增加.NET Core x86支持。

* v0.1.22
   * 1、增加.NET Core 2.1的支持。
   * 2、修复一些内存泄露问题。
   * 3、修复一些类型查找时类型名不正确问题。
   * 4、改变DDN运行时DLL加载方式，不再需要附带。

* v0.1.21  
  * 1、增加基础类型转换功能，详见`DDN.Helpers`单元。

* v0.1.20
  * 1、增加泛型类型支持（暂不支持嵌套的泛型）。
  * 2、修复创建委托数据时没有强制清理数据。
  * 3、增加新的`DDN.Helpers`单元。
  * 4、优化类型查找的速度。
  * 5、重构GenCode工具，不再生成Common单元，MS标准库将直接提供。

* v0.1.16
  * 1、增加`SetShowDetailedExceptionMessage`，用于异常时可以显示详细错误信息。
  * 2、initialization中还原`SetExceptionMask`，用于默认屏蔽某些异常。

* v0.1.15

  * 1、修复委托与事件在某些情况下内存未释放。

* v0.1.14

  * 1、删除`TDNType.GetType`方法。
  * 2、导入器增`typeid`属性。
  * 3、委托类型更改为类TMethod数据类型，可直接设置类方法。
  * 4、添加事件支持。

* v0.1.12

  * 1、增加委托类型的支持。

* v0.1.11

  * 1、修复特定情况下的内存泄露。
  * 2、调整DDNRuntime内部枚举类型的实例。
 


