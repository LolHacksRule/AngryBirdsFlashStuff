package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §3!F§:Object;
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function §2_§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§3!F§ == null)
         {
            §3!F§ = new Object();
         }
         if(!§[!f§(param1))
         {
            §3!F§[param1] = new §@t§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §[!f§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§3!F§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §-9§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§@t§ = §3!F§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§%K§;
      }
   }
}
