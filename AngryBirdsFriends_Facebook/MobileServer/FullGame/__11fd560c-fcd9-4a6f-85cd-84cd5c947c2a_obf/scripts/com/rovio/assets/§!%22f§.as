package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §!"f§
   {
       
      
      public function §!"f§()
      {
         super();
      }
      
      public static function §4"Z§(param1:String, param2:Class) : void
      {
      }
      
      public static function §?"G§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §##?§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
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
