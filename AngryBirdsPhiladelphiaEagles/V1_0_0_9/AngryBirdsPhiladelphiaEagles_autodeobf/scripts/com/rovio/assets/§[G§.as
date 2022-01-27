package com.rovio.assets
{
   public class §[G§
   {
      
      private static var §7!K§:Object;
       
      
      public function §[G§()
      {
         super();
      }
      
      public static function §&%§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§7!K§ == null)
         {
            §7!K§ = new Object();
         }
         if(!§`L§(param1))
         {
            §7!K§[param1] = new §#B§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §`L§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§7!K§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §6u§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§#B§ = §7!K§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§'!A§;
      }
   }
}
