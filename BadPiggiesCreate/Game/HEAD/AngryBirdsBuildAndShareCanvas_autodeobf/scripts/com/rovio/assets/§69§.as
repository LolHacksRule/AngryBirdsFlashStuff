package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §69§
   {
       
      
      public function §69§()
      {
         super();
      }
      
      public static function §[>§(param1:String, param2:Class) : void
      {
      }
      
      public static function §?"5§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function § 0§(param1:String, param2:Boolean = true) : Class
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
