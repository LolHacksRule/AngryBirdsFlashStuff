package com.rovio.assets
{
   public class §,u§
   {
      
      private static var §%!D§:Object;
       
      
      public function §,u§()
      {
         super();
      }
      
      public static function §^2§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§%!D§ == null)
         {
            §%!D§ = new Object();
         }
         if(!§?0§(param1))
         {
            §%!D§[param1] = new §>h§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §?0§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§%!D§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §'[§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§>h§ = §%!D§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§^§;
      }
   }
}
