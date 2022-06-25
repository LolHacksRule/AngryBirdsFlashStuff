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
         if(!_loc1_)
         {
            §=w§ = false;
         }
      }
      
      public function §4y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         if(_loc9_ || param1)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc9_ || param1)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc9_)
         {
            _loc3_.writeInt(param1.width);
            while(true)
            {
               _loc3_.writeInt(param1.height);
            }
            addr99:
         }
         loop1:
         while(true)
         {
            _loc3_.writeUnsignedInt(134610944);
            while(_loc9_)
            {
               while(true)
               {
                  _loc3_.writeByte(0);
                  continue loop1;
                  addr66:
                  if(!_loc8_)
                  {
                     if(true)
                     {
                        var _loc4_:ByteArray = new ByteArray();
                        var _loc5_:int = 0;
                        loop5:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 if(§§pop() >= param1.height)
                                 {
                                    if(!_loc8_)
                                    {
                                       _loc4_.compress();
                                    }
                                    loop6:
                                    while(_loc9_ || _loc3_)
                                    {
                                       if(_loc9_)
                                       {
                                          §,!V§(_loc2_,1229209940,_loc4_);
                                          loop7:
                                          for(; !_loc8_; §,!V§(_loc2_,1229278788,null),if(!(_loc9_ || _loc3_))
                                          {
                                             continue;
                                          },if(_loc8_)
                                          {
                                             continue loop6;
                                          },if(!(_loc8_ && §4y§))
                                          {
                                             break loop5;
                                          },§§goto(addr207))
                                          {
                                             if(!(_loc8_ && §4y§))
                                             {
                                                if(_loc9_ || _loc2_)
                                                {
                                                   continue;
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr324:
                                                      while(true)
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc9_)
                                                            {
                                                               if(!(_loc9_ || _loc3_))
                                                               {
                                                                  continue loop20;
                                                               }
                                                               if(§§pop() >= param1.width)
                                                               {
                                                                  break;
                                                               }
                                                               addr300:
                                                               §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr310:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || §4y§)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     addr330:
                                                                     while(true)
                                                                     {
                                                                        if(!param1.transparent)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr266:
                                                                        addr266:
                                                                        §§push(0);
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr267:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    addr193:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= param1.width)
                                                                                       {
                                                                                          break loop7;
                                                                                       }
                                                                                       §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                                       if(_loc8_ && §4y§)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       addr247:
                                                                                       _loc6_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                                          break loop6;
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 addr274:
                                                                                 addr191:
                                                                              }
                                                                              addr277:
                                                                              while(true)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                               while(true)
                                                               {
                                                                  _loc7_++;
                                                                  §§goto(addr277);
                                                                  §§goto(addr317);
                                                               }
                                                               addr317:
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                addr205:
                                                loop9:
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   addr207:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr267);
                                             }
                                             addr212:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr300);
                                                continue loop21;
                                             }
                                          }
                                       }
                                       §§goto(addr310);
                                    }
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          _loc7_++;
                                          §§goto(addr212);
                                       }
                                       §§goto(addr324);
                                    }
                                 }
                                 else
                                 {
                                    _loc4_.writeByte(0);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr193);
                        }
                     }
                     continue;
                     return _loc2_;
                  }
                  break;
               }
            }
            §§goto(addr99);
         }
      }
      
      private static function §,!V§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            if(!§=w§)
            {
               loop0:
               while(true)
               {
                  §=w§ = true;
                  loop1:
                  while(true)
                  {
                     §2!T§ = [];
                     addr235:
                     while(true)
                     {
                        _loc9_ = uint(0);
                        if(_loc12_)
                        {
                           if(_loc12_ || param2)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr230:
                     loop11:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc12_)
                        {
                           loop12:
                           while(true)
                           {
                              §§push(256);
                              loop13:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc9_);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       loop15:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(0);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                loop17:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   loop18:
                                                   while(true)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         while(true)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               §§push(8);
                                                               if(_loc11_ && param2)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(!_loc11_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           §2!T§[_loc9_] = _loc8_;
                                                                           if(_loc12_ || param2)
                                                                           {
                                                                              addr105:
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc11_ && param3)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(!(_loc12_ || §4y§))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc11_ && §4y§)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc12_ || param3)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(!(_loc11_ && param2))
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr136:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc11_ && §4y§))
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc11_ && §4y§)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr185:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr184:
                                                                                             }
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                addr119:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   continue loop23;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             addr126:
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr158:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§push(1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() & §§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   break loop11;
                                                                                                }
                                                                                                addr248:
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr172:
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 §§goto(addr146);
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr185);
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_);
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         addr247:
                                                         §§goto(addr248);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr247);
                                       }
                                    }
                                 }
                                 §§goto(addr247);
                              }
                           }
                        }
                        break;
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc11_ && §4y§))
                     {
                        if(param3 != null)
                        {
                           if(!_loc11_)
                           {
                              addr262:
                              §§push(uint(param3.length));
                              if(!(_loc11_ && param2))
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc11_ && param1))
                                 {
                                    addr280:
                                    param1.writeUnsignedInt(_loc4_);
                                    addr283:
                                    §§push(uint(param1.position));
                                 }
                                 §§goto(addr283);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc12_)
                              {
                                 param1.writeUnsignedInt(param2);
                                 if(_loc12_)
                                 {
                                    if(param3 != null)
                                    {
                                       if(_loc12_ || param3)
                                       {
                                          addr304:
                                          param1.writeBytes(param3);
                                       }
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
                                 if(!_loc11_)
                                 {
                                    while(true)
                                    {
                                       if(_loc7_ >= _loc6_ - _loc5_)
                                       {
                                          loop3:
                                          while(_loc12_ || param2)
                                          {
                                             if(!(_loc11_ && param2))
                                             {
                                                while(true)
                                                {
                                                   §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                   if(_loc12_ || param2)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop5:
                                                      do
                                                      {
                                                         param1.position = _loc6_;
                                                         while(!(_loc11_ && param1))
                                                         {
                                                            param1.writeUnsignedInt(_loc8_);
                                                            if(_loc12_)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      while(_loc11_ && param1);
                                                      
                                                      return;
                                                   }
                                                   addr427:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                   }
                                                }
                                                addr376:
                                             }
                                             while(true)
                                             {
                                                _loc7_++;
                                                break loop3;
                                             }
                                          }
                                          continue;
                                       }
                                       §§push(uint(uint(§2!T§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                       §§goto(addr427);
                                    }
                                 }
                                 §§goto(addr376);
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr262);
                  }
               }
            }
            §§goto(addr247);
         }
         §§goto(addr235);
      }
   }
}
