package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §<U§
   {
       
      
      public function §<U§()
      {
         super();
      }
      
      public static function §<h§(param1:String, param2:Class) : void
      {
      }
      
      public static function §,!J§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §5"0§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
      {
         var _loc4_:* = null;
         if(!ApplicationDomain.currentDomain.hasDefinition(param1))
         {
            _loc4_ = "Class \'" + param1 + "\' not found.";
            if(param2)
            {
               throw new Error(_loc4_);
            }
            if(!param3)
            {
            }
            return null;
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
   }
}
