package com.rovio.assets
{
   public class §@h§
   {
      
      private static var §;!B§:Object;
       
      
      public function §@h§()
      {
         super();
      }
      
      public static function §-!#§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§;!B§ == null)
         {
            §;!B§ = new Object();
         }
         if(!§;+§(param1))
         {
            §;!B§[param1] = new §4a§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §;+§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§;!B§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §[@§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§4a§ = §;!B§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§][§;
      }
   }
}
