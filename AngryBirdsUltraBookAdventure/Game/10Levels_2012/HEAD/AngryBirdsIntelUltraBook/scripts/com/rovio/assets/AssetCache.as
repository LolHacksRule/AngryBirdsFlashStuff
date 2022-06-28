package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §!!g§:Object;
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function §&!g§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§!!g§ == null)
         {
            §!!g§ = new Object();
         }
         if(!§0u§(param1))
         {
            §!!g§[param1] = new §7E§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §0u§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§!!g§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §,!k§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§7E§ = §!!g§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§=!"§;
      }
   }
}
