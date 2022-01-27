package com.rovio.assets
{
   public class §<x§
   {
      
      private static var §!I§:Object;
       
      
      public function §<x§()
      {
         super();
      }
      
      public static function § !N§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§!I§ == null)
         {
            §!I§ = new Object();
         }
         if(!§,!@§(param1))
         {
            §!I§[param1] = new §5!G§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!@§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§!I§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §,! §(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§5!G§ = §!I§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§+,§;
      }
   }
}
