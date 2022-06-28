package com.rovio.assets
{
   public class §9!N§
   {
      
      private static var §]o§:Object;
       
      
      public function §9!N§()
      {
         super();
      }
      
      public static function §^!K§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§]o§ == null)
         {
            §]o§ = new Object();
         }
         if(!§!K§(param1))
         {
            §]o§[param1] = new §]x§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §!K§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§]o§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §0!k§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§]x§ = §]o§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§`P§;
      }
   }
}
