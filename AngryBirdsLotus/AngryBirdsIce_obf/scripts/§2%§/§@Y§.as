package §2%§
{
   import flash.utils.ByteArray;
   
   public class §@Y§
   {
      
      private static var §0E§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0E§ = §2!2§();
         }
      }
      
      public function §@Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      private static function §2!2§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:uint = 0;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(!_loc5_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     §§push(256);
                     if(_loc6_ || _loc2_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       break;
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(uint(§§pop()));
                                          loop14:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(8);
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || §@Y§)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc6_ || _loc1_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr133:
                                                            }
                                                            else
                                                            {
                                                               addr139:
                                                               §§push(_loc4_ & 1);
                                                               if(!_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(3988292384);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() >>> 1);
                                                                        }
                                                                        §§push(§§pop() ^ §§pop());
                                                                        addr165:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              if(!(_loc6_ || §@Y§))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr175:
                                                                              _loc4_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr117:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr175);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr180:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr181:
                                                                           while(true)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr144:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr128:
                                                                     §§push(uint(_loc4_ >>> 1));
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr133);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = uint(§§pop());
                                                                           §§push(0);
                                                                        }
                                                                        addr186:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr180);
                                                                  }
                                                               }
                                                               §§goto(addr165);
                                                            }
                                                            §§goto(addr115);
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                                 addr73:
                                 _loc2_ = §§pop();
                                 continue loop0;
                                 addr64:
                              }
                              §§goto(addr181);
                           }
                        }
                        else
                        {
                           §§push(_loc2_);
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr117);
               }
               §§goto(addr64);
            }
            §§goto(addr73);
         }
         return _loc1_;
      }
      
      public static function §>!C§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         if(param2 >= param1.length)
         {
            while(true)
            {
               param2 = param1.length;
               addr103:
               while(true)
               {
               }
               addr57:
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§push(param1.length - param2);
               if(_loc7_ || param3)
               {
                  param3 = uint(§§pop());
                  loop3:
                  while(!(_loc6_ && param2))
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param3 + param2);
                        if(_loc7_)
                        {
                           if(§§pop() > param1.length)
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(param1.length - param2);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr106);
                                 }
                                 continue loop3;
                              }
                              addr49:
                              if(false)
                              {
                                 while(true)
                                 {
                                    if(param3 != 0)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr57);
                                 }
                                 addr106:
                                 var _loc5_:* = uint(§§pop());
                                 addr105:
                                 if(!_loc6_)
                                 {
                                    §§push(param2);
                                    if(!_loc6_)
                                    {
                                       §§push(uint(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() >= param3)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             addr124:
                                             §§push(_loc5_);
                                             if(_loc7_ || param1)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() ^ 4294967295);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   addr193:
                                                   §§push(uint(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr195:
                                                      addr156:
                                                      addr157:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         continue loop8;
                                                      }
                                                      _loc4_ = §§pop();
                                                      while(_loc6_ && param2)
                                                      {
                                                         §§goto(addr195);
                                                         §§goto(addr156);
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr194:
                                                }
                                                while(true)
                                                {
                                                   §§push(uint(§§pop() + 1));
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr156);
                                                }
                                                else
                                                {
                                                   §§goto(addr194);
                                                }
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       else
                                       {
                                          §§push(uint(§0E§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr124);
                                 }
                                 return §§pop();
                                 addr51:
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr106);
                           §§push(4294967295);
                        }
                        break;
                     }
                     §§push(uint(§§pop()));
                     if(!(_loc6_ && param1))
                     {
                        param3 = §§pop();
                        §§goto(addr49);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr103);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr51);
      }
      
      public static function §,x§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            if(param2 >= param1.length)
            {
               loop0:
               while(true)
               {
                  §§push(uint(param1.length));
                  addr83:
                  while(true)
                  {
                     param2 = §§pop();
                     addr84:
                     while(true)
                     {
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(_loc8_ || param3)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc8_)
                           {
                              §§push(§§pop() + param2);
                              if(_loc8_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(§§pop() > param1.length)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr39:
                                          §§push(uint(param1.length - param2));
                                          if(_loc8_)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                param3 = §§pop();
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(true)
                                                         {
                                                            addr85:
                                                            §§push(param2);
                                                            break loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            addr58:
                                                            while(!_loc7_)
                                                            {
                                                               if(§§pop() != 0)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1.length - param2);
                                                                  addr66:
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     addr67:
                                                                     while(true)
                                                                     {
                                                                        param3 = §§pop();
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr83);
                                                         }
                                                      }
                                                      addr54:
                                                   }
                                                   break loop8;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr58);
                                          }
                                          break;
                                       }
                                       §§goto(addr62);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr39);
                           }
                           §§goto(addr67);
                        }
                        var _loc4_:uint = §§pop();
                        var _loc5_:uint = 1;
                        var _loc6_:uint = 0;
                        loop11:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc7_ && param3))
                           {
                              §§push(param2);
                              if(_loc8_ || param3)
                              {
                                 if(_loc8_)
                                 {
                                    if(§§pop() >= §§pop() + param3)
                                    {
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       if(_loc8_)
                                       {
                                          addr132:
                                          §§push(_loc6_);
                                          if(!(_loc7_ && param2))
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                break;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc8_ || param3)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr203:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() % 65521);
                                                         addr205:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr207:
                                                            while(true)
                                                            {
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                      addr203:
                                                   }
                                                   addr183:
                                                   _loc4_ = §§pop();
                                                   continue loop11;
                                                }
                                                §§goto(addr205);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr207);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          §§push((§§pop() + param1[_loc4_]) % 65521);
                                          if(_loc8_)
                                          {
                                             addr199:
                                             §§goto(addr203);
                                             §§push((_loc5_ = §§pop()) + _loc6_);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr199);
                                    }
                                 }
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr132);
                        }
                        §§push(§§pop() << 16);
                        if(!(_loc7_ && param1))
                        {
                           return §§pop() | _loc5_;
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr56);
         }
         §§goto(addr54);
      }
   }
}
