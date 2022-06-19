package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §#!J§
   {
       
      
      public function §#!J§()
      {
         super();
      }
      
      public static function §6Z§(param1:String, param2:Class) : void
      {
      }
      
      public static function §#"&§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §1!Y§(param1:String, param2:Boolean = true) : Class
      {
         var _loc3_:* = null;
         if(!ApplicationDomain.currentDomain.hasDefinition(param1))
         {
            _loc3_ = "Class \'" + param1 + "\' not found.";
            if(param2)
            {
               throw new Error(_loc3_);
            }
            return null;
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
   }
}
