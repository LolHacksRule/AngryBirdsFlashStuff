package com.rovio.assets
{
   public class §!Q§
   {
      
      private static var §&5§:Object;
       
      
      public function §!Q§()
      {
         super();
      }
      
      public static function dynamic(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§&5§ == null)
         {
            §&5§ = new Object();
         }
         if(!§,!%§(param1))
         {
            §&5§[param1] = new §?!'§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!%§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§&5§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §^!H§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§?!'§ = §&5§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§ W§;
      }
   }
}
