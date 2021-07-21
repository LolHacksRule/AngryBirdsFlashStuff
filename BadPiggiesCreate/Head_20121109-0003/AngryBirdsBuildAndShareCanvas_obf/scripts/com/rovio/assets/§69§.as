package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §69§
   {
       
      
      public function §69§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!_loc5_)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               §§push("Class \'" + param1);
               if(!_loc5_)
               {
                  §§push(§§pop() + "\' not found.");
               }
               _loc3_ = §§pop();
               if(param2)
               {
                  throw new Error(_loc3_);
               }
               return null;
            }
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
   }
}
