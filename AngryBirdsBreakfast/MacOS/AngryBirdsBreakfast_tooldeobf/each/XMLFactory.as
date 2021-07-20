package each
{
   import flash.utils.ByteArray;
   
   public class XMLFactory
   {
       
      
      public function XMLFactory()
      {
         super();
      }
      
      public static function fromOctetStreamClass(param1:Class) : XML
      {
         var _loc2_:ByteArray = new param1();
         return new XML(_loc2_.readUTFBytes(_loc2_.length));
      }
   }
}
