package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §?q§
   {
       
      
      public function §?q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §1,§(param1:String, param2:Class) : void
      {
      }
      
      public static function §?!`§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function § q§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            if(ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               return Class(ApplicationDomain.currentDomain.getDefinition(param1));
            }
            §§push("Class \'");
            if(_loc5_)
            {
               §§push(§§pop() + param1);
               if(_loc5_ || §?q§)
               {
                  addr105:
                  §§push(§§pop() + "\' not found.");
               }
               _loc3_ = §§pop();
               if(!param2)
               {
                  return null;
               }
               §§goto(addr66);
            }
            §§goto(addr105);
         }
         addr66:
         throw new Error(_loc3_);
      }
   }
}
