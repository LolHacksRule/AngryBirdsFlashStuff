package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §<V§
   {
       
      
      public function §<V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §&"&§(param1:String, param2:Class) : void
      {
      }
      
      public static function §;"'§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §"!,§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param3))
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               loop0:
               while(true)
               {
                  §§push("Class \'" + param1);
                  if(_loc5_ || param3)
                  {
                     §§push(§§pop() + "\' not found.");
                  }
                  _loc4_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     loop2:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc6_ && param1))
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc5_ || §<V§)
                              {
                                 if(!(_loc5_ || §<V§))
                                 {
                                    break loop2;
                                 }
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr27);
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return null;
                     }
                     throw new Error(_loc4_);
                  }
               }
            }
            addr27:
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr73);
      }
   }
}
