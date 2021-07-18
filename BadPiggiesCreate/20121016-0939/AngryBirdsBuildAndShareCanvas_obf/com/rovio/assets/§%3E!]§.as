package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §>!]§
   {
       
      
      public function §>!]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(_loc5_ || param2)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               if(!(_loc4_ && param1))
               {
                  addr88:
                  §§push("Class \'" + param1);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + "\' not found.");
                  }
                  _loc3_ = §§pop();
               }
               while(param2)
               {
                  if(_loc5_)
                  {
                     throw new Error(_loc3_);
                  }
               }
               return null;
            }
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr88);
      }
   }
}
