package com.rovio.factory
{
   import flash.utils.ByteArray;
   
   public class EmbedFileFactory
   {
       
      
      public function EmbedFileFactory()
      {
         super();
      }
      
      public static function fromOctetStreamClass(param1:Class) : String
      {
         var _loc2_:ByteArray = new param1();
         return _loc2_.readUTFBytes(_loc2_.length);
      }
   }
}
