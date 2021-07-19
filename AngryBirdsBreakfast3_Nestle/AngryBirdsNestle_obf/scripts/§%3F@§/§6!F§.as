package §?@§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §6!F§
   {
      
      private static var §;p§:Array;
      
      private static var §-%§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §6!F§))
         {
            §-%§ = false;
         }
      }
      
      public function §6!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(_loc8_ || param1)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc9_ && _loc3_))
            {
               addr42:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!(_loc9_ && §6!F§))
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  addr103:
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                  }
                  addr79:
                  if(_loc9_ && _loc2_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        do
                        {
                           §4T§(_loc2_,1229472850,_loc3_);
                        }
                        while(_loc9_ && param1);
                        
                        if(_loc8_ || _loc3_)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           §§goto(addr79);
                        }
                        addr97:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr103);
                  }
                  var _loc4_:ByteArray = new ByteArray();
                  var _loc5_:int = 0;
                  loop5:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc8_ || §6!F§)
                     {
                        if(_loc8_ || param1)
                        {
                           if(§§pop() >= param1.height)
                           {
                              loop6:
                              while(true)
                              {
                                 _loc4_.compress();
                                 addr191:
                                 loop7:
                                 while(!(_loc9_ && param1))
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc8_)
                                       {
                                          §4T§(_loc2_,1229209940,_loc4_);
                                          continue loop6;
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          _loc7_++;
                                          addr306:
                                          while(true)
                                          {
                                             addr294:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr296:
                                                while(true)
                                                {
                                                   if(§§pop() >= param1.width)
                                                   {
                                                      while(true)
                                                      {
                                                         addr217:
                                                         while(true)
                                                         {
                                                            addr218:
                                                            while(true)
                                                            {
                                                               _loc5_++;
                                                               break loop7;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr299:
                                                   }
                                                   else
                                                   {
                                                      §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr329:
                                                         while(true)
                                                         {
                                                            _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                            continue loop20;
                                                         }
                                                      }
                                                      addr328:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    loop21:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                          while(_loc8_ || _loc3_)
                                          {
                                             if(_loc8_ || §6!F§)
                                             {
                                                _loc7_++;
                                                while(true)
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      addr245:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr205:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && §6!F§))
                                                               {
                                                                  if(§§pop() < param1.width)
                                                                  {
                                                                     §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        continue loop21;
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr348:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr347:
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr303:
                                                                  while(true)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               addr302:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr306);
                                                }
                                                addr238:
                                             }
                                             else
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   addr354:
                                                   while(true)
                                                   {
                                                      if(!param1.transparent)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr302);
                                                      §§push(0);
                                                   }
                                                }
                                                addr334:
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr299);
                                          addr260:
                                       }
                                       §§goto(addr348);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || §6!F§)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr329);
                                       }
                                       else
                                       {
                                          §§goto(addr303);
                                       }
                                    }
                                    §§goto(addr260);
                                 }
                              }
                           }
                           else
                           {
                              _loc4_.writeByte(0);
                              §§goto(addr354);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr205);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr42);
      }
      
      private static function §4T§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_ || §6!F§)
         {
            if(!§-%§)
            {
               loop0:
               while(true)
               {
                  §-%§ = true;
                  loop1:
                  while(true)
                  {
                     §;p§ = [];
                     loop2:
                     while(!_loc11_)
                     {
                        while(true)
                        {
                           _loc9_ = uint(0);
                           if(!(_loc11_ && param3))
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        loop10:
                        while(true)
                        {
                           §§push(_loc9_);
                           if(_loc12_)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(256);
                                 loop12:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(uint(§§pop()));
                                          if(!_loc11_)
                                          {
                                             _loc8_ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         addr94:
                                                         addr262:
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§push(8);
                                                            if(_loc11_ && §6!F§)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §;p§[_loc9_] = _loc8_;
                                                                  loop17:
                                                                  for(; !(_loc11_ && §6!F§); if(_loc11_ && param1)
                                                                  {
                                                                     continue;
                                                                  },if(!(_loc11_ && param3))
                                                                  {
                                                                     continue loop13;
                                                                  },§§goto(addr191))
                                                                  {
                                                                     if(!(_loc12_ || param2))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(_loc9_);
                                                                     if(_loc12_ || param3)
                                                                     {
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc11_ && param1)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 addr264:
                                                                                 var _loc4_:* = §§pop();
                                                                                 if(!(_loc11_ && §6!F§))
                                                                                 {
                                                                                    if(param3 != null)
                                                                                    {
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr277:
                                                                                          §§push(uint(param3.length));
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr290:
                                                                                                param1.writeUnsignedInt(_loc4_);
                                                                                                addr293:
                                                                                                §§push(uint(param1.position));
                                                                                             }
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(_loc12_ || param3)
                                                                                          {
                                                                                             param1.writeUnsignedInt(param2);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(param3 != null)
                                                                                                {
                                                                                                   if(_loc11_ && param3)
                                                                                                   {
                                                                                                   }
                                                                                                   addr322:
                                                                                                   var _loc6_:uint = param1.position;
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      param1.position = _loc5_;
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr333:
                                                                                                         _loc8_ = uint(4294967295);
                                                                                                      }
                                                                                                      var _loc7_:int = 0;
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                            {
                                                                                                               loop4:
                                                                                                               while(_loc12_)
                                                                                                               {
                                                                                                                  §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     loop5:
                                                                                                                     while(!(_loc11_ && param3))
                                                                                                                     {
                                                                                                                        param1.position = _loc6_;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && param3))
                                                                                                                           {
                                                                                                                              if(_loc11_ && param2)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_++;
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr433:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(uint(uint(§;p§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                            }
                                                                                                            _loc8_ = §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             param1.writeBytes(param3);
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    §§goto(addr290);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             break loop17;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       addr169:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(§§pop() & §§pop());
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                   }
                                                                                                   addr190:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr191:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(uint(uint(_loc8_ >>> 1)));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr164:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr163:
                                                                                             }
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                addr135:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr190);
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr263:
                                                                                             §§goto(addr264);
                                                                                             §§push(uint(§§pop()));
                                                                                          }
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr264);
                                                                                 }
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                        §§goto(addr135);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§push(_loc8_);
                                                            §§goto(addr169);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr263);
                                                if(!(_loc12_ || §6!F§))
                                                {
                                                   continue;
                                                }
                                                if(true)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr94);
                                             }
                                          }
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr262);
                                 }
                              }
                           }
                           §§goto(addr264);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr262);
         }
         §§goto(addr250);
      }
   }
}
