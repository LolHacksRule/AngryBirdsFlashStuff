package §>`§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §'!C§
   {
      
      private static var §!!9§:Array;
      
      private static var §20§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §20§ = false;
         }
      }
      
      public function §'!C§()
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
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc9_)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc9_)
         {
            _loc3_.writeInt(param1.width);
            if(_loc9_ || _loc3_)
            {
               _loc3_.writeInt(param1.height);
               if(!(_loc8_ && _loc3_))
               {
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc9_ || _loc3_)
                  {
                     addr74:
                     _loc3_.writeByte(0);
                     if(_loc9_ || §'!C§)
                     {
                        addr84:
                        §;a§(_loc2_,1229472850,_loc3_);
                     }
                  }
                  var _loc4_:ByteArray = new ByteArray();
                  var _loc5_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop1:
                     while(true)
                     {
                        if(§§pop() >= param1.height)
                        {
                           if(_loc9_ || _loc2_)
                           {
                              addr237:
                              _loc4_.compress();
                              §;a§(_loc2_,1229209940,_loc4_);
                           }
                           §;a§(_loc2_,1229278788,null);
                           return _loc2_;
                        }
                        _loc4_.writeByte(0);
                        if(!param1.transparent)
                        {
                           §§push(0);
                           if(!(_loc9_ || _loc2_))
                           {
                              continue;
                           }
                           _loc7_ = §§pop();
                           if(_loc9_ || param1)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(§§pop() >= param1.width)
                                    {
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       addr173:
                                    }
                                    else
                                    {
                                       §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                       if(_loc8_ && param1)
                                       {
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                             if(!_loc8_)
                                             {
                                                _loc7_++;
                                                if(_loc9_)
                                                {
                                                   break loop2;
                                                }
                                                break;
                                             }
                                             §§goto(addr237);
                                             addr179:
                                          }
                                          continue loop0;
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                          _loc7_++;
                                          if(!_loc8_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    addr225:
                                    _loc5_++;
                                    continue loop0;
                                 }
                                 addr177:
                                 _loc7_ = §§pop();
                              }
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc8_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() >= param1.width)
                                 {
                                    §§goto(addr225);
                                 }
                                 else
                                 {
                                    §§goto(addr179);
                                 }
                              }
                              addr204:
                           }
                           §§goto(addr204);
                        }
                        else
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr177);
                        §§goto(addr237);
                     }
                  }
               }
               §§goto(addr84);
            }
         }
         §§goto(addr74);
      }
      
      private static function §;a§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!(_loc11_ && param1))
         {
            if(!§20§)
            {
               if(_loc12_ || §'!C§)
               {
                  §20§ = true;
                  if(_loc12_ || param1)
                  {
                     addr52:
                     §!!9§ = [];
                     if(_loc12_ || param1)
                     {
                        addr62:
                        _loc9_ = uint(0);
                     }
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc9_);
                     §§push(256);
                     loop1:
                     while(§§pop() < §§pop())
                     {
                        _loc8_ = uint(_loc9_);
                        if(!_loc11_)
                        {
                           §§push(0);
                           if(!(_loc11_ && §'!C§))
                           {
                              §§push(uint(§§pop()));
                              if(!(_loc11_ && param1))
                              {
                                 _loc10_ = §§pop();
                                 if(!_loc11_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       §§push(8);
                                       if(_loc12_ || param3)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc11_ && §'!C§))
                                             {
                                                §!!9§[_loc9_] = _loc8_;
                                                addr180:
                                                §§push(_loc9_);
                                                if(_loc12_)
                                                {
                                                   addr183:
                                                   §§push(uint(§§pop() + 1));
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   addr187:
                                                   _loc9_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr187);
                                             }
                                             break loop1;
                                          }
                                          §§push(_loc8_);
                                          if(_loc11_ && §'!C§)
                                          {
                                             break;
                                          }
                                          §§push(1);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(_loc12_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc8_ = uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1)));
                                                }
                                                else
                                                {
                                                   _loc8_ = uint(uint(_loc8_ >>> 1));
                                                }
                                                §§push(_loc10_);
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc12_)
                                                   {
                                                      _loc10_ = uint(§§pop());
                                                      if(_loc12_ || param1)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr183);
                                             }
                                             addr194:
                                             §§push(uint(§§pop()));
                                             break;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    var _loc4_:* = §§pop();
                                    if(!_loc11_)
                                    {
                                       if(param3 != null)
                                       {
                                          if(_loc12_)
                                          {
                                             §§push(uint(param3.length));
                                             if(!_loc11_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   addr211:
                                                   param1.writeUnsignedInt(_loc4_);
                                                }
                                                §§push(uint(param1.position));
                                             }
                                             var _loc5_:* = §§pop();
                                             if(_loc12_ || param1)
                                             {
                                                param1.writeUnsignedInt(param2);
                                                if(_loc12_)
                                                {
                                                   if(param3 != null)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         addr235:
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
                                                   while(true)
                                                   {
                                                      if(_loc7_ >= _loc6_ - _loc5_)
                                                      {
                                                         §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                         break;
                                                      }
                                                      §§push(uint(uint(§!!9§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                      if(!(_loc12_ || param2))
                                                      {
                                                         break;
                                                      }
                                                      _loc8_ = §§pop();
                                                      _loc7_++;
                                                   }
                                                   _loc8_ = §§pop();
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      param1.position = _loc6_;
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         addr325:
                                                         param1.writeUnsignedInt(_loc8_);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr325);
                                                }
                                             }
                                             §§goto(addr235);
                                          }
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr180);
                     }
                     addr193:
                     §§goto(addr194);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr193);
         }
         §§goto(addr52);
      }
   }
}
