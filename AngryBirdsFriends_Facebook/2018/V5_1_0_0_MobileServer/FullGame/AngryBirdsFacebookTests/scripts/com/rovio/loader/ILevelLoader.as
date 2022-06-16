package com.rovio.loader
{
   import flash.utils.ByteArray;
   
   public interface ILevelLoader
   {
       
      
      function loadLevelFromBytes(param1:ByteArray, param2:String, param3:Boolean = true) : void;
      
      function dispose() : void;
      
      function getLevelData(param1:String) : String;
   }
}
