package com.rovio.assets
{
   public class §4D§
   {
      
      private static var §=S§:Object;
       
      
      public function §4D§()
      {
         super();
      }
      
      public static function §-n§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§=S§ == null)
         {
            §=S§ = new Object();
         }
         if(!§9!K§(param1))
         {
            §=S§[param1] = new §5]§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §9!K§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§=S§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §,!O§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§5]§ = §=S§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§!!<§;
      }
   }
}
