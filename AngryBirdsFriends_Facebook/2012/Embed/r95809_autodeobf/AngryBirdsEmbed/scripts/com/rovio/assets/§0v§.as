package com.rovio.assets
{
   public class §0v§
   {
      
      private static var §'a§:Object;
       
      
      public function §0v§()
      {
         super();
      }
      
      public static function §1F§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§'a§ == null)
         {
            §'a§ = new Object();
         }
         if(!§?!-§(param1))
         {
            §'a§[param1] = new §9F§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §?!-§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§'a§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §#w§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§9F§ = §'a§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§2!5§;
      }
   }
}
