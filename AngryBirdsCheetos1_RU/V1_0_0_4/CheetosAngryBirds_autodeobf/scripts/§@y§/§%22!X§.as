package §@y§
{
   public class §"!X§
   {
      
      private static var §6!`§:Object;
       
      
      public function §"!X§()
      {
         super();
      }
      
      public static function §%I§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§6!`§ == null)
         {
            §6!`§ = new Object();
         }
         if(!§;=§(param1))
         {
            §6!`§[param1] = new §#e§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §;=§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§6!`§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §1!0§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§#e§ = §6!`§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§-C§;
      }
   }
}
