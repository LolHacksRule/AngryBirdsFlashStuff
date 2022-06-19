package com.rovio.loader
{
   import flash.utils.ByteArray;
   
   public interface IPackageLoader
   {
       
      
      function loadPackageFromBytes(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void;
      
      function stopLoading() : void;
      
      function get loadingCompleted() : Boolean;
      
      function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void;
      
      function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void;
      
      function getFile(param1:String, param2:String) : String;
      
      function hasFile(param1:String, param2:String) : Boolean;
   }
}
