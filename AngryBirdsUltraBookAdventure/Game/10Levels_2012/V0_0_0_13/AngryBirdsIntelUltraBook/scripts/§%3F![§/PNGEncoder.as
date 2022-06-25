package §?![§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class PNGEncoder
   {
      
      private static var crcTable:Array;
      
      private static var §<"§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<"§ = false;
         }
      }
      
      public function PNGEncoder()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
            if(_loc9_ || _loc2_)
            {
               addr39:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!_loc8_)
            {
               _loc3_.writeInt(param1.width);
               loop0:
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     while(_loc9_ || param1)
                     {
                        continue loop0;
                        loop4:
                        while(!(_loc8_ && PNGEncoder))
                        {
                           while(true)
                           {
                              §%!Q§(_loc2_,1229472850,_loc3_);
                              if(_loc8_ && _loc2_)
                              {
                                 continue loop4;
                              }
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 _loc3_.writeByte(0);
                                 continue loop4;
                              }
                           }
                           var _loc4_:ByteArray = new ByteArray();
                           §§push(0);
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(§§pop() >= param1.height)
                                          {
                                             if(!(_loc8_ && PNGEncoder))
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      _loc4_.compress();
                                                      loop22:
                                                      while(_loc9_)
                                                      {
                                                         §%!Q§(_loc2_,1229209940,_loc4_);
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_ || PNGEncoder)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(param1.transparent)
                                                                           {
                                                                              §§push(0);
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr335:
                                                                                    while(true)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr217:
                                                                                             if(!(_loc8_ && PNGEncoder))
                                                                                             {
                                                                                                if(§§pop() >= param1.width)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            addr266:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               §§push(§§pop() + 1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  addr275:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         addr310:
                                                                                                      }
                                                                                                      loop10:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < param1.width)
                                                                                                               {
                                                                                                                  §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr229:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr246:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       break loop23;
                                                                                                                                    }
                                                                                                                                    addr396:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr275);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr246:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr347:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              addr398:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr239:
                                                                                                                     }
                                                                                                                     §§goto(addr246);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr322:
                                                                                                }
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr389:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                                                      addr379:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr347);
                                                                                                §§goto(addr217);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                          addr294:
                                                                                       }
                                                                                       continue loop32;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr395:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr396);
                                                                           }
                                                                        }
                                                                        addr405:
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop22;
                                                         }
                                                         while(_loc8_ && _loc2_)
                                                         {
                                                            §§goto(addr330);
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      addr210:
                                                   }
                                                   §§goto(addr389);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr210);
                                          }
                                          else
                                          {
                                             _loc4_.writeByte(0);
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr246);
                           }
                           return _loc2_;
                        }
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr39);
      }
      
      private static function §%!Q§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         if(!_loc12_)
         {
            §§push(§<"§);
            if(_loc11_ || param1)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  §<"§ = true;
                  addr256:
                  while(true)
                  {
                     crcTable = [];
                     while(_loc11_ || PNGEncoder)
                     {
                        _loc9_ = 0;
                        if(!_loc12_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr229:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!_loc12_)
                     {
                        while(true)
                        {
                           §§push(256);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc9_);
                                 if(_loc11_)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    addr210:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr192:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr262);
                           }
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc12_ && param2))
                     {
                        if(param3 != null)
                        {
                           if(!(_loc12_ && param2))
                           {
                              §§push(uint(param3.length));
                              if(!_loc12_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc11_ || param2)
                                 {
                                    addr295:
                                    param1.writeUnsignedInt(_loc4_);
                                    addr299:
                                    §§push(uint(param1.position));
                                 }
                                 §§goto(addr299);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc11_)
                              {
                                 param1.writeUnsignedInt(param2);
                                 if(_loc11_)
                                 {
                                    if(param3 != null)
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          addr321:
                                          param1.writeBytes(param3);
                                       }
                                    }
                                    var _loc6_:uint = param1.position;
                                    if(!_loc12_)
                                    {
                                       param1.position = _loc5_;
                                       if(!_loc12_)
                                       {
                                          _loc8_ = uint(4294967295);
                                       }
                                    }
                                    §§push(0);
                                    if(_loc11_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!_loc12_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc11_)
                                          {
                                             if(§§pop() >= _loc6_ - _loc5_)
                                             {
                                                loop2:
                                                for(; _loc11_; if(_loc11_ || PNGEncoder)
                                                {
                                                   return;
                                                   addr370:
                                                })
                                                {
                                                   §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                   if(!_loc12_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      while(_loc11_)
                                                      {
                                                         param1.position = _loc6_;
                                                         while(!(_loc12_ && param3))
                                                         {
                                                            param1.writeUnsignedInt(_loc8_);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr459:
                                                      _loc8_ = §§pop();
                                                   }
                                                   §§push(_loc7_);
                                                   if(!(_loc12_ && PNGEncoder))
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc12_ && param3)
                                                      {
                                                      }
                                                      addr435:
                                                      _loc7_ = §§pop();
                                                      break;
                                                   }
                                                   §§goto(addr435);
                                                   §§push(int(§§pop()));
                                                }
                                                continue;
                                             }
                                             §§push(uint(uint(crcTable[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                             §§goto(addr459);
                                          }
                                          §§goto(addr435);
                                       }
                                    }
                                    §§goto(addr370);
                                 }
                              }
                              §§goto(addr321);
                           }
                        }
                     }
                     §§goto(addr295);
                  }
               }
            }
            §§goto(addr262);
         }
         §§goto(addr256);
      }
   }
}
