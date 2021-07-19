package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §=!V§
   {
       
      
      public function §=!V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §'!=§(param1:String, param2:Class) : void
      {
      }
      
      public static function § 0§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §?!O§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!_loc5_)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               do
               {
                  §§push("Class \'" + param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "\' not found.");
                  }
                  _loc4_ = §§pop();
                  do
                  {
                     §§push(param2);
                     loop2:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(param3);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                    continue;
                                 }
                              }
                              break;
                           }
                           continue loop2;
                        }
                        return null;
                     }
                  }
                  while(_loc5_ && §=!V§);
                  
               }
               while(_loc5_);
               
               throw new Error(_loc4_);
            }
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr64);
      }
   }
}
