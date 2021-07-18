package §7L§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §"!I§
   {
      
      private static var §2y§:Array;
      
      private static var § y§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §"!I§)
         {
            § y§ = false;
         }
      }
      
      public function §"!I§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
         if(_loc9_ || param1)
         {
            _loc3_.writeInt(param1.width);
            while(true)
            {
               _loc3_.writeInt(param1.height);
            }
            addr99:
         }
         while(true)
         {
            _loc3_.writeUnsignedInt(134610944);
            loop2:
            while(!_loc8_)
            {
               loop3:
               do
               {
                  _loc3_.writeByte(0);
                  while(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        §'U§(_loc2_,1229472850,_loc3_);
                        if(!(_loc8_ && _loc2_))
                        {
                           continue loop3;
                        }
                        continue;
                     }
                     §§goto(addr99);
                  }
                  continue loop2;
               }
               while(false);
               
               var _loc4_:ByteArray = new ByteArray();
               var _loc5_:int = 0;
               loop5:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        if(§§pop() >= param1.height)
                        {
                           _loc4_.compress();
                           while(_loc9_)
                           {
                              §'U§(_loc2_,1229209940,_loc4_);
                              while(_loc9_)
                              {
                                 §'U§(_loc2_,1229278788,null);
                                 if(_loc9_)
                                 {
                                    return _loc2_;
                                 }
                              }
                           }
                           loop10:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    _loc5_++;
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       break;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          addr161:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                continue loop12;
                                             }
                                             if(§§pop() >= param1.width)
                                             {
                                                continue loop10;
                                             }
                                             §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                             if(!_loc8_)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      continue loop13;
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr224:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(§§pop() < param1.width)
                                                               {
                                                                  §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                     addr259:
                                                                     while(true)
                                                                     {
                                                                        _loc7_++;
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  addr268:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  continue loop7;
                                                               }
                                                               addr275:
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr268);
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                              §§goto(addr259);
                           }
                        }
                        else
                        {
                           _loc4_.writeByte(0);
                           if(!param1.transparent)
                           {
                              §§goto(addr275);
                              §§push(0);
                           }
                           else
                           {
                              §§push(0);
                           }
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr161);
               }
            }
         }
      }
      
      private static function §'U§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!(_loc12_ && param3))
         {
            if(!§ y§)
            {
               if(_loc11_ || param1)
               {
                  § y§ = true;
                  addr210:
                  while(true)
                  {
                     §2y§ = [];
                     while(!(_loc12_ && param3))
                     {
                        _loc9_ = uint(0);
                        if(!_loc11_)
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc9_);
                           if(!_loc12_)
                           {
                              §§push(256);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc9_);
                                    loop6:
                                    while(true)
                                    {
                                       _loc8_ = uint(§§pop());
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                §§push(8);
                                                if(_loc12_ && param2)
                                                {
                                                   continue loop5;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §2y§[_loc9_] = _loc8_;
                                                   while(true)
                                                   {
                                                      §§push(_loc9_ + 1);
                                                      if(_loc11_)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         if(_loc11_ || param3)
                                                         {
                                                            if(!(_loc11_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            _loc9_ = §§pop();
                                                            if(!(_loc11_ || param2))
                                                            {
                                                               break loop9;
                                                            }
                                                            if(!_loc12_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue;
                                                         }
                                                         addr218:
                                                         var _loc4_:* = §§pop();
                                                         if(!(_loc12_ && param3))
                                                         {
                                                            if(param3 != null)
                                                            {
                                                               if(_loc11_ || §"!I§)
                                                               {
                                                                  addr236:
                                                                  §§push(uint(param3.length));
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr249:
                                                                        param1.writeUnsignedInt(_loc4_);
                                                                        addr252:
                                                                        §§push(uint(param1.position));
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc12_)
                                                                  {
                                                                     param1.writeUnsignedInt(param2);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr263:
                                                                        if(param3 != null)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              param1.writeBytes(param3);
                                                                           }
                                                                        }
                                                                     }
                                                                     var _loc6_:uint = param1.position;
                                                                     if(_loc11_ || param3)
                                                                     {
                                                                        param1.position = _loc5_;
                                                                        if(_loc11_ || §"!I§)
                                                                        {
                                                                           addr292:
                                                                           _loc8_ = uint(4294967295);
                                                                        }
                                                                        var _loc7_:int = 0;
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ >= _loc6_ - _loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    param1.position = _loc6_;
                                                                                    if(_loc11_ || §"!I§)
                                                                                    {
                                                                                       param1.writeUnsignedInt(_loc8_);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§push(uint(uint(§2y§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                           _loc8_ = §§pop();
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  §§goto(addr263);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      else
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr156:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                               }
                                                               addr104:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() + 1);
                                                               continue loop13;
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   continue loop8;
                                                }
                                                §§push(_loc8_);
                                                if(_loc11_ || param1)
                                                {
                                                   continue loop6;
                                                }
                                                addr155:
                                                _loc8_ = §§pop();
                                                §§goto(addr156);
                                             }
                                          }
                                          addr135:
                                          if(_loc12_ && param2)
                                          {
                                             continue;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr155);
                                             §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                          }
                                          else
                                          {
                                             §§push(uint(uint(_loc8_ >>> 1)));
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                 }
                                 addr216:
                                 §§goto(addr217);
                              }
                           }
                           §§goto(addr218);
                        }
                     }
                  }
                  addr210:
               }
               §§goto(addr210);
            }
            §§goto(addr216);
         }
         §§goto(addr210);
      }
   }
}
