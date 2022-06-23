package §>Z§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §!-§
   {
      
      private static var §6^§:Array;
      
      private static var §9!#§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!#§ = false;
         }
      }
      
      public function §!-§()
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
         if(!_loc8_)
         {
            _loc3_.writeInt(param1.width);
            if(_loc9_ || param1)
            {
               _loc3_.writeInt(param1.height);
               if(!_loc8_)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  if(!_loc8_)
                  {
                     _loc3_.writeByte(0);
                     if(_loc9_)
                     {
                        addr69:
                        §^W§(_loc2_,1229472850,_loc3_);
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
                           _loc4_.compress();
                           if(!(_loc8_ && _loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc4_.writeByte(0);
                           if(!param1.transparent)
                           {
                              §§push(0);
                              if(_loc9_ || §!-§)
                              {
                                 _loc7_ = §§pop();
                                 if(_loc9_ || param1)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(_loc9_)
                                       {
                                          if(§§pop() < param1.width)
                                          {
                                             §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                _loc6_ = §§pop();
                                                _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                if(!_loc8_)
                                                {
                                                   _loc7_++;
                                                   if(!_loc8_)
                                                   {
                                                      continue;
                                                   }
                                                   addr197:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() >= param1.width)
                                                         {
                                                            addr213:
                                                            _loc5_++;
                                                            if(!_loc9_)
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr169:
                                                         §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                      }
                                                   }
                                                   continue loop1;
                                                   addr197:
                                                }
                                                §§goto(addr213);
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                _loc7_++;
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§goto(addr197);
                                                }
                                                break;
                                                §§goto(addr169);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr213);
                                       }
                                       else
                                       {
                                          addr160:
                                          _loc7_ = §§pop();
                                          if(!(_loc9_ || §!-§))
                                          {
                                             break loop1;
                                          }
                                       }
                                    }
                                    addr234:
                                    §^W§(_loc2_,1229278788,null);
                                    §§goto(addr239);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr200);
                           }
                           else
                           {
                              §§push(0);
                              if(_loc8_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr160);
                        }
                        addr239:
                        return _loc2_;
                     }
                     §^W§(_loc2_,1229209940,_loc4_);
                     §§goto(addr234);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private static function §^W§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            if(!§9!#§)
            {
               if(_loc12_ || §!-§)
               {
                  §9!#§ = true;
                  if(_loc12_)
                  {
                     addr42:
                     §6^§ = [];
                     if(_loc12_ || param2)
                     {
                        addr52:
                        _loc9_ = 0;
                     }
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(_loc12_ || §!-§)
                     {
                        §§push(256);
                        loop1:
                        while(§§pop() < §§pop())
                        {
                           §§push(uint(_loc9_));
                           if(!_loc11_)
                           {
                              _loc8_ = §§pop();
                              if(_loc12_)
                              {
                                 §§push(0);
                                 if(_loc12_)
                                 {
                                    _loc10_ = uint(§§pop());
                                    if(_loc11_)
                                    {
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(8);
                                          if(_loc11_ && param2)
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc12_ || param2)
                                             {
                                                addr174:
                                                §6^§[_loc9_] = _loc8_;
                                             }
                                             addr181:
                                             _loc9_++;
                                             if(!_loc12_)
                                             {
                                                break loop1;
                                             }
                                             continue loop0;
                                          }
                                          §§push(_loc8_);
                                          §§push(1);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(_loc12_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                   if(!(_loc11_ && §!-§))
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr108:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         if(_loc11_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() + 1);
                                                         if(_loc12_ || param2)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      addr125:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(uint(uint(_loc8_ >>> 1)));
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                }
                                                §§goto(addr181);
                                             }
                                             break;
                                          }
                                          continue loop1;
                                          §§goto(addr181);
                                       }
                                    }
                                 }
                                 addr195:
                                 §§push(uint(§§pop()));
                                 break loop0;
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr181);
                        }
                        addr194:
                        §§goto(addr195);
                        §§push(0);
                     }
                     break;
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc11_)
                  {
                     if(param3 != null)
                     {
                        if(_loc12_ || param2)
                        {
                           §§push(uint(param3.length));
                           if(_loc12_)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc11_ && param3))
                              {
                                 addr222:
                                 param1.writeUnsignedInt(_loc4_);
                                 addr225:
                                 §§push(uint(param1.position));
                              }
                              §§goto(addr225);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc11_ && param2))
                           {
                              param1.writeUnsignedInt(param2);
                              if(_loc12_)
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc12_ || param1)
                                    {
                                       addr251:
                                       param1.writeBytes(param3);
                                    }
                                 }
                              }
                              var _loc6_:uint = param1.position;
                              if(!_loc11_)
                              {
                                 param1.position = _loc5_;
                                 if(!_loc11_)
                                 {
                                    _loc8_ = uint(4294967295);
                                 }
                              }
                              var _loc7_:int = 0;
                              if(!(_loc11_ && §!-§))
                              {
                                 while(true)
                                 {
                                    if(_loc7_ >= _loc6_ - _loc5_)
                                    {
                                       §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                       break;
                                    }
                                    §§push(uint(uint(§6^§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc12_)
                                    {
                                       _loc7_++;
                                       if(!(_loc12_ || param1))
                                       {
                                          param1.position = _loc6_;
                                          if(_loc12_)
                                          {
                                             addr347:
                                             param1.writeUnsignedInt(_loc8_);
                                          }
                                          return;
                                       }
                                       addr342:
                                       continue;
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 if(!(_loc11_ && param1))
                                 {
                                    §§goto(addr342);
                                 }
                              }
                              §§goto(addr347);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr222);
               }
               §§goto(addr52);
            }
            §§goto(addr194);
         }
         §§goto(addr42);
      }
   }
}
