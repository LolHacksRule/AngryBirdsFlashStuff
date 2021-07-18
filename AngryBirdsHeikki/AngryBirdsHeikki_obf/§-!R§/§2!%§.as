package §-!R§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §2!%§
   {
      
      private static var §,&§:Array;
      
      private static var §<!J§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!J§ = false;
         }
      }
      
      public function §2!%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc9_)
            {
               addr32:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_)
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
               }
               addr78:
            }
            loop1:
            while(true)
            {
               _loc3_.writeUnsignedInt(134610944);
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     _loc3_.writeByte(0);
                     while(_loc8_)
                     {
                        if(!_loc9_)
                        {
                           §#^§(_loc2_,1229472850,_loc3_);
                           if(_loc9_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              break loop3;
                           }
                           if(false)
                           {
                              continue loop3;
                           }
                           var _loc4_:ByteArray = new ByteArray();
                           var _loc5_:int = 0;
                           addr120:
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 if(!_loc9_)
                                 {
                                    if(§§pop() >= param1.height)
                                    {
                                       addr136:
                                       if(!(_loc9_ && param1))
                                       {
                                          _loc4_.compress();
                                          addr155:
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(_loc8_)
                                                {
                                                   §#^§(_loc2_,1229209940,_loc4_);
                                                   addr117:
                                                   if(!_loc9_)
                                                   {
                                                      §#^§(_loc2_,1229278788,null);
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr193:
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     addr172:
                                                                     if(_loc7_ >= param1.width)
                                                                     {
                                                                        addr178:
                                                                        _loc5_++;
                                                                        addr177:
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!(_loc9_ && §2!%§))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr120);
                                                                              }
                                                                              _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                              addr274:
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              _loc7_++;
                                                                              addr249:
                                                                              §§push(_loc7_);
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop() >= param1.width)
                                                                                 {
                                                                                    addr240:
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr177);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                                 addr273:
                                                                                 _loc6_ = uint(param1.getPixel(_loc7_,_loc5_));
                                                                                 §§goto(addr274);
                                                                              }
                                                                              addr280:
                                                                              _loc7_ = §§pop();
                                                                              addr291:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr249);
                                                                              }
                                                                              if(!param1.transparent)
                                                                              {
                                                                                 addr279:
                                                                                 §§goto(addr280);
                                                                                 §§push(0);
                                                                              }
                                                                              _loc7_ = 0;
                                                                              §§goto(addr172);
                                                                              addr299:
                                                                           }
                                                                           §§goto(addr279);
                                                                        }
                                                                        _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                        _loc7_++;
                                                                        §§goto(addr193);
                                                                        addr232:
                                                                        addr215:
                                                                     }
                                                                     §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               return _loc2_;
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr177);
                                    }
                                    _loc4_.writeByte(0);
                                    §§goto(addr299);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr280);
                           }
                           §§goto(addr172);
                        }
                        else
                        {
                           §§goto(addr78);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      private static function §#^§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc11_ || param1)
         {
            if(!§<!J§)
            {
               loop0:
               while(true)
               {
                  §<!J§ = true;
                  while(true)
                  {
                     §,&§ = [];
                     loop2:
                     while(!(_loc12_ && §2!%§))
                     {
                        while(true)
                        {
                           _loc9_ = 0;
                           if(!_loc12_)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(_loc9_);
                           if(_loc11_ || §2!%§)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(256);
                                 addr260:
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       addr261:
                                       §§push(0);
                                    }
                                    else
                                    {
                                       §§push(_loc9_);
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          addr222:
                                          addr156:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             addr223:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc12_ && §2!%§))
                                                {
                                                   §§push(uint(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      addr206:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr205:
                                                }
                                                addr263:
                                                var _loc4_:* = §§pop();
                                                if(_loc11_ || param3)
                                                {
                                                   if(param3 != null)
                                                   {
                                                      if(_loc11_ || §2!%§)
                                                      {
                                                         §§push(uint(param3.length));
                                                         if(_loc11_ || §2!%§)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!(_loc12_ && §2!%§))
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
                                                            if(!(_loc12_ && §2!%§))
                                                            {
                                                               if(param3 != null)
                                                               {
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     param1.writeBytes(param3);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         var _loc6_:uint = param1.position;
                                                         if(_loc11_ || §2!%§)
                                                         {
                                                            param1.position = _loc5_;
                                                            if(_loc11_)
                                                            {
                                                               addr347:
                                                               _loc8_ = uint(4294967295);
                                                            }
                                                            var _loc7_:int = 0;
                                                            if(_loc11_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc7_ >= _loc6_ - _loc5_)
                                                                  {
                                                                     while(!_loc12_)
                                                                     {
                                                                        §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr441:
                                                                           _loc8_ = §§pop();
                                                                           break;
                                                                        }
                                                                        _loc8_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           param1.position = _loc6_;
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                     _loc7_++;
                                                                     continue;
                                                                  }
                                                                  §§push(uint(uint(§,&§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                  §§goto(addr441);
                                                               }
                                                            }
                                                            addr386:
                                                            while(true)
                                                            {
                                                               param1.writeUnsignedInt(_loc8_);
                                                               if(!_loc12_)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!(_loc12_ && §2!%§))
                                                                     {
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr347);
                                                      }
                                                   }
                                                }
                                                §§goto(addr299);
                                             }
                                          }
                                          if(!(_loc11_ || param1))
                                          {
                                             continue;
                                          }
                                          §§push(1);
                                          if(!(_loc11_ || param2))
                                          {
                                             continue loop11;
                                          }
                                          §§push(§§pop() & §§pop());
                                          if(!_loc12_)
                                          {
                                             if(§§pop())
                                             {
                                                addr175:
                                                §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                loop20:
                                                while(!_loc12_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc12_ && §2!%§))
                                                            {
                                                               addr137:
                                                               _loc10_ = uint(§§pop() + 1);
                                                               addr138:
                                                               continue loop10;
                                                               addr136:
                                                            }
                                                            continue loop20;
                                                            §§goto(addr194);
                                                         }
                                                         addr194:
                                                         addr124:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                   §§push(uint(§§pop()));
                                                }
                                                §§goto(addr222);
                                                addr187:
                                             }
                                             else
                                             {
                                                addr148:
                                                _loc8_ = uint(uint(_loc8_ >>> 1));
                                                addr149:
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr262);
                                       }
                                    }
                                    §§goto(addr262);
                                 }
                              }
                           }
                           §§goto(addr263);
                        }
                     }
                  }
               }
            }
            §§goto(addr261);
         }
         §§goto(addr244);
      }
   }
}
