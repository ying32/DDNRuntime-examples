[中文](NEWS-README.zh-CN.md)   | English      

-----

### What's new

**The following is provided by Google Translate. If there are any errors, please refer to the Chinese version.**    

* v0.1.30
   * 1. Fix the failure to compile `DDN.mscorlib.pas` due to the low-level Delphi compiler bug, The original bug description `F2084 Internal error URW849 when unit names and type names are long enough`.
   * 2. Fix the inability to run under Windows because the lower version of .NET Framework does not carry the .NET Standard library.
   * 3. Due to the limitation of the compiler, adjust the support of generics, the minimum is XE8.
   * 4. `DDN.InitNETFramework` and `DDNC.InitNETCore` add custom initial loading assembly exception handling callbacks.

* v0.1.25
   * 1. Adjust `LoadAssemblyModule`, remove 2 parameters, and now use assembly qualified name or full path.

* v0.1.24
   * 1. Fix that some exceptions will be reported when returning the interface type.
   * 2. Add some parameters to `LoadAssemblyModule` to query whether the current assembly has been loaded.
   * 3. Fixed the type that was not visible in the external assembly when searching for the type.

* v0.1.23
   * 1. Add support for .NET Core x86.

* v0.1.22  
   * 1. Add support for .NET Core 2.1.
   * 2. Fix some memory leaks.
   * 3. Fix the problem that the type name is incorrect when searching for some types.
   * 4. Change the DLL loading method during DDN runtime, no longer need to be attached.  

* v0.1.21  
   * 1. Add basic type conversion function, see `DDN.Helpers` unit for details.

* v0.1.20  
   * 1. Add support for generic types (nested generics are not currently supported).
   * 2. Fix that there is no forced data cleaning when creating entrusted data.
   * 3. Added a new `DDN.Helpers` unit.
   * 4. Optimize the speed of type search.
   * 5. Refactor the GenCode tool and no longer generate Common units. MS standard library will be provided directly.

* v0.1.16
  * 1. Added `SetShowDetailedExceptionMessage` to display detailed error messages when used for exceptions.
  * 2. Restore `SetExceptionMask` in initialization to shield certain exceptions by default.
