package §!"§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §!!v§
   {
      
      private static var §!!a§:Array;
      
      private static var §%!L§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!L§ = false;
         }
      }
      
      public function §!!v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
         if(!(_loc9_ && §!!v§))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc8_ || _loc2_)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!(_loc9_ && param1))
         {
            _loc3_.writeInt(param1.width);
            if(!(_loc9_ && param1))
            {
               _loc3_.writeInt(param1.height);
               if(!_loc9_)
               {
                  addr73:
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc8_)
                  {
                     _loc3_.writeByte(0);
                     if(_loc9_)
                     {
                     }
                     addr88:
                     var _loc4_:ByteArray = new ByteArray();
                     var _loc5_:int = 0;
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop1:
                        while(§§pop() < param1.height)
                        {
                           _loc4_.writeByte(0);
                           if(_loc9_ && param1)
                           {
                              break;
                           }
                           if(!param1.transparent)
                           {
                              §§push(0);
                              if(!(_loc9_ && param1))
                              {
                                 _loc7_ = §§pop();
                                 if(_loc9_)
                                 {
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(_loc8_)
                                    {
                                       if(§§pop() < param1.width)
                                       {
                                          §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc9_ && §!!v§))
                                                {
                                                   _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      _loc7_++;
                                                      break loop2;
                                                   }
                                                   addr250:
                                                   addr250:
                                                   §5K§(_loc2_,1229209940,_loc4_);
                                                   §5K§(_loc2_,1229278788,null);
                                                   break;
                                                }
                                                break;
                                                addr185:
                                             }
                                             return _loc2_;
                                          }
                                          _loc6_ = §§pop();
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                       _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                       if(!_loc9_)
                                       {
                                          _loc7_++;
                                       }
                                       continue;
                                    }
                                    addr181:
                                    _loc7_ = §§pop();
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop() >= param1.width)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr185);
                              }
                           }
                           else
                           {
                              §§push(0);
                              if(_loc9_ && param1)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr181);
                        }
                        _loc4_.compress();
                        §§goto(addr250);
                     }
                  }
               }
               §5K§(_loc2_,1229472850,_loc3_);
               §§goto(addr88);
            }
            §§goto(addr73);
         }
         §§goto(addr88);
      }
      
      private static function §5K§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            if(!§%!L§)
            {
               if(_loc12_ || param3)
               {
                  §%!L§ = true;
                  if(!(_loc11_ && §!!v§))
                  {
                     addr47:
                     §!!a§ = [];
                     if(!(_loc11_ && §!!v§))
                     {
                        _loc9_ = uint(0);
                     }
                  }
                  while(true)
                  {
                     §§push(_loc9_);
                     loop1:
                     while(true)
                     {
                        §§push(256);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(uint(_loc9_));
                              if(!(_loc11_ && param2))
                              {
                                 _loc8_ = §§pop();
                                 if(!(_loc11_ && param2))
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && §!!v§))
                                    {
                                       §§push(uint(§§pop()));
                                       if(_loc11_ && param2)
                                       {
                                          continue loop1;
                                       }
                                       _loc10_ = §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc10_);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(8);
                                             if(_loc12_ || param3)
                                             {
                                                while(§§pop() < §§pop())
                                                {
                                                   §§push(_loc8_);
                                                   §§push(1);
                                                   if(!_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() & §§pop());
                                                   if(!(_loc11_ && param3))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr150:
                                                            §§push(_loc10_);
                                                         }
                                                         §§push(§§pop() + 1);
                                                         if(_loc12_ || param3)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr187:
                                                         §§push(uint(§§pop()));
                                                         if(_loc12_)
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§push(uint(uint(_loc8_ >>> 1)));
                                                      if(_loc11_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      _loc8_ = §§pop();
                                                      if(!(_loc12_ || §!!v§))
                                                      {
                                                         break loop2;
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   else
                                                   {
                                                      addr195:
                                                      var _loc4_:* = uint(§§pop());
                                                      if(_loc12_ || param3)
                                                      {
                                                         if(param3 != null)
                                                         {
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               §§push(uint(param3.length));
                                                               if(!_loc11_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     addr227:
                                                                     param1.writeUnsignedInt(_loc4_);
                                                                     addr230:
                                                                     §§push(uint(param1.position));
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               var _loc5_:* = §§pop();
                                                               if(_loc12_)
                                                               {
                                                                  param1.writeUnsignedInt(param2);
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               addr246:
                                                               if(param3 != null)
                                                               {
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     addr256:
                                                                     param1.writeBytes(param3);
                                                                  }
                                                               }
                                                               var _loc6_:uint = param1.position;
                                                               if(!(_loc11_ && §!!v§))
                                                               {
                                                                  param1.position = _loc5_;
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc8_ = uint(4294967295);
                                                                  }
                                                               }
                                                               var _loc7_:int = 0;
                                                               while(true)
                                                               {
                                                                  if(_loc7_ >= _loc6_ - _loc5_)
                                                                  {
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§push(uint(uint(§!!a§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  _loc7_++;
                                                               }
                                                               _loc8_ = §§pop();
                                                               param1.position = _loc6_;
                                                               if(_loc12_)
                                                               {
                                                                  param1.writeUnsignedInt(_loc8_);
                                                               }
                                                               addr344:
                                                               if(_loc12_ || param1)
                                                               {
                                                                  §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                  break loop6;
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                }
                                                §!!a§[_loc9_] = _loc8_;
                                                break loop2;
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           §§push(0);
                           §§goto(addr195);
                        }
                        §§goto(addr187);
                     }
                     _loc9_ = §§pop();
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr194);
         }
         §§goto(addr47);
      }
   }
}
