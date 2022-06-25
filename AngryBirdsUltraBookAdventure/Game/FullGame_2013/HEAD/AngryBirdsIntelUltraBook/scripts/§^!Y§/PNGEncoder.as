package §^!Y§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class PNGEncoder
   {
      
      private static var crcTable:Array;
      
      private static var §`!R§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!R§ = false;
         }
      }
      
      public function PNGEncoder()
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
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc8_ && param1))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc8_)
            {
               addr39:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc9_)
            {
               _loc3_.writeInt(param1.width);
               loop0:
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     loop2:
                     while(!_loc8_)
                     {
                        continue loop0;
                        addr71:
                        while(true)
                        {
                           if(!(_loc8_ && PNGEncoder))
                           {
                              §#!]§(_loc2_,1229472850,_loc3_);
                              if(!(_loc8_ && PNGEncoder))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        while(false)
                        {
                           while(true)
                           {
                              _loc3_.writeByte(0);
                              §§goto(addr71);
                           }
                        }
                        var _loc4_:ByteArray = new ByteArray();
                        §§push(0);
                        if(!_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(§§pop() >= param1.height)
                                    {
                                       if(_loc9_ || _loc2_)
                                       {
                                          _loc4_.compress();
                                       }
                                       loop7:
                                       while(_loc9_)
                                       {
                                          §#!]§(_loc2_,1229209940,_loc4_);
                                          loop8:
                                          while(_loc9_)
                                          {
                                             §#!]§(_loc2_,1229278788,null);
                                             if(!(_loc9_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc8_ && PNGEncoder))
                                             {
                                                break loop6;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc9_ || PNGEncoder)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc9_)
                                                      {
                                                         if(!(_loc8_ && PNGEncoder))
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc9_)
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  addr250:
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        break loop8;
                                                                     }
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc9_ || PNGEncoder)
                                                                        {
                                                                           if(!(_loc8_ && PNGEncoder))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 loop11:
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             addr202:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   if(§§pop() >= param1.width)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr299:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         break loop7;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         addr329:
                                                                                                         addr358:
                                                                                                         while(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc8_ && PNGEncoder))
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            addr410:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(param1.transparent)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr401:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     break loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            addr314:
                                                                                                            addr403:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= param1.width)
                                                                                                               {
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                                                                            }
                                                                                                            addr403:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr394:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                                                      addr382:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc9_ || PNGEncoder)
                                                                                                               {
                                                                                                               }
                                                                                                               break loop10;
                                                                                                            }
                                                                                                            §§push(int(§§pop()));
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    §§goto(addr403);
                                                                                 }
                                                                                 addr278:
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr250:
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      §§goto(addr358);
                                                   }
                                                }
                                                §§goto(addr403);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr281);
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                          §§goto(addr299);
                                       }
                                    }
                                    else
                                    {
                                       _loc4_.writeByte(0);
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr328);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr250);
                        }
                        return _loc2_;
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         §§goto(addr39);
      }
      
      private static function §#!]§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            §§push(§`!R§);
            if(!_loc11_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  §`!R§ = true;
                  loop1:
                  while(true)
                  {
                     crcTable = [];
                     addr252:
                     while(true)
                     {
                        _loc9_ = uint(0);
                        if(!(_loc11_ && param3))
                        {
                           if(!(_loc11_ && param1))
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     loop7:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc12_)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(256);
                              loop9:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc9_);
                                    if(!_loc11_)
                                    {
                                       §§push(uint(§§pop()));
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc12_)
                                             {
                                                §§push(uint(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         loop15:
                                                         while(!(_loc11_ && param1))
                                                         {
                                                            §§push(8);
                                                            if(!(_loc12_ || PNGEncoder))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(!(_loc11_ && PNGEncoder))
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc12_ || PNGEncoder)
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        crcTable[_loc9_] = _loc8_;
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc11_ && PNGEncoder))
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc12_ || PNGEncoder))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(uint(0));
                                                                                             break;
                                                                                          }
                                                                                          addr268:
                                                                                          addr268:
                                                                                          addr269:
                                                                                          addr269:
                                                                                          continue;
                                                                                       }
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          addr187:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr145:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    if(_loc11_ && PNGEncoder)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    _loc10_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       break loop15;
                                                                                       addr171:
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr270:
                                                                        var _loc4_:* = §§pop();
                                                                        if(_loc12_)
                                                                        {
                                                                           if(param3 != null)
                                                                           {
                                                                              if(_loc12_ || PNGEncoder)
                                                                              {
                                                                                 §§push(uint(param3.length));
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(_loc12_ || param3)
                                                                                    {
                                                                                       addr296:
                                                                                       param1.writeUnsignedInt(_loc4_);
                                                                                       addr300:
                                                                                       §§push(uint(param1.position));
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 var _loc5_:* = §§pop();
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    param1.writeUnsignedInt(param2);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr317:
                                                                                       if(param3 != null)
                                                                                       {
                                                                                          if(_loc12_ || PNGEncoder)
                                                                                          {
                                                                                             addr327:
                                                                                             param1.writeBytes(param3);
                                                                                          }
                                                                                       }
                                                                                       var _loc6_:uint = param1.position;
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          param1.position = _loc5_;
                                                                                          if(_loc12_ || param3)
                                                                                          {
                                                                                             _loc8_ = uint(4294967295);
                                                                                          }
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       var _loc7_:* = §§pop();
                                                                                       if(!(_loc11_ && PNGEncoder))
                                                                                       {
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!(_loc11_ && param3))
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(§§pop() >= _loc6_ - _loc5_)
                                                                                                   {
                                                                                                      if(!(_loc11_ && PNGEncoder))
                                                                                                      {
                                                                                                         if(_loc11_ && PNGEncoder)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.position = _loc6_;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc11_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr481:
                                                                                                               §§push(_loc7_);
                                                                                                               addr456:
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  addr455:
                                                                                                                  §§push(int(§§pop() + 1));
                                                                                                               }
                                                                                                               _loc7_ = §§pop();
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr434:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr480:
                                                                                                            _loc8_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr481);
                                                                                                      }
                                                                                                      §§goto(addr434);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(uint(uint(crcTable[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                             §§goto(addr456);
                                                                                          }
                                                                                          addr394:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                        }
                                                                        §§goto(addr296);
                                                                        addr123:
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc8_);
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                  }
                                                                  addr176:
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(_loc12_ || param2)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(uint(uint(_loc8_ >>> 1)));
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     §§goto(addr169);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr269);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             §§goto(addr269);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr268);
                              }
                           }
                        }
                        §§goto(addr270);
                     }
                  }
               }
            }
            §§goto(addr268);
         }
         §§goto(addr252);
      }
   }
}
