package com.rovio.assets
{
   public class §1F§
   {
      
      private static var §7N§:Object;
       
      
      public function §1F§()
      {
         super();
      }
      
      public static function §1v§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§7N§ == null)
         {
            §7N§ = new Object();
         }
         if(!§"!6§(param1))
         {
            §7N§[param1] = new §%D§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §"!6§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§7N§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §"!_§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§%D§ = §7N§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§2!"§;
      }
   }
}
