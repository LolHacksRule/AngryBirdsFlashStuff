package §9-§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §4y§
   {
      
      private static var §2!T§:Array;
      
      private static var §=w§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=w§ = false;
         }
      }
      
      public function §4y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc9_ && _loc3_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc9_)
            {
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_ || param1)
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  while(_loc8_ || §4y§)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     loop2:
                     for(; _loc8_; loop4:
                     while(!(_loc9_ && param1))
                     {
                        while(true)
                        {
                           §,!V§(_loc2_,1229472850,_loc3_);
                           if(_loc9_)
                           {
                              continue loop4;
                           }
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr62);
                        }
                        var _loc4_:ByteArray = new ByteArray();
                        var _loc5_:int = 0;
                        loop6:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc8_ || _loc2_)
                           {
                              if(§§pop() >= param1.height)
                              {
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    _loc4_.compress();
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §,!V§(_loc2_,1229209940,_loc4_);
                                       loop8:
                                       for(; _loc8_ || _loc3_; §,!V§(_loc2_,1229278788,null),if(_loc8_ || param1)
                                       {
                                          continue loop7;
                                       })
                                       {
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() < param1.width)
                                                   {
                                                      §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      addr214:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc5_++;
                                                         addr216:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               addr341:
                                                               while(true)
                                                               {
                                                                  break loop12;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(§§pop() >= param1.width)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                           if(!(_loc8_ || param1))
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                                 continue loop13;
                                                                              }
                                                                              addr336:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr233:
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr342:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         addr343:
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr285:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      _loc7_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      addr293:
                                                   }
                                                   §§goto(addr342);
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                §§goto(addr336);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr214);
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                    break;
                                    if(_loc9_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc8_ || §4y§)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                break loop6;
                                             }
                                             if(param1.transparent)
                                             {
                                                §§goto(addr285);
                                                §§push(0);
                                             }
                                             §§goto(addr341);
                                             addr349:
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr265);
                                    }
                                    §§goto(addr216);
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    §§goto(addr233);
                                 }
                              }
                              else
                              {
                                 _loc4_.writeByte(0);
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr207);
                        }
                        return _loc2_;
                     })
                     {
                        while(true)
                        {
                           _loc3_.writeByte(0);
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr73);
         }
         §§goto(addr37);
      }
      
      private static function §,!V§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc11_)
         {
            if(!§=w§)
            {
               if(!_loc12_)
               {
                  §=w§ = true;
               }
               while(true)
               {
                  §2!T§ = [];
                  loop1:
                  while(_loc11_ || param3)
                  {
                     while(true)
                     {
                        _loc9_ = uint(0);
                        if(_loc11_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     loop7:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc12_)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(256);
                              loop9:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc9_);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       if(_loc11_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc11_ || param1)
                                          {
                                             §§push(0);
                                             if(!_loc12_)
                                             {
                                                §§push(uint(§§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(8);
                                                                  if(_loc12_ && §4y§)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §2!T§[_loc9_] = _loc8_;
                                                                           if(_loc12_ && param1)
                                                                           {
                                                                           }
                                                                           addr266:
                                                                           §§push(uint(0));
                                                                           break;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc12_ && param2)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           if(!_loc11_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           _loc9_ = §§pop();
                                                                           if(!(_loc12_ && §4y§))
                                                                           {
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              while(!(_loc11_ || param3))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr117:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              continue;
                                                                              addr133:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr266);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           addr125:
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 §§goto(addr133);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr194:
                                                                              }
                                                                              §§goto(addr195);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr151:
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc12_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(1);
                                                                     if(!(_loc11_ || §4y§))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!(_loc12_ && param3))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc11_ || param3)
                                                                           {
                                                                              §§goto(addr194);
                                                                              §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr150:
                                                                           _loc8_ = uint(uint(_loc8_ >>> 1));
                                                                           §§goto(addr151);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr266);
                                                                     }
                                                                  }
                                                                  §§goto(addr266);
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         break;
                                                      }
                                                      addr268:
                                                      var _loc4_:* = §§pop();
                                                      if(!(_loc12_ && param3))
                                                      {
                                                         if(param3 != null)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               addr281:
                                                               §§push(uint(param3.length));
                                                               if(_loc11_ || param1)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     addr294:
                                                                     param1.writeUnsignedInt(_loc4_);
                                                                  }
                                                                  §§push(uint(param1.position));
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  param1.writeUnsignedInt(param2);
                                                                  if(!(_loc12_ && §4y§))
                                                                  {
                                                                     addr318:
                                                                     if(param3 != null)
                                                                     {
                                                                        if(!(_loc12_ && param3))
                                                                        {
                                                                           param1.writeBytes(param3);
                                                                        }
                                                                     }
                                                                  }
                                                                  var _loc6_:uint = param1.position;
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     param1.position = _loc5_;
                                                                     if(_loc11_)
                                                                     {
                                                                        addr347:
                                                                        _loc8_ = uint(4294967295);
                                                                     }
                                                                     var _loc7_:int = 0;
                                                                     if(_loc11_)
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ >= _loc6_ - _loc5_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr446:
                                                                                    _loc8_ = §§pop();
                                                                                    _loc7_++;
                                                                                    continue;
                                                                                    addr447:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 param1.position = _loc6_;
                                                                                 while(!_loc12_)
                                                                                 {
                                                                                    param1.writeUnsignedInt(_loc8_);
                                                                                    if(!(_loc11_ || §4y§))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc11_ || param2))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    §§goto(addr447);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(uint(uint(§2!T§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                           }
                                                                           §§goto(addr446);
                                                                        }
                                                                        return;
                                                                        addr387:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                                 §§goto(addr266);
                              }
                           }
                        }
                        §§goto(addr268);
                     }
                  }
               }
            }
            §§goto(addr266);
         }
         §§goto(addr252);
      }
   }
}
