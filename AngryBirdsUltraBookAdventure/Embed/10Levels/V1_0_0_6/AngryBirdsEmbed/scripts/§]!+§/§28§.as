package §]!+§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §28§
   {
      
      private static var §@!4§:Array;
      
      private static var §#!F§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#!F§ = false;
         }
      }
      
      public function §28§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
         if(!_loc9_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc9_ && param1))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!(_loc9_ && param1))
         {
            _loc3_.writeInt(param1.width);
            if(!(_loc9_ && §28§))
            {
               _loc3_.writeInt(param1.height);
               if(!_loc9_)
               {
                  addr68:
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc8_ || param1)
                  {
                     addr78:
                     _loc3_.writeByte(0);
                     if(!(_loc9_ && _loc2_))
                     {
                        addr88:
                        §`G§(_loc2_,1229472850,_loc3_);
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
                              if(_loc8_)
                              {
                                 addr244:
                                 _loc4_.compress();
                              }
                           }
                           else
                           {
                              _loc4_.writeByte(0);
                              if(!param1.transparent)
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(0);
                                    if(!(_loc8_ || _loc2_))
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop() >= param1.width)
                                          {
                                             continue loop0;
                                          }
                                          §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                if(!_loc9_)
                                                {
                                                   _loc7_++;
                                                   if(_loc9_)
                                                   {
                                                      break loop3;
                                                   }
                                                }
                                                break loop3;
                                                addr177:
                                             }
                                          }
                                       }
                                       addr246:
                                       §`G§(_loc2_,1229209940,_loc4_);
                                       if(!(_loc9_ && param1))
                                       {
                                          §`G§(_loc2_,1229278788,null);
                                       }
                                    }
                                    _loc7_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc8_ || §28§))
                                       {
                                          break;
                                       }
                                       addr142:
                                       _loc6_ = §§pop();
                                       _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                       _loc7_++;
                                    }
                                    continue;
                                    return _loc2_;
                                    addr246:
                                 }
                                 §§goto(addr244);
                                 §§goto(addr246);
                              }
                              else
                              {
                                 §§push(0);
                                 if(!(_loc8_ || §28§))
                                 {
                                    continue;
                                 }
                                 _loc7_ = §§pop();
                              }
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() >= param1.width)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr246);
                        }
                     }
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr78);
         }
         §§goto(addr68);
      }
      
      private static function §`G§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!(_loc11_ && §28§))
         {
            if(!§#!F§)
            {
               if(!_loc11_)
               {
                  §#!F§ = true;
                  if(!_loc11_)
                  {
                     addr42:
                     §@!4§ = [];
                     if(_loc12_ || param2)
                     {
                        addr52:
                        _loc9_ = uint(0);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(_loc9_);
                        §§push(256);
                        loop1:
                        while(§§pop() < §§pop())
                        {
                           §§push(uint(_loc9_));
                           if(!_loc11_)
                           {
                              _loc8_ = §§pop();
                              §§push(0);
                              if(!_loc11_)
                              {
                                 §§push(uint(§§pop()));
                                 if(!(_loc11_ && param1))
                                 {
                                    addr73:
                                    _loc10_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       §§push(8);
                                       if(_loc11_ && param2)
                                       {
                                          continue loop1;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(_loc8_);
                                             while(true)
                                             {
                                                §§push(1);
                                                if(_loc11_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop() & §§pop());
                                                if(!_loc11_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                      if(_loc12_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            addr111:
                                                            §§push(_loc10_ + 1);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               §§push(uint(§§pop()));
                                                               if(!(_loc11_ && §28§))
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr165:
                                                               _loc9_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§push(uint(§§pop()));
                                                            if(_loc12_ || param1)
                                                            {
                                                               §§goto(addr165);
                                                            }
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      addr173:
                                                      var _loc4_:* = §§pop();
                                                      if(!(_loc11_ && §28§))
                                                      {
                                                         if(param3 != null)
                                                         {
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               addr191:
                                                               §§push(uint(param3.length));
                                                               if(_loc12_ || §28§)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr204:
                                                                     param1.writeUnsignedInt(_loc4_);
                                                                  }
                                                                  §§push(uint(param1.position));
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(_loc12_ || param1)
                                                               {
                                                                  param1.writeUnsignedInt(param2);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr223:
                                                                     if(param3 != null)
                                                                     {
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           param1.writeBytes(param3);
                                                                        }
                                                                     }
                                                                  }
                                                                  var _loc6_:uint = param1.position;
                                                                  if(_loc12_)
                                                                  {
                                                                     param1.position = _loc5_;
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        _loc8_ = uint(4294967295);
                                                                     }
                                                                  }
                                                                  var _loc7_:int = 0;
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ >= _loc6_ - _loc5_)
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§push(uint(uint(§@!4§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                     if(!(_loc12_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     _loc7_++;
                                                                     if(!(_loc11_ && param3))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  if(_loc12_ || param3)
                                                                  {
                                                                     addr332:
                                                                     param1.position = _loc6_;
                                                                     if(!_loc12_)
                                                                     {
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  addr337:
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                     break loop5;
                                                                  }
                                                                  param1.writeUnsignedInt(_loc8_);
                                                                  return;
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      _loc8_ = uint(uint(_loc8_ >>> 1));
                                                      if(!_loc12_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr173);
                                                §§push(uint(§§pop()));
                                                continue loop4;
                                             }
                                             addr77:
                                          }
                                          §@!4§[_loc9_] = _loc8_;
                                          §§goto(addr111);
                                       }
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr73);
                        }
                        addr171:
                        §§goto(addr172);
                     }
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr171);
         }
         §§goto(addr42);
      }
   }
}
