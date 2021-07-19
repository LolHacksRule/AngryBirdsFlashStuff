package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class §5_§
   {
       
      
      public function §5_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §#l§(param1:String, param2:Class) : void
      {
      }
      
      public static function §^!!§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §`"G§(param1:String, param2:Boolean = true, param3:Boolean = true) : Class
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_ || §5_§)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               loop0:
               while(true)
               {
                  §§push("Class \'" + param1);
                  if(!(_loc5_ && §5_§))
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
                        loop3:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc5_ && param2)
                           {
                              continue loop2;
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           if(!(_loc5_ && §5_§))
                           {
                              §§goto(addr28);
                           }
                           else
                           {
                              addr93:
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        return null;
                     }
                  }
                  while(!(_loc6_ || param2));
                  
                  throw new Error(_loc4_);
               }
            }
            addr28:
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr93);
      }
   }
}
