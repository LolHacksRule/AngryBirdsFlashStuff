package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §,!j§
   {
       
      
      public function §,!j§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §5x§(param1:String, param2:Class) : void
      {
      }
      
      public static function §@!o§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §!!N§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_)
         {
            if(ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               return Class(ApplicationDomain.currentDomain.getDefinition(param1));
            }
            loop0:
            while(true)
            {
               §§push("Class \'");
               if(!_loc5_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "\' not found.");
                  }
               }
               _loc3_ = §§pop();
               while(param2)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        throw new Error(_loc3_);
                     }
                     continue;
                  }
                  if(!_loc5_)
                  {
                     addr76:
                     break;
                  }
                  continue loop0;
               }
               return null;
            }
         }
         §§goto(addr76);
      }
   }
}
