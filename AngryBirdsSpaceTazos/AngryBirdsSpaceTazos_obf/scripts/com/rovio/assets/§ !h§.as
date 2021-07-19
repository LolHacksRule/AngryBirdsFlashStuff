package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class § !h§
   {
       
      
      public function § !h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §6S§(param1:String, param2:Class) : void
      {
      }
      
      public static function §>!_§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §["3§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               do
               {
                  §§push("Class \'" + param1);
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop() + "\' not found.");
                  }
                  _loc4_ = §§pop();
                  loop1:
                  do
                  {
                     §§push(param2);
                     loop2:
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc6_ && § !h§))
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc5_ || param3)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        return null;
                     }
                     throw new Error(_loc4_);
                  }
                  while(_loc6_);
                  
               }
               while(_loc6_ && param3);
               
            }
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr61);
      }
   }
}
