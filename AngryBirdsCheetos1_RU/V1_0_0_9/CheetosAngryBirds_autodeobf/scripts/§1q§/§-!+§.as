package §1q§
{
   public class §-!+§
   {
      
      private static var §-!Q§:Object;
       
      
      public function §-!+§()
      {
         super();
      }
      
      public static function §>!=§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§-!Q§ == null)
         {
            §-!Q§ = new Object();
         }
         if(!§"!5§(param1))
         {
            §-!Q§[param1] = new §;!F§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §"!5§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§-!Q§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §"x§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§;!F§ = §-!Q§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§1m§;
      }
   }
}
