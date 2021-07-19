package §96§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §%V§
   {
      
      private static var §'5§:Array;
      
      private static var §4D§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4D§ = false;
         }
      }
      
      public function §%V§()
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
         if(!(_loc9_ && _loc3_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc9_ && _loc3_))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc8_ || _loc2_)
         {
            _loc3_.writeInt(param1.width);
            while(true)
            {
               _loc3_.writeInt(param1.height);
               addr72:
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               if(false)
               {
                  loop3:
                  while(true)
                  {
                     _loc3_.writeByte(0);
                     while(!_loc9_)
                     {
                        §<! §(_loc2_,1229472850,_loc3_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                        if(!(_loc8_ || _loc3_))
                        {
                           break loop3;
                        }
                        §§goto(addr72);
                     }
                     addr98:
                     while(true)
                     {
                        _loc3_.writeUnsignedInt(134610944);
                        break loop3;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr81);
                     §§goto(addr65);
                  }
                  addr81:
               }
               var _loc4_:ByteArray = new ByteArray();
               var _loc5_:int = 0;
               addr181:
               §§push(_loc5_);
               if(_loc8_ || §%V§)
               {
                  if(_loc8_)
                  {
                     if(§§pop() >= param1.height)
                     {
                        addr195:
                        if(_loc8_ || param1)
                        {
                           _loc4_.compress();
                           addr204:
                           if(!(_loc9_ && §%V§))
                           {
                              §<! §(_loc2_,1229209940,_loc4_);
                              addr173:
                              if(!(_loc9_ && _loc3_))
                              {
                                 §<! §(_loc2_,1229278788,null);
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   if(_loc9_ && §%V§)
                                                   {
                                                      addr273:
                                                      addr343:
                                                      §§push(_loc7_);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() >= param1.width)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr218:
                                                               _loc5_++;
                                                               addr219:
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  §§goto(addr181);
                                                               }
                                                               _loc7_++;
                                                               addr296:
                                                               §§goto(addr273);
                                                               addr217:
                                                               addr309:
                                                            }
                                                            addr212:
                                                            addr214:
                                                            if(_loc7_ >= param1.width)
                                                            {
                                                               §§goto(addr217);
                                                            }
                                                            addr293:
                                                            §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                            if(!_loc9_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                               addr246:
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  if(!(_loc9_ && §%V§))
                                                                  {
                                                                     _loc7_++;
                                                                     addr229:
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  if(!param1.transparent)
                                                                  {
                                                                     addr342:
                                                                     _loc7_ = 0;
                                                                     §§goto(addr343);
                                                                  }
                                                                  addr285:
                                                                  §§push(0);
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr342);
                                                                  addr349:
                                                               }
                                                               addr319:
                                                               if(!(_loc9_ && §%V§))
                                                               {
                                                                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr342);
                                                               addr272:
                                                            }
                                                            addr318:
                                                            _loc6_ = §§pop();
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr318);
                                                         §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   return _loc2_;
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr219);
                     }
                     _loc4_.writeByte(0);
                     §§goto(addr349);
                  }
                  §§goto(addr285);
               }
               §§goto(addr214);
            }
         }
         §§goto(addr98);
      }
      
      private static function §<! §(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc11_)
         {
            if(!§4D§)
            {
               if(!_loc11_)
               {
                  §4D§ = true;
               }
               loop0:
               while(true)
               {
                  §'5§ = [];
                  addr243:
                  while(true)
                  {
                     _loc9_ = uint(0);
                     if(!_loc11_)
                     {
                        if(_loc12_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  loop7:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(_loc12_ || param1)
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
                                 loop10:
                                 while(true)
                                 {
                                    §§push(uint(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!(_loc11_ && §%V§))
                                          {
                                             §§push(uint(§§pop()));
                                             if(!(_loc11_ && param3))
                                             {
                                                _loc10_ = §§pop();
                                                loop13:
                                                for(; _loc12_; if(!(_loc12_ || param3))
                                                {
                                                   continue;
                                                },§§push(_loc9_),if(_loc12_)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(!(_loc12_ || param2))
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc11_ && §%V§))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(!(_loc12_ || §%V§))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            addr126:
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  §§goto(addr129);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                         }
                                                         addr125:
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr126);
                                                },§§goto(addr264))
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(8);
                                                         if(!_loc12_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc12_ || §%V§)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §'5§[_loc9_] = _loc8_;
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                                  addr65:
                                                                  _loc9_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc11_ && param1)
                                                                  {
                                                                     addr129:
                                                                     continue loop14;
                                                                  }
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        if(_loc11_ && param3)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                              if(!(_loc12_ || param1))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                           addr169:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           continue loop10;
                                                                           §§goto(addr191);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  addr140:
                                                               }
                                                               addr263:
                                                               §§push(uint(0));
                                                               break;
                                                            }
                                                            addr159:
                                                            §§push(_loc8_);
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(_loc12_ || §%V§)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr132:
                                                                  §§push(uint(uint(_loc8_ >>> 1)));
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     §§goto(addr140);
                                                                     §§goto(addr132);
                                                                  }
                                                                  addr139:
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   var _loc4_:* = §§pop();
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(param3 != null)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(uint(param3.length));
                                                            if(_loc12_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc12_ || §%V§)
                                                               {
                                                                  addr290:
                                                                  param1.writeUnsignedInt(_loc4_);
                                                                  addr293:
                                                                  §§push(uint(param1.position));
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            if(_loc12_)
                                                            {
                                                               param1.writeUnsignedInt(param2);
                                                               if(!_loc11_)
                                                               {
                                                                  if(param3 != null)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                     }
                                                                     addr312:
                                                                     var _loc6_:uint = param1.position;
                                                                     if(_loc12_)
                                                                     {
                                                                        param1.position = _loc5_;
                                                                        if(_loc12_ || §%V§)
                                                                        {
                                                                           addr328:
                                                                           _loc8_ = uint(4294967295);
                                                                        }
                                                                        var _loc7_:int = 0;
                                                                        if(_loc12_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ >= _loc6_ - _loc5_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                param1.position = _loc6_;
                                                                                                while(!_loc11_)
                                                                                                {
                                                                                                   param1.writeUnsignedInt(_loc8_);
                                                                                                   if(_loc12_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc11_ && param3))
                                                                                                      {
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      break loop2;
                                                                                                   }
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             return;
                                                                                             addr392:
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                       addr390:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr427:
                                                                                       _loc8_ = §§pop();
                                                                                    }
                                                                                    _loc7_++;
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(uint(uint(§'5§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               param1.writeBytes(param3);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr290);
                                                }
                                                continue;
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr263);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr263);
                           }
                        }
                     }
                     §§goto(addr264);
                  }
               }
            }
            §§goto(addr263);
         }
         §§goto(addr243);
      }
   }
}
