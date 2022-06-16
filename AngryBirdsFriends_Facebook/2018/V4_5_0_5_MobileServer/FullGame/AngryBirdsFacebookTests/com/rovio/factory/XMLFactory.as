package com.rovio.factory
{
   import flash.utils.ByteArray;
   
   public class XMLFactory
   {
       
      
      public function XMLFactory()
      {
         super();
      }
      
      public static function fromOctetStreamClass(stream:Class) : XML
      {
         var ba:ByteArray = new stream();
         return new XML(ba.readUTFBytes(ba.length));
      }
   }
}
