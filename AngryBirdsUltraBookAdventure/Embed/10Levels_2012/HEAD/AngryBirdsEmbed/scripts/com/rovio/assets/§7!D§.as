package com.rovio.assets
{
   public class §7!D§
   {
      
      private static var §,u§:Object;
       
      
      public function §7!D§()
      {
         super();
      }
      
      public static function §%!D§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§,u§ == null)
         {
            §,u§ = new Object();
         }
         if(!§^2§(param1))
         {
            §,u§[param1] = new §'[§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §^2§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§,u§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §?0§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§'[§ = §,u§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§#!=§;
      }
   }
}
