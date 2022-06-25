package §7!J§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §^[§
   {
      
      private static var §&!R§:Array;
      
      private static var §,!Z§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §^[§)
         {
            §,!Z§ = false;
         }
      }
      
      public function §^[§()
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
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc9_ && _loc2_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc8_ || §^[§)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc8_ || param1)
         {
            _loc3_.writeInt(param1.width);
         }
         loop0:
         while(true)
         {
            _loc3_.writeInt(param1.height);
            while(true)
            {
               _loc3_.writeUnsignedInt(134610944);
               loop2:
               while(!_loc9_)
               {
                  if(!_loc8_)
                  {
                     continue loop0;
                  }
                  loop3:
                  do
                  {
                     _loc3_.writeByte(0);
                     while(_loc8_)
                     {
                        §8!C§(_loc2_,1229472850,_loc3_);
                        if(_loc8_ || _loc3_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(false);
                  
                  var _loc4_:ByteArray = new ByteArray();
                  var _loc5_:int = 0;
                  addr150:
                  §§push(_loc5_);
                  if(!(_loc9_ && param1))
                  {
                     if(!_loc9_)
                     {
                        if(§§pop() >= param1.height)
                        {
                           if(_loc8_ || §^[§)
                           {
                              if(!(_loc9_ && §^[§))
                              {
                                 if(_loc8_ || param1)
                                 {
                                    _loc4_.compress();
                                    §8!C§(_loc2_,1229209940,_loc4_);
                                    addr197:
                                    if(_loc8_ || param1)
                                    {
                                       §8!C§(_loc2_,1229278788,null);
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc8_ || _loc3_)
                                             {
                                                if(_loc9_ && param1)
                                                {
                                                   addr212:
                                                   if(!_loc9_)
                                                   {
                                                      addr198:
                                                      §§push(_loc7_);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() >= param1.width)
                                                         {
                                                            addr206:
                                                            _loc5_++;
                                                            addr207:
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr150);
                                                            }
                                                            addr205:
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               _loc7_++;
                                                               addr284:
                                                               if(_loc8_ || param1)
                                                               {
                                                                  addr256:
                                                                  if(_loc7_ >= param1.width)
                                                                  {
                                                                     addr261:
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                     §§goto(addr256);
                                                                     addr338:
                                                                  }
                                                                  addr330:
                                                                  _loc6_ = uint(param1.getPixel(_loc7_,_loc5_));
                                                                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                  §§goto(addr205);
                                                                  addr331:
                                                               }
                                                               if(!param1.transparent)
                                                               {
                                                                  addr337:
                                                                  _loc7_ = 0;
                                                                  §§goto(addr338);
                                                               }
                                                               §§push(0);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr279:
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr198);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr337);
                                                               addr344:
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                         if(_loc8_ || §^[§)
                                                         {
                                                            _loc6_ = §§pop();
                                                            _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                            addr229:
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  _loc7_++;
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr279);
                                                            addr255:
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                return _loc2_;
                                             }
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr197);
                        }
                        _loc4_.writeByte(0);
                        §§goto(addr344);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr198);
               }
            }
         }
      }
      
      private static function §8!C§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_ || param2)
         {
            if(!§,!Z§)
            {
               loop0:
               while(true)
               {
                  §,!Z§ = true;
                  loop1:
                  while(true)
                  {
                     §&!R§ = [];
                     loop2:
                     while(_loc12_)
                     {
                        while(true)
                        {
                           _loc9_ = uint(0);
                           if(!(_loc11_ && param2))
                           {
                              if(!(_loc11_ && param1))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        loop9:
                        while(true)
                        {
                           §§push(_loc9_);
                           if(_loc12_)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(256);
                                 loop11:
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
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§push(8);
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc12_ || §^[§)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              §&!R§[_loc9_] = _loc8_;
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc11_ && param2)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       if(!(_loc12_ || param2))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc11_ && param2)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          _loc9_ = §§pop();
                                                                                          if(!(_loc12_ || param2))
                                                                                          {
                                                                                             break loop17;
                                                                                          }
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break loop16;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             addr158:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                                                addr170:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr114:
                                                                                                      addr140:
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         addr116:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               break loop20;
                                                                                                            }
                                                                                                            §§push(§§pop() + 1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(uint(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         addr141:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_ && §^[§)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§goto(addr114);
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr128:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc11_ && param2))
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             §§goto(addr128);
                                                                                          }
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr119);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr153:
                                                                                    §§push(§§pop() & 1);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr140);
                                                                                       §§push(uint(uint(_loc8_ >>> 1)));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr158);
                                                                              }
                                                                              addr248:
                                                                              §§push(uint(§§pop()));
                                                                              break loop9;
                                                                           }
                                                                           §§goto(addr141);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(_loc8_);
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                               §§goto(addr116);
                                                            }
                                                            addr247:
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr248);
                                             }
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
                        if(!(_loc11_ && §^[§))
                        {
                           if(param3 != null)
                           {
                              if(!_loc11_)
                              {
                                 §§push(uint(param3.length));
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc12_)
                                    {
                                       addr270:
                                       param1.writeUnsignedInt(_loc4_);
                                       addr273:
                                       §§push(uint(param1.position));
                                    }
                                    §§goto(addr273);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    param1.writeUnsignedInt(param2);
                                    if(_loc12_)
                                    {
                                       if(param3 != null)
                                       {
                                          if(!_loc11_)
                                          {
                                             param1.writeBytes(param3);
                                          }
                                       }
                                    }
                                 }
                                 var _loc6_:uint = param1.position;
                                 if(_loc12_)
                                 {
                                    param1.position = _loc5_;
                                    if(!(_loc11_ && param1))
                                    {
                                       addr308:
                                       _loc8_ = uint(4294967295);
                                    }
                                    var _loc7_:int = 0;
                                    if(_loc12_ || §^[§)
                                    {
                                       while(true)
                                       {
                                          if(_loc7_ >= _loc6_ - _loc5_)
                                          {
                                             loop4:
                                             while(!_loc11_)
                                             {
                                                §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                if(_loc12_ || §^[§)
                                                {
                                                   _loc8_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      param1.position = _loc6_;
                                                      loop6:
                                                      for(; !_loc11_; while(true)
                                                      {
                                                         param1.writeUnsignedInt(_loc8_);
                                                         if(!_loc11_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      },return)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      continue loop4;
                                                      if(!(_loc12_ || §^[§))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr338);
                                                   }
                                                }
                                                else
                                                {
                                                   addr407:
                                                   _loc8_ = §§pop();
                                                }
                                                _loc7_++;
                                                break;
                                             }
                                             continue;
                                          }
                                          §§push(uint(uint(§&!R§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                          §§goto(addr407);
                                       }
                                    }
                                    §§goto(addr347);
                                 }
                                 §§goto(addr308);
                              }
                           }
                        }
                        §§goto(addr270);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr247);
         }
         §§goto(addr235);
      }
   }
}
