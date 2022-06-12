package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §8B§
   {
       
      
      public function §8B§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §<e§(param1:String, param2:Class) : void
      {
      }
      
      public static function §"5§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §6"C§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               loop0:
               do
               {
                  §§push("Class \'");
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + param1);
                     if(!(_loc4_ && §8B§))
                     {
                        §§push(§§pop() + "\' not found.");
                     }
                  }
                  _loc3_ = §§pop();
                  while(param2)
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  return null;
               }
               while(!_loc5_);
               
               throw new Error(_loc3_);
            }
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
   }
}
