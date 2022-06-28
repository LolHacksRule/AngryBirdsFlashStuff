package com.rovio.assets
{
   public class §'!H§
   {
      
      private static var §[!A§:Object;
       
      
      public function §'!H§()
      {
         super();
      }
      
      public static function §4w§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§[!A§ == null)
         {
            §[!A§ = new Object();
         }
         if(!§>o§(param1))
         {
            §[!A§[param1] = new §1A§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §>o§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§[!A§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §&!G§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§1A§ = §[!A§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§^!1§;
      }
   }
}
