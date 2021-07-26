package com.rovio.assets
{
   public class §3!?§
   {
      
      public static const §@!y§:Boolean = false;
      
      private static var §""7§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3!?§))
         {
            §@!y§ = false;
         }
      }
      
      public function §3!?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §""7§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(_loc5_ || _loc2_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() >= param1.length())
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §""7§[_loc3_] = _loc4_;
                              addr100:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr72:
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    addr73:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr74:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              addr110:
                              _loc4_ = §§pop();
                           }
                        }
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && §3!?§))
                              {
                                 break;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(param1[_loc2_][0]);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 addr119:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop4;
                                 }
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr100);
                        }
                        continue;
                     }
                     §§push(param1[_loc2_].@id);
                     §§goto(addr119);
                  }
                  §§goto(addr72);
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
      }
      
      public static function § do§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§@!y§);
            if(!_loc2_)
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
                        if(_loc3_ || §3!?§)
                        {
                           if(_loc3_ || param1)
                           {
                              §§push("Missing text: ");
                              if(!(_loc2_ && §3!?§))
                              {
                                 return §§pop() + param1;
                              }
                           }
                           while(true)
                           {
                              §§push(§""7§);
                           }
                           addr106:
                        }
                        else
                        {
                           while(true)
                           {
                              addr20:
                              while(true)
                              {
                                 §§push(§""7§);
                                 if(!_loc2_)
                                 {
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    addr105:
                                    addr34:
                                    while(true)
                                    {
                                       §§push(§§pop()[§§pop()] == null);
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr106);
                                    }
                                 }
                              }
                           }
                           addr98:
                        }
                        while(true)
                        {
                           §§goto(addr34);
                        }
                     }
                     §§goto(addr20);
                  }
                  return §§pop()[§§pop()];
                  addr61:
               }
               §§goto(addr105);
            }
         }
         §§goto(addr98);
      }
   }
}
