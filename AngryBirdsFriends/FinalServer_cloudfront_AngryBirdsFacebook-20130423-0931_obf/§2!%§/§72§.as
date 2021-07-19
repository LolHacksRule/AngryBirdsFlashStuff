package §2!%§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §72§
   {
      
      private static var § Z§:Array;
      
      private static var §!h§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!h§ = false;
         }
      }
      
      public function §72§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            if(!(_loc9_ && param1))
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
               while(true)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  loop2:
                  while(true)
                  {
                     addr81:
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        while(!_loc9_)
                        {
                           §"!;§(_loc2_,1229472850,_loc3_);
                           if(_loc8_ || §72§)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               while(false)
               {
                  §§goto(addr81);
               }
               var _loc4_:ByteArray = new ByteArray();
               var _loc5_:int = 0;
               loop6:
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        if(§§pop() >= param1.height)
                        {
                           loop7:
                           for(; _loc8_; while(true)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr309);
                                    }
                                    else
                                    {
                                       §§goto(addr219);
                                    }
                                 }
                                 break;
                              }
                              continue loop7;
                           },§§goto(addr223))
                           {
                              _loc4_.compress();
                              loop8:
                              while(true)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §"!;§(_loc2_,1229209940,_loc4_);
                                       continue loop7;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                          while(true)
                                          {
                                             _loc7_++;
                                             break loop8;
                                          }
                                          addr237:
                                          addr252:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr283:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          addr214:
                                          loop22:
                                          while(_loc8_)
                                          {
                                             if(§§pop() >= param1.width)
                                             {
                                                addr219:
                                                if(!_loc9_)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      _loc5_++;
                                                      addr223:
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            break loop12;
                                                         }
                                                         addr319:
                                                         addr319:
                                                         loop13:
                                                         while(true)
                                                         {
                                                            _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                            addr309:
                                                            while(true)
                                                            {
                                                               _loc7_++;
                                                            }
                                                            addr318:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   addr267:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      break loop22;
                                                   }
                                                }
                                                addr286:
                                             }
                                             else
                                             {
                                                §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                if(_loc8_)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr319);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= param1.width)
                                             {
                                                §§goto(addr272);
                                             }
                                             else
                                             {
                                                §§goto(addr318);
                                                §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                             }
                                             §§goto(addr319);
                                          }
                                       }
                                    }
                                 }
                                 break;
                                 addr124:
                                 if(_loc9_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!_loc9_)
                                 {
                                    break loop6;
                                 }
                                 addr339:
                                 if(!param1.transparent)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       addr332:
                                       _loc7_ = 0;
                                       break loop7;
                                    }
                                    break loop7;
                                 }
                                 addr275:
                                 §§push(0);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    _loc7_ = §§pop();
                                    §§goto(addr283);
                                 }
                                 §§goto(addr332);
                              }
                              while(true)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr237);
                                 }
                                 §§goto(addr252);
                              }
                           }
                           §§goto(addr267);
                        }
                        else
                        {
                           _loc4_.writeByte(0);
                        }
                        §§goto(addr339);
                     }
                     §§goto(addr275);
                  }
                  §§goto(addr214);
               }
               return _loc2_;
               addr79:
            }
         }
         §§goto(addr79);
      }
      
      private static function §"!;§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc11_ || §72§)
         {
            if(!§!h§)
            {
               if(!(_loc12_ && §72§))
               {
                  §!h§ = true;
                  addr265:
                  while(true)
                  {
                     § Z§ = [];
                     while(!(_loc12_ && §72§))
                     {
                        _loc9_ = 0;
                        if(!_loc11_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc9_);
                           if(!(_loc12_ && param1))
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(256);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc9_);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             addr233:
                                             while(true)
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
                                                         addr111:
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            while(true)
                                                            {
                                                               §§push(8);
                                                               if(_loc11_ || param2)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(_loc11_ || §72§)
                                                                              {
                                                                                 § Z§[_loc9_] = _loc8_;
                                                                                 if(!(_loc11_ || param1))
                                                                                 {
                                                                                    addr276:
                                                                                    break loop13;
                                                                                 }
                                                                                 addr146:
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc11_ || §72§)
                                                                                    {
                                                                                       if(_loc11_ || §72§)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc11_ || §72§)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                                if(_loc11_ || §72§)
                                                                                                {
                                                                                                   if(_loc12_ && §72§)
                                                                                                   {
                                                                                                      addr177:
                                                                                                      §§push(1);
                                                                                                   }
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                   break;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                                addr153:
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   addr154:
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_ || §72§)
                                                                                                      {
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      addr187:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         if(!(_loc11_ || param3))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc8_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr149:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               addr151:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                          addr171:
                                                                                          _loc8_ = §§pop();
                                                                                          addr172:
                                                                                          §§goto(addr149);
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                    §§goto(addr153);
                                                                                 }
                                                                                 var _loc4_:* = §§pop();
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                    if(param3 != null)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr291:
                                                                                          §§push(uint(param3.length));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr299:
                                                                                                param1.writeUnsignedInt(_loc4_);
                                                                                                addr302:
                                                                                                §§push(uint(param1.position));
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             param1.writeUnsignedInt(param2);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(param3 != null)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr321:
                                                                                                   var _loc6_:uint = param1.position;
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      param1.position = _loc5_;
                                                                                                      if(!(_loc12_ && param3))
                                                                                                      {
                                                                                                         _loc8_ = uint(4294967295);
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc7_:int = 0;
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                         {
                                                                                                            if(_loc11_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc12_ && param1))
                                                                                                               {
                                                                                                                  §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                                  if(!(_loc12_ && §72§))
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     loop1:
                                                                                                                     do
                                                                                                                     {
                                                                                                                        param1.position = _loc6_;
                                                                                                                        while(!(_loc12_ && param3))
                                                                                                                        {
                                                                                                                           param1.writeUnsignedInt(_loc8_);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     while(_loc12_);
                                                                                                                     
                                                                                                                     return;
                                                                                                                     addr416:
                                                                                                                     addr357:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr441:
                                                                                                                     _loc8_ = §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc7_++;
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(uint(uint(§ Z§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                             param1.writeBytes(param3);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr154);
                                                                        }
                                                                        §§goto(addr146);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc8_);
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop() & §§pop());
                                                            if(_loc12_ && param3)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr171);
                                                               §§push(uint(uint(_loc8_ >>> 1)));
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr278);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr276);
                                 }
                              }
                           }
                           §§goto(addr278);
                        }
                     }
                  }
                  addr265:
               }
               §§goto(addr265);
            }
            §§goto(addr276);
         }
         §§goto(addr265);
      }
   }
}
