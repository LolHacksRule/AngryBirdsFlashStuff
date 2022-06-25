package §+!3§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §!#§
   {
      
      private static var §!2§:Array;
      
      private static var §[!T§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[!T§ = false;
         }
      }
      
      public function §!#§()
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
         if(!(_loc9_ && _loc2_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc8_ || _loc3_)
            {
               addr42:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_ || §!#§)
            {
               _loc3_.writeInt(param1.width);
            }
            while(true)
            {
               _loc3_.writeInt(param1.height);
               loop1:
               for(; _loc8_ || _loc2_; if(!(_loc8_ || _loc3_))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr79);
               },var _loc4_:ByteArray = new ByteArray(),var _loc5_:int = 0,addr155:,§§push(_loc5_),if(_loc8_)
               {
                  if(!(_loc9_ && §!#§))
                  {
                     if(!_loc9_)
                     {
                        if(§§pop() >= param1.height)
                        {
                           if(_loc8_)
                           {
                              if(!_loc9_)
                              {
                                 _loc4_.compress();
                                 addr177:
                                 if(!_loc9_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       final(_loc2_,1229209940,_loc4_);
                                       addr150:
                                       if(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             final(_loc2_,1229278788,null);
                                             if(!_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(!param1.transparent)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr297:
                                                            _loc7_ = 0;
                                                         }
                                                         addr298:
                                                         §§push(_loc7_);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() >= param1.width)
                                                            {
                                                               addr193:
                                                               _loc5_++;
                                                               addr194:
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  addr256:
                                                                  §§goto(addr298);
                                                               }
                                                               addr192:
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     addr187:
                                                                     addr189:
                                                                     if(_loc7_ >= param1.width)
                                                                     {
                                                                        §§goto(addr192);
                                                                     }
                                                                     §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                        addr227:
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc7_++;
                                                                           §§goto(addr192);
                                                                        }
                                                                        §§goto(addr187);
                                                                        addr241:
                                                                        addr253:
                                                                     }
                                                                     addr288:
                                                                     _loc6_ = §§pop();
                                                                     _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                     _loc7_++;
                                                                     §§goto(addr256);
                                                                     addr289:
                                                                     addr279:
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr227);
                                                               addr249:
                                                            }
                                                            §§goto(addr288);
                                                            §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                         }
                                                         _loc7_ = §§pop();
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr298);
                                                      §§push(0);
                                                      addr304:
                                                   }
                                                   return _loc2_;
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr177);
                        }
                        _loc4_.writeByte(0);
                        §§goto(addr304);
                     }
                     §§goto(addr297);
                  }
                  §§goto(addr298);
               },§§goto(addr189))
               {
                  _loc3_.writeUnsignedInt(134610944);
                  loop2:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        while(_loc8_)
                        {
                           final(_loc2_,1229472850,_loc3_);
                           if(_loc8_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private static function final(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc12_)
         {
            if(!§[!T§)
            {
               loop0:
               do
               {
                  §[!T§ = true;
                  while(true)
                  {
                     §!2§ = [];
                     while(_loc11_)
                     {
                        _loc9_ = uint(0);
                        if(_loc11_ || §!#§)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc12_);
               
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc11_)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(256);
                        loop11:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc9_);
                              loop12:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 if(_loc12_)
                                 {
                                    continue loop10;
                                 }
                                 _loc8_ = §§pop();
                                 loop13:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                       loop15:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop16:
                                          while(true)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                loop18:
                                                while(!_loc12_)
                                                {
                                                   §§push(8);
                                                   if(_loc11_ || §!#§)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  §!2§[_loc9_] = _loc8_;
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                        break loop18;
                                                                     }
                                                                     addr142:
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       if(!(_loc12_ && §!#§))
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          addr91:
                                                                                          addr118:
                                                                                          addr117:
                                                                                          _loc8_ = §§pop();
                                                                                          §§push(_loc10_);
                                                                                          if(_loc12_ && §!#§)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       addr223:
                                                                                       var _loc4_:* = §§pop();
                                                                                       if(!(_loc12_ && param1))
                                                                                       {
                                                                                          if(param3 != null)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                §§push(uint(param3.length));
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      addr249:
                                                                                                      param1.writeUnsignedInt(_loc4_);
                                                                                                      addr252:
                                                                                                      §§push(uint(param1.position));
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                                var _loc5_:* = §§pop();
                                                                                                if(!(_loc12_ && param2))
                                                                                                {
                                                                                                   param1.writeUnsignedInt(param2);
                                                                                                   if(_loc11_ || param3)
                                                                                                   {
                                                                                                      if(param3 != null)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            param1.writeBytes(param3);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                var _loc6_:uint = param1.position;
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   param1.position = _loc5_;
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr292:
                                                                                                      _loc8_ = uint(4294967295);
                                                                                                   }
                                                                                                   var _loc7_:int = 0;
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      loop3:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                         {
                                                                                                            if(!(_loc12_ && param1))
                                                                                                            {
                                                                                                               §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  loop5:
                                                                                                                  do
                                                                                                                  {
                                                                                                                     param1.position = _loc6_;
                                                                                                                     while(!(_loc12_ && param2))
                                                                                                                     {
                                                                                                                        param1.writeUnsignedInt(_loc8_);
                                                                                                                        if(!(_loc12_ && §!#§))
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr357:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc12_ && §!#§))
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(!_loc11_);
                                                                                                                  
                                                                                                                  return;
                                                                                                                  addr354:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr396:
                                                                                                                  _loc8_ = §§pop();
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_++;
                                                                                                                  §§goto(addr357);
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(uint(uint(§!2§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      addr330:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr330);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    §§push(uint(§§pop()));
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr221:
                                                                  break loop16;
                                                                  addr86:
                                                               }
                                                               §§goto(addr118);
                                                            }
                                                            §§goto(addr86);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc11_ || param1)
                                                            {
                                                               §§push(1);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                      }
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc11_ || param2)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr142);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr117);
                                                            §§push(uint(uint(_loc8_ >>> 1)));
                                                         }
                                                      }
                                                      break loop16;
                                                   }
                                                   continue loop11;
                                                }
                                                _loc8_ = §§pop();
                                                if(_loc11_)
                                                {
                                                   if(_loc12_ && param3)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr91);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr221);
                        }
                     }
                  }
                  §§goto(addr223);
               }
               addr202:
            }
            §§goto(addr221);
         }
         §§goto(addr202);
      }
   }
}
