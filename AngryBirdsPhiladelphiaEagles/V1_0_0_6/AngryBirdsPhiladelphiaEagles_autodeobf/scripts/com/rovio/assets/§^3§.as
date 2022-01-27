package com.rovio.assets
{
   public class §^3§
   {
      
      private static var §%9§:Object;
       
      
      public function §^3§()
      {
         super();
      }
      
      public static function §!!A§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§%9§ == null)
         {
            §%9§ = new Object();
         }
         if(!§77§(param1))
         {
            §%9§[param1] = new §6!G§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §77§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§%9§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §+_§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§6!G§ = §%9§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§;c§;
      }
   }
}
