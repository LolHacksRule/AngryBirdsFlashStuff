package com.rovio.assets
{
   public class §`=§
   {
      
      public static const §=!+§:Boolean = false;
      
      private static var §[J§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §=!+§ = false;
         }
      }
      
      public function §`=§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(!_loc5_)
         {
            §[J§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() >= param1.length())
               {
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param1[_loc2_][0]);
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           addr115:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop2;
                           }
                        }
                        _loc4_ = §§pop();
                     }
                     §[J§[_loc3_] = _loc4_;
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                     }
                     addr70:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr70);
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1[_loc2_].@id);
               }
               §§goto(addr115);
            }
            §§goto(addr70);
         }
      }
      
      public static function §+!E§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§=!+§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              return "Missing text: " + param1;
                           }
                           while(true)
                           {
                              §§push(§[J§);
                           }
                           addr93:
                        }
                        else
                        {
                           while(true)
                           {
                              addr24:
                              while(true)
                              {
                                 §§push(§[J§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       break loop5;
                                    }
                                    addr92:
                                    addr53:
                                    while(true)
                                    {
                                       §§push(§§pop()[§§pop()] == null);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr93);
                                    }
                                 }
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr24);
                  }
                  return §§pop()[§§pop()];
                  addr65:
               }
               §§goto(addr92);
            }
         }
         §§goto(addr85);
      }
   }
}
