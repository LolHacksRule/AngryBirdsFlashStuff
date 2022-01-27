package §-"?§
{
   import flash.utils.Dictionary;
   
   public class §4"u§
   {
      
      private static var §0"J§:Dictionary = new Dictionary();
       
      
      public function §4"u§()
      {
         super();
      }
      
      public static function §#!y§(param1:Object, param2:String, param3:Number, param4:Number, param5:Function, param6:Class) : void
      {
         if(§0"J§[param1])
         {
            §3S§(§0"J§[param1]).stop();
            delete §0"J§[param1];
         }
         §0"J§[param1] = new param6(param1,param2,param3,param4,param5);
      }
      
      static function §'"5§(param1:§3S§) : void
      {
         delete §0"J§[param1.§!#]§];
      }
   }
}
