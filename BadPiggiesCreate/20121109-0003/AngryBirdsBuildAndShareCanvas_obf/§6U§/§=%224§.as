package §6U§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §="4§
   {
      
      private static var §3!u§:Array;
      
      private static var §`f§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`f§ = false;
         }
      }
      
      public function §="4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc8_ && _loc3_))
            {
               addr38:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!(_loc8_ && _loc2_))
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  while(!_loc8_)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     loop2:
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           _loc3_.writeByte(0);
                           continue loop2;
                        }
                     }
                     if(!(_loc8_ && _loc2_))
                     {
                        if(false)
                        {
                           §§goto(addr77);
                        }
                        §§goto(addr100);
                     }
                  }
               }
            }
            while(true)
            {
               §7m§(_loc2_,1229472850,_loc3_);
               if(!_loc9_)
               {
                  continue;
               }
               if(_loc9_ || §="4§)
               {
                  §§goto(addr68);
               }
               §§goto(addr86);
            }
            addr100:
            var _loc4_:ByteArray = new ByteArray();
            var _loc5_:int = 0;
            loop5:
            while(true)
            {
               §§push(_loc5_);
               if(_loc9_)
               {
                  if(_loc9_ || §="4§)
                  {
                     if(§§pop() >= param1.height)
                     {
                        loop6:
                        while(_loc9_)
                        {
                           _loc4_.compress();
                           loop7:
                           while(_loc9_ || _loc2_)
                           {
                              if(_loc9_)
                              {
                                 §7m§(_loc2_,1229209940,_loc4_);
                                 while(_loc9_ || _loc3_)
                                 {
                                    §7m§(_loc2_,1229278788,null);
                                    if(_loc8_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc8_)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc9_ || _loc2_)
                                    {
                                       break loop5;
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       if(!(_loc8_ && §="4§))
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc9_)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr191:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && §="4§))
                                                         {
                                                            if(§§pop() < param1.width)
                                                            {
                                                               §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  while(!_loc9_)
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        _loc7_++;
                                                                        addr287:
                                                                        while(true)
                                                                        {
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc9_ || §="4§)
                                                                              {
                                                                                 if(§§pop() >= param1.width)
                                                                                 {
                                                                                    addr201:
                                                                                    while(_loc8_ && param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!param1.transparent)
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§push(0);
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr334:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                                addr333:
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(0);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    addr201:
                                                                                    addr273:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       addr310:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    addr309:
                                                                                 }
                                                                              }
                                                                              addr283:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                  while(true)
                                                                  {
                                                                     _loc7_++;
                                                                     continue loop20;
                                                                     §§goto(addr260);
                                                                  }
                                                                  addr260:
                                                                  addr258:
                                                                  addr241:
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                   }
                                                   addr189:
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc9_ || §="4§)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr241);
                                 }
                                 addr203:
                              }
                              §§goto(addr287);
                           }
                           while(true)
                           {
                              _loc5_++;
                              §§goto(addr203);
                              §§goto(addr201);
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           §§goto(addr189);
                        }
                     }
                     else
                     {
                        _loc4_.writeByte(0);
                     }
                     §§goto(addr340);
                  }
                  §§goto(addr283);
               }
               §§goto(addr191);
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      private static function §7m§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(!(_loc11_ && param2))
         {
            if(!§`f§)
            {
               loop0:
               while(true)
               {
                  §`f§ = true;
                  addr266:
                  while(true)
                  {
                     §3!u§ = [];
                     while(_loc12_)
                     {
                        continue loop0;
                        _loc9_ = 0;
                        if(_loc11_ && param2)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc9_);
                           if(_loc12_ || §="4§)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(256);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc9_);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          loop13:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc12_)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         addr77:
                                                         addr279:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            addr79:
                                                            addr174:
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop15;
                                                            }
                                                            §§push(§§pop() & §§pop());
                                                            if(!(_loc12_ || §="4§))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop10;
                                                            }
                                                            loop27:
                                                            while(true)
                                                            {
                                                               if(!(_loc12_ || §="4§))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  addr203:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_ && param1)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           while(true)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                           }
                                                                           addr128:
                                                                        }
                                                                        addr129:
                                                                        while(true)
                                                                        {
                                                                           if(_loc11_ && param2)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop27;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         addr278:
                                                         var _loc4_:* = uint(§§pop());
                                                         if(!_loc11_)
                                                         {
                                                            if(param3 != null)
                                                            {
                                                               if(_loc12_ || §="4§)
                                                               {
                                                                  §§push(uint(param3.length));
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!(_loc11_ && §="4§))
                                                                     {
                                                                        addr305:
                                                                        param1.writeUnsignedInt(_loc4_);
                                                                        addr308:
                                                                        §§push(uint(param1.position));
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(_loc12_ || §="4§)
                                                                  {
                                                                     param1.writeUnsignedInt(param2);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr324:
                                                                        if(param3 != null)
                                                                        {
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              addr334:
                                                                              param1.writeBytes(param3);
                                                                           }
                                                                        }
                                                                        var _loc6_:uint = param1.position;
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           param1.position = _loc5_;
                                                                           if(!_loc11_)
                                                                           {
                                                                              _loc8_ = uint(4294967295);
                                                                           }
                                                                        }
                                                                        var _loc7_:int = 0;
                                                                        if(!(_loc11_ && param2))
                                                                        {
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ >= _loc6_ - _loc5_)
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                    if(!(_loc11_ && §="4§))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       loop3:
                                                                                       while(_loc12_ || param3)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             param1.position = _loc6_;
                                                                                             while(_loc12_)
                                                                                             {
                                                                                                param1.writeUnsignedInt(_loc8_);
                                                                                                if(_loc12_ || param3)
                                                                                                {
                                                                                                   if(!(_loc12_ || param2))
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   if(_loc11_ && §="4§)
                                                                                                   {
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   §§goto(addr395);
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       break;
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 _loc7_++;
                                                                                 continue;
                                                                                 addr468:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(uint(uint(§3!u§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              §§goto(addr468);
                                                                           }
                                                                        }
                                                                        §§goto(addr432);
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr278);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr277);
                                 }
                              }
                           }
                           §§goto(addr279);
                        }
                     }
                  }
               }
            }
            §§goto(addr277);
         }
         §§goto(addr266);
      }
   }
}
