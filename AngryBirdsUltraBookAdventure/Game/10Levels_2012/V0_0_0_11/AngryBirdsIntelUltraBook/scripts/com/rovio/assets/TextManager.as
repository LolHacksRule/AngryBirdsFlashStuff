package com.rovio.assets
{
   public class TextManager
   {
      
      public static const DEBUG_MODE:Boolean = false;
      
      private static var §6!c§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            DEBUG_MODE = false;
         }
      }
      
      public function TextManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc6_)
         {
            §6!c§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() >= param1.length())
               {
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §6!c§[_loc3_] = _loc4_;
                        addr100:
                        loop2:
                        while(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc2_);
                           if(_loc6_ || _loc3_)
                           {
                              addr75:
                              §§push(§§pop() + 1);
                              if(!_loc6_)
                              {
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop2;
                              }
                              addr75:
                           }
                           §§goto(addr75);
                           §§push(Number(§§pop()));
                        }
                        loop3:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc6_)
                           {
                              break;
                           }
                           addr126:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop3;
                           }
                        }
                        _loc4_ = §§pop();
                     }
                  }
                  while(_loc5_ && _loc3_)
                  {
                     §§goto(addr100);
                  }
                  continue;
               }
               §§push(param1[_loc2_].@id);
               §§goto(addr126);
            }
            §§goto(addr75);
         }
      }
      
      public static function §8"§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(DEBUG_MODE);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_ || TextManager)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        while(true)
                        {
                           §§push(§6!c§);
                           addr54:
                           while(true)
                           {
                              §§push(param1);
                              §§push(§6!c§);
                              addr24:
                              continue loop2;
                              if(_loc2_ || param1)
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    return §§pop()[§§pop()];
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           §§goto(addr24);
                        }
                     }
                     §§goto(addr24);
                  }
               }
            }
         }
         §§push("Missing text: ");
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() + param1;
         }
      }
   }
}
