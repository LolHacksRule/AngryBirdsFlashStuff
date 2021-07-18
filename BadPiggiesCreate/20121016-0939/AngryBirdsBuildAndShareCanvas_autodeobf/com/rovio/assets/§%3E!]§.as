package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §>!]§
   {
       
      
      public function §>!]§()
      {
         super();
      }
      
      public static function §1"5§(param1:String, param2:Class) : void
      {
      }
      
      public static function §6!J§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §1!8§(param1:String, param2:Boolean = true) : Class
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
