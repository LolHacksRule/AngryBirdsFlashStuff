package com.rovio.assets
{
   public class §''§
   {
      
      private static var §=L§:Object;
       
      
      public function §''§()
      {
         super();
      }
      
      public static function §<Z§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§=L§ == null)
         {
            §=L§ = new Object();
         }
         if(!§^!D§(param1))
         {
            §=L§[param1] = new §<M§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §^!D§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§=L§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §-C§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§<M§ = §=L§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§ N§;
      }
   }
}
