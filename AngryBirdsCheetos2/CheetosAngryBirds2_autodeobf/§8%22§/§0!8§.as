package §8"§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §0!8§
   {
      
      private static var §#!R§:Array;
      
      private static var §[s§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[s§ = false;
         }
      }
      
      public function §0!8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_ || _loc3_)
            {
               _loc3_.writeInt(param1.width);
               loop0:
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  loop1:
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     loop2:
                     while(_loc8_)
                     {
                        while(true)
                        {
                           _loc3_.writeByte(0);
                           while(!_loc9_)
                           {
                              §@!b§(_loc2_,1229472850,_loc3_);
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr69);
            }
            var _loc4_:ByteArray = new ByteArray();
            var _loc5_:int = 0;
            loop6:
            while(true)
            {
               §§push(_loc5_);
               if(_loc8_ || _loc2_)
               {
                  if(!_loc9_)
                  {
                     if(§§pop() >= param1.height)
                     {
                        loop7:
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 _loc4_.compress();
                                 loop8:
                                 while(_loc8_ || §0!8§)
                                 {
                                    §@!b§(_loc2_,1229209940,_loc4_);
                                    while(true)
                                    {
                                       if(!(_loc9_ && §0!8§))
                                       {
                                          if(_loc9_ && _loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          if(!(_loc8_ || param1))
                                          {
                                             loop13:
                                             while(!(_loc9_ && _loc3_))
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc7_++;
                                                   loop15:
                                                   while(_loc8_ || param1)
                                                   {
                                                      addr238:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr195:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(!(_loc8_ || §0!8§))
                                                               {
                                                                  addr342:
                                                                  _loc7_ = §§pop();
                                                                  break loop15;
                                                               }
                                                               if(§§pop() >= param1.width)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                               if(_loc8_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  break loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr324:
                                                                  while(true)
                                                                  {
                                                                     _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        _loc7_++;
                                                                        addr294:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              break loop17;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     addr301:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§goto(addr301);
                                                                     }
                                                                  }
                                                               }
                                                               addr323:
                                                            }
                                                            addr284:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= param1.width)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§goto(addr323);
                                                               §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                            }
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                   addr231:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(0);
                                                   }
                                                   §§goto(addr284);
                                                   addr329:
                                                }
                                                §§goto(addr342);
                                             }
                                             addr253:
                                          }
                                          _loc5_++;
                                          break loop8;
                                       }
                                       §§goto(addr231);
                                    }
                                 }
                                 continue loop6;
                              }
                              §§goto(addr324);
                           }
                           break;
                           if(!(_loc8_ || §0!8§))
                           {
                              continue;
                           }
                           if(!(_loc9_ && param1))
                           {
                              break loop6;
                           }
                           §§goto(addr291);
                        }
                        while(_loc8_)
                        {
                           _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                           §§goto(addr253);
                        }
                        §§goto(addr294);
                     }
                     else
                     {
                        _loc4_.writeByte(0);
                        §§goto(addr349);
                     }
                  }
                  §§goto(addr290);
               }
               §§goto(addr195);
            }
            return _loc2_;
         }
         §§goto(addr37);
      }
      
      private static function §@!b§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc12_ || param1)
         {
            if(!§[s§)
            {
               if(_loc12_)
               {
                  addr243:
                  §[s§ = true;
               }
               do
               {
                  §#!R§ = [];
                  do
                  {
                     _loc9_ = 0;
                  }
                  while(!(_loc12_ || param1));
                  
               }
               while(!(_loc12_ || param3));
               
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc12_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(256);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc9_);
                              if(!(_loc12_ || param3))
                              {
                                 continue loop3;
                              }
                              §§push(uint(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc12_ || §0!8§)
                                    {
                                       §§push(uint(§§pop()));
                                       loop7:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                if(_loc11_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(8);
                                                if(!(_loc12_ || param2))
                                                {
                                                   continue loop4;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc12_ || param3))
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop5;
                                                         addr151:
                                                      }
                                                      §#!R§[_loc9_] = _loc8_;
                                                      if(!(_loc12_ || param3))
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc12_ || param3)
                                                         {
                                                            if(_loc11_ && param2)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(_loc9_);
                                                            if(!_loc11_)
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!(_loc11_ && §0!8§))
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 addr115:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    addr117:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(_loc12_ || §0!8§)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             addr128:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                addr129:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr127:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§push(§§pop() & §§pop());
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(uint(uint(_loc8_ >>> 1)));
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr254:
                                                                                                var _loc4_:* = uint(§§pop());
                                                                                                if(_loc12_ || param1)
                                                                                                {
                                                                                                   if(param3 != null)
                                                                                                   {
                                                                                                      if(_loc12_ || param3)
                                                                                                      {
                                                                                                         §§push(uint(param3.length));
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               addr280:
                                                                                                               param1.writeUnsignedInt(_loc4_);
                                                                                                               addr283:
                                                                                                               §§push(uint(param1.position));
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         var _loc5_:* = §§pop();
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            param1.writeUnsignedInt(param2);
                                                                                                            if(_loc12_ || §0!8§)
                                                                                                            {
                                                                                                               addr299:
                                                                                                               if(param3 != null)
                                                                                                               {
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     param1.writeBytes(param3);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc6_:uint = param1.position;
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               param1.position = _loc5_;
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  addr318:
                                                                                                                  _loc8_ = uint(4294967295);
                                                                                                               }
                                                                                                               var _loc7_:int = 0;
                                                                                                               if(!(_loc11_ && §0!8§))
                                                                                                               {
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                                     {
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc11_ && param2)
                                                                                                                                 {
                                                                                                                                    break loop23;
                                                                                                                                 }
                                                                                                                                 §§goto(addr382);
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc7_++;
                                                                                                                        continue;
                                                                                                                        addr418:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(uint(uint(§#!R§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                                     }
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr382:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.position = _loc6_;
                                                                                                                  do
                                                                                                                  {
                                                                                                                     param1.writeUnsignedInt(_loc8_);
                                                                                                                  }
                                                                                                                  while(_loc11_);
                                                                                                                  
                                                                                                                  if(_loc12_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break loop24;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr318);
                                                                                                         }
                                                                                                         §§goto(addr299);
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                          }
                                                                                          addr156:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr128);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr127);
                                                               }
                                                               §§goto(addr117);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr129);
                                                      §§goto(addr115);
                                                   }
                                                   addr252:
                                                   §§goto(addr254);
                                                   §§push(0);
                                                }
                                                else
                                                {
                                                   §§push(_loc8_);
                                                }
                                                §§goto(addr156);
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    §§goto(addr254);
                                 }
                              }
                           }
                           §§goto(addr252);
                        }
                     }
                  }
                  §§goto(addr254);
               }
            }
            §§goto(addr252);
         }
         §§goto(addr243);
      }
   }
}
