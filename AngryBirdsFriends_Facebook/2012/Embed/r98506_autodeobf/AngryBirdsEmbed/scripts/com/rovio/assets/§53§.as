package com.rovio.assets
{
   public class §53§
   {
      
      private static var §8!3§:Object;
       
      
      public function §53§()
      {
         super();
      }
      
      public static function §8J§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§8!3§ == null)
         {
            §8!3§ = new Object();
         }
         if(!§9x§(param1))
         {
            §8!3§[param1] = new §`Q§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §9x§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§8!3§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §[N§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§`Q§ = §8!3§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§]!4§;
      }
   }
}
