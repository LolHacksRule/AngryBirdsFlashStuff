package §=f§
{
   import flash.utils.ByteArray;
   
   public class §,C§
   {
      
      private static var §@!4§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!4§ = §1!D§();
         }
      }
      
      public function §,C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      private static function §1!D§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:uint = 0;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(!(_loc5_ && _loc1_))
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(256);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(uint(_loc2_));
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(0);
                           if(_loc6_ || §,C§)
                           {
                              _loc3_ = uint(§§pop());
                              if(!(_loc5_ && _loc3_))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr162:
                                    while(true)
                                    {
                                       §§push(8);
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                addr183:
                                                _loc1_.push(_loc4_);
                                                addr186:
                                                §§push(_loc2_);
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   continue loop0;
                                                }
                                                addr194:
                                                §§push(§§pop() + 1);
                                             }
                                             §§goto(addr186);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(1);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() & §§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(3988292384);
                                                      if(!(_loc5_ && §,C§))
                                                      {
                                                         addr116:
                                                         §§push(_loc4_);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() >>> 1);
                                                         }
                                                         §§push(§§pop() ^ §§pop());
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr147:
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc5_ && _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(uint(§§pop()));
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        return _loc1_;
                                                                     }
                                                                     addr209:
                                                                     addr209:
                                                                     continue loop3;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr195:
                                                               §§push(uint(§§pop()));
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr116:
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(1);
                                                      if(_loc5_ && §,C§)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() >>> §§pop());
                                                      if(_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(uint(§§pop()));
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr116);
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr209);
               }
            }
         }
      }
      
      public static function §=8§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         if(param2 >= param1.length)
         {
            if(!_loc6_)
            {
               §§push(uint(param1.length));
               if(!(_loc6_ && param1))
               {
                  param2 = §§pop();
                  if(_loc7_)
                  {
                     addr39:
                     §§push(param3);
                     if(!(_loc6_ && param3))
                     {
                        if(§§pop() == 0)
                        {
                           if(_loc7_ || param3)
                           {
                              §§push(param1.length - param2);
                              if(_loc7_)
                              {
                                 addr63:
                                 param3 = §§pop();
                                 addr64:
                                 §§push(param3);
                                 if(!(_loc6_ && param3))
                                 {
                                    addr72:
                                    §§push(§§pop() + param2);
                                    if(_loc7_)
                                    {
                                       if(§§pop() > param1.length)
                                       {
                                          addr79:
                                          §§push(param1.length - param2);
                                          if(_loc7_ || §,C§)
                                          {
                                             addr101:
                                             param3 = §§pop();
                                          }
                                          addr103:
                                          var _loc5_:* = uint(§§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                §§push(uint(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && param3))
                                             {
                                                while(§§pop() < param3)
                                                {
                                                   §§push(uint(§@!4§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§push(uint(§§pop()));
                                                   if(_loc7_ || §,C§)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(uint(§§pop() + 1));
                                                         if(_loc6_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                addr187:
                                                §§push(_loc5_);
                                                break;
                                             }
                                             break;
                                          }
                                          §§goto(addr190);
                                          §§push(§§pop() ^ 4294967295);
                                       }
                                       §§push(4294967295);
                                    }
                                    §§goto(addr103);
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr72);
            }
            §§goto(addr79);
         }
         §§goto(addr39);
      }
      
      public static function §`!?§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param2);
         if(_loc7_)
         {
            if(§§pop() >= param1.length)
            {
               if(_loc7_ || param1)
               {
                  addr32:
                  param2 = param1.length;
                  if(!(_loc8_ && param1))
                  {
                     addr40:
                     if(param3 == 0)
                     {
                        if(!_loc8_)
                        {
                           §§push(param1.length - param2);
                           if(_loc7_ || §,C§)
                           {
                              param3 = §§pop();
                              addr58:
                              §§push(param3 + param2);
                              if(_loc7_ || §,C§)
                              {
                                 addr68:
                                 if(§§pop() > param1.length)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       param3 = param1.length - param2;
                                       addr82:
                                    }
                                 }
                                 §§push(param2);
                                 if(_loc7_ || param3)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 var _loc4_:* = §§pop();
                                 var _loc5_:* = uint(1);
                                 var _loc6_:uint = 0;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(param2);
                                    while(§§pop() < §§pop() + param3)
                                    {
                                       §§push((_loc5_ + param1[_loc4_]) % 65521);
                                       if(_loc7_ || §,C§)
                                       {
                                          §§push(uint(§§pop()));
                                          §§push(uint(§§pop()));
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                          _loc5_ = §§pop();
                                          if(!(_loc8_ && §,C§))
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc7_ || §,C§))
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc8_)
                                             {
                                                addr174:
                                                §§push(§§pop() % 65521);
                                                if(_loc7_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!(_loc8_ && §,C§))
                                                   {
                                                      §§push(_loc4_);
                                                   }
                                                   break;
                                                }
                                                _loc4_ = uint(§§pop());
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr174);
                                          }
                                          §§push(§§pop() + 1);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§push(_loc6_ << 16);
                                    if(!(_loc8_ && §,C§))
                                    {
                                       §§push(§§pop() | _loc5_);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr68);
                        }
                     }
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr40);
         }
         §§goto(addr32);
      }
   }
}
