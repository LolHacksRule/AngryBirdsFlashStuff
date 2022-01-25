package §="§
{
   public class §@5§
   {
      
      private static var §!!%§:Object;
       
      
      public function §@5§()
      {
         super();
      }
      
      public static function §3z§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§!!%§ == null)
         {
            §!!%§ = new Object();
         }
         if(!§!E§(param1))
         {
            §!!%§[param1] = new §-!%§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §!E§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§!!%§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §>! §(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§-!%§ = §!!%§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§0d§;
      }
   }
}
