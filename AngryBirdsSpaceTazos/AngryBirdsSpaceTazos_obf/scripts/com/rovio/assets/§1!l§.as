package com.rovio.assets
{
   public class §1!l§
   {
      
      public static const §#T§:Boolean = false;
      
      private static var §2J§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#T§ = false;
         }
      }
      
      public function §1!l§()
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
            §2J§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(§§pop() >= param1.length())
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        while(true)
                        {
                           §2J§[_loc3_] = _loc4_;
                           addr95:
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr74:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop2;
                                    }
                                 }
                                 addr73:
                              }
                              §§goto(addr74);
                           }
                           addr105:
                           _loc4_ = §§pop();
                        }
                     }
                     while(true)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(param1[_loc2_][0]);
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr124:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop4;
                              }
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr95);
                     }
                     continue;
                  }
                  §§push(param1[_loc2_].@id);
                  §§goto(addr124);
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
      }
      
      public static function §5!m§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§#T§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr93:
                        addr58:
                        loop2:
                        while(true)
                        {
                           §§push(§2J§);
                           addr52:
                           while(true)
                           {
                              §§push(param1);
                              addr53:
                              while(true)
                              {
                                 §§push(§§pop()[§§pop()] == null);
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop5;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr92:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           return "Missing text: " + param1;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           while(true)
                           {
                              addr24:
                              while(true)
                              {
                                 §§push(§2J§);
                                 if(_loc2_ || param1)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       return §§pop()[§§pop()];
                                    }
                                    §§goto(addr53);
                                 }
                                 §§goto(addr52);
                              }
                           }
                           addr85:
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr24);
                     §§goto(addr58);
                  }
                  continue;
               }
               §§goto(addr92);
            }
         }
         §§goto(addr85);
      }
   }
}
