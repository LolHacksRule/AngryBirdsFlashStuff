package com.rovio.assets
{
   public class §>D§
   {
      
      private static var §?<§:Object;
       
      
      public function §>D§()
      {
         super();
      }
      
      public static function §try§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§?<§ == null)
         {
            §?<§ = new Object();
         }
         if(!§2q§(param1))
         {
            §?<§[param1] = new §=^§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §2q§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§?<§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §`C§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§=^§ = §?<§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§=h§;
      }
   }
}
