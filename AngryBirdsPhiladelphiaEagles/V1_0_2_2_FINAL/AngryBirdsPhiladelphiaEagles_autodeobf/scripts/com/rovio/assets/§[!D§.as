package com.rovio.assets
{
   public class §[!D§
   {
      
      private static var §3!E§:Object;
       
      
      public function §[!D§()
      {
         super();
      }
      
      public static function §2b§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§3!E§ == null)
         {
            §3!E§ = new Object();
         }
         if(!§@1§(param1))
         {
            §3!E§[param1] = new §'1§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §@1§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§3!E§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §8!N§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§'1§ = §3!E§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§`!H§;
      }
   }
}
