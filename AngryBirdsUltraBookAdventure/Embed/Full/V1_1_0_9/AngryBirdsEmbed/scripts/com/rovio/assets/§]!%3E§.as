package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §]!>§
   {
       
      
      public function §]!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §8+§(param1:String, param2:Class) : void
      {
      }
      
      public static function § in§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §8!@§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && _loc3_))
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               if(_loc4_ || param2)
               {
                  §§push("Class \'");
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() + param1);
                     if(!(_loc5_ && §]!>§))
                     {
                        §§push(§§pop() + "\' not found.");
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     addr85:
                     if(param2)
                     {
                        if(!_loc5_)
                        {
                           throw new Error(_loc3_);
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr97);
               }
               return null;
            }
            addr97:
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr85);
      }
   }
}
