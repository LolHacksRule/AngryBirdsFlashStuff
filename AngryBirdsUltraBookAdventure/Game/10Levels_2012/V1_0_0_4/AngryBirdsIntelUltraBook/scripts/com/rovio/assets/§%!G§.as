package com.rovio.assets
{
   public class §%!G§
   {
      
      private static var §=%§:Object;
       
      
      public function §%!G§()
      {
         super();
      }
      
      public static function §7q§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§=%§ == null)
         {
            §=%§ = new Object();
         }
         if(!§+!W§(param1))
         {
            §=%§[param1] = new §?!g§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §+!W§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§=%§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §^!B§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§?!g§ = §=%§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§&!e§;
      }
   }
}
