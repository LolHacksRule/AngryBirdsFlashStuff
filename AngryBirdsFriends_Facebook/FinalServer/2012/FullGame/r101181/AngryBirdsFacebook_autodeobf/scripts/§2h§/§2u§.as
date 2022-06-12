package §2h§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §2u§
   {
      
      private static var §8"0§:Array;
      
      private static var §?"?§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?"?§ = false;
         }
      }
      
      public function §2u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!(_loc9_ && _loc2_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc9_)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!_loc9_)
         {
            _loc3_.writeInt(param1.width);
            while(true)
            {
               _loc3_.writeInt(param1.height);
               loop1:
               while(_loc8_ || param1)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  loop2:
                  while(true)
                  {
                     addr69:
                     addr99:
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        while(_loc8_)
                        {
                           §^T§(_loc2_,1229472850,_loc3_);
                           if(_loc8_ || §2u§)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     var _loc4_:ByteArray = new ByteArray();
                     var _loc5_:int = 0;
                     loop5:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc8_ || _loc3_)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              if(§§pop() >= param1.height)
                              {
                                 loop6:
                                 for(; !_loc9_; while(true)
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 },§§goto(addr283))
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          _loc4_.compress();
                                          loop7:
                                          while(_loc8_)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §^T§(_loc2_,1229209940,_loc4_);
                                                continue loop6;
                                             }
                                             addr319:
                                             loop17:
                                             while(true)
                                             {
                                                _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                loop18:
                                                while(true)
                                                {
                                                   _loc7_++;
                                                   loop19:
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            if(§§pop() >= param1.width)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addr208:
                                                                           while(true)
                                                                           {
                                                                              _loc5_++;
                                                                              break loop6;
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                        addr207:
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               addr273:
                                                            }
                                                            else
                                                            {
                                                               §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  continue loop17;
                                                               }
                                                               addr318:
                                                            }
                                                         }
                                                         addr280:
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               while(true)
                                                               {
                                                                  addr202:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= param1.width)
                                                                        {
                                                                           §§goto(addr207);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                                 addr241:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       _loc7_++;
                                                                                       break loop7;
                                                                                    }
                                                                                    addr339:
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.transparent)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       if(_loc8_ || §2u§)
                                                                                       {
                                                                                          §§push(0);
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                          }
                                                                                          addr332:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                              addr260:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr318);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr283:
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§goto(addr202);
                                             }
                                             §§goto(addr260);
                                          }
                                          addr192:
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr208);
                                 }
                                 while(true)
                                 {
                                    if(!(_loc9_ && §2u§))
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr241);
                                 }
                              }
                              else
                              {
                                 _loc4_.writeByte(0);
                              }
                              §§goto(addr339);
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr204);
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private static function §^T§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            if(!§?"?§)
            {
               if(!(_loc11_ && param3))
               {
                  §?"?§ = true;
               }
               loop0:
               while(true)
               {
                  §8"0§ = [];
                  do
                  {
                     if(_loc12_ || param1)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(_loc9_ = uint(0), !(_loc12_ || param1));
                  
                  addr236:
                  loop6:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(_loc12_)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(256);
                           loop8:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc9_);
                                 while(true)
                                 {
                                    §§push(uint(§§pop()));
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    _loc8_ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc11_ && param2))
                                       {
                                          §§push(uint(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                addr102:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr104:
                                                   addr267:
                                                   while(true)
                                                   {
                                                      §§push(8);
                                                      if(!_loc12_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc11_ && §2u§)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc12_ || param3)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr156:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               addr140:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  addr141:
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        addr143:
                                                                        while(true)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr162:
                                                            §§push(_loc8_ & 1);
                                                            if(_loc12_ || param3)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr155:
                                                                  _loc8_ = uint(uint(_loc8_ >>> 1));
                                                                  §§goto(addr156);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr269:
                                                               var _loc4_:* = uint(§§pop());
                                                               addr268:
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  if(param3 != null)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(uint(param3.length));
                                                                        if(_loc12_ || param3)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              addr300:
                                                                              param1.writeUnsignedInt(_loc4_);
                                                                           }
                                                                           §§push(uint(param1.position));
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        if(!_loc11_)
                                                                        {
                                                                           param1.writeUnsignedInt(param2);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(param3 != null)
                                                                              {
                                                                                 if(!(_loc11_ && §2u§))
                                                                                 {
                                                                                    addr324:
                                                                                    param1.writeBytes(param3);
                                                                                 }
                                                                              }
                                                                              var _loc6_:uint = param1.position;
                                                                              if(_loc12_)
                                                                              {
                                                                                 param1.position = _loc5_;
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    _loc8_ = uint(4294967295);
                                                                                 }
                                                                              }
                                                                              var _loc7_:int = 0;
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ >= _loc6_ - _loc5_)
                                                                                    {
                                                                                       if(!(_loc11_ && §2u§))
                                                                                       {
                                                                                          §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                          if(!(_loc11_ && §2u§))
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                param1.position = _loc6_;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                continue loop2;
                                                                                                if(!(_loc11_ && param2))
                                                                                                {
                                                                                                   if(!(_loc11_ && §2u§))
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                             addr422:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr447:
                                                                                             _loc8_ = §§pop();
                                                                                          }
                                                                                          _loc7_++;
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(uint(uint(§8"0§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                    }
                                                                                    §§goto(addr447);
                                                                                 }
                                                                                 return;
                                                                                 addr383:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr383);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       §§goto(addr268);
                                    }
                                    if(_loc11_ && param3)
                                    {
                                       continue;
                                    }
                                    _loc9_ = §§pop();
                                    if(!(_loc11_ && param3))
                                    {
                                       §§goto(addr91);
                                    }
                                    §§goto(addr267);
                                 }
                                 continue loop7;
                              }
                              §§goto(addr267);
                           }
                        }
                     }
                     §§goto(addr269);
                  }
               }
            }
            §§goto(addr267);
         }
         §§goto(addr236);
      }
   }
}
