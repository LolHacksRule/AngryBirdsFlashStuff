package §6!A§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §`!4§
   {
      
      private static var §6"D§:Array;
      
      private static var §[w§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[w§ = false;
         }
      }
      
      public function §`!4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         if(_loc9_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc9_ || §`!4§)
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!(_loc8_ && _loc2_))
         {
            _loc3_.writeInt(param1.width);
            loop0:
            while(true)
            {
               _loc3_.writeInt(param1.height);
               addr89:
               while(true)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr63);
         }
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:int = 0;
         loop6:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc8_ && _loc2_))
            {
               if(!(_loc8_ && _loc2_))
               {
                  if(§§pop() >= param1.height)
                  {
                     if(!(_loc8_ && param1))
                     {
                        _loc4_.compress();
                     }
                     loop7:
                     while(_loc9_ || param1)
                     {
                        if(_loc9_ || param1)
                        {
                           if(_loc9_)
                           {
                              §`U§(_loc2_,1229209940,_loc4_);
                              while(_loc9_)
                              {
                                 §`U§(_loc2_,1229278788,null);
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    break loop6;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    _loc7_++;
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr189:
                                                while(true)
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      if(§§pop() >= param1.width)
                                                      {
                                                         if(_loc8_ && _loc3_)
                                                         {
                                                            break loop7;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            if(_loc8_ && _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!param1.transparent)
                                                                  {
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                        }
                                                                        addr328:
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(§§pop() < param1.width)
                                                                              {
                                                                                 §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                                                                 break;
                                                                              }
                                                                              addr271:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr274:
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 addr275:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 _loc7_++;
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              addr293:
                                                                              addr274:
                                                                           }
                                                                        }
                                                                        addr304:
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr305:
                                                                           while(true)
                                                                           {
                                                                              _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                              §§goto(addr293);
                                                                              continue loop23;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr274);
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               addr335:
                                                            }
                                                            _loc5_++;
                                                            break loop7;
                                                         }
                                                         continue loop10;
                                                      }
                                                      §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                      if(!_loc8_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(_loc8_ && _loc2_)
                                                         {
                                                            §§goto(addr280);
                                                         }
                                                         continue loop9;
                                                         addr251:
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr274);
                                                }
                                             }
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                              }
                              continue;
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr275);
                     }
                     continue;
                  }
                  _loc4_.writeByte(0);
                  §§goto(addr335);
               }
               §§goto(addr328);
            }
            §§goto(addr189);
         }
         return _loc2_;
      }
      
      private static function §`U§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_ || param1)
         {
            if(!§[w§)
            {
               loop0:
               while(true)
               {
                  §[w§ = true;
                  loop1:
                  while(true)
                  {
                     §6"D§ = [];
                     do
                     {
                        if(!_loc11_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        _loc9_ = uint(0);
                     }
                     while(_loc11_ && §`!4§);
                     
                     addr201:
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
                                    if(_loc12_)
                                    {
                                       §§push(uint(§§pop()));
                                       loop13:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc12_ || param1)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!(_loc11_ && param3))
                                                {
                                                   _loc10_ = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!_loc12_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            §§push(8);
                                                            if(_loc11_ && §`!4§)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(_loc12_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  loop17:
                                                                  do
                                                                  {
                                                                     §6"D§[_loc9_] = _loc8_;
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc11_ && param3)
                                                                              {
                                                                                 addr110:
                                                                                 §§push(uint(§§pop()));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    addr114:
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(uint(§§pop()));
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr237:
                                                                                    §§push(0);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr237:
                                                                                 }
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue;
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
                                                                                       if(!(_loc11_ && §`!4§))
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             addr270:
                                                                                             param1.writeUnsignedInt(_loc4_);
                                                                                             addr273:
                                                                                             §§push(uint(param1.position));
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       var _loc5_:* = §§pop();
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          param1.writeUnsignedInt(param2);
                                                                                          if(_loc12_ || param2)
                                                                                          {
                                                                                             addr289:
                                                                                             if(param3 != null)
                                                                                             {
                                                                                                if(_loc12_ || param2)
                                                                                                {
                                                                                                   param1.writeBytes(param3);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          var _loc6_:uint = param1.position;
                                                                                          if(_loc12_ || param3)
                                                                                          {
                                                                                             param1.position = _loc5_;
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr318:
                                                                                                _loc8_ = uint(4294967295);
                                                                                             }
                                                                                             var _loc7_:int = 0;
                                                                                             if(_loc12_ || §`!4§)
                                                                                             {
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                         if(!(_loc11_ && §`!4§))
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            do
                                                                                                            {
                                                                                                               param1.position = _loc6_;
                                                                                                               do
                                                                                                               {
                                                                                                                  param1.writeUnsignedInt(_loc8_);
                                                                                                               }
                                                                                                               while(!(_loc12_ || param1));
                                                                                                               
                                                                                                            }
                                                                                                            while(!(_loc12_ || §`!4§));
                                                                                                            
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr388:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                            }
                                                                                                            addr422:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_++;
                                                                                                            §§goto(addr388);
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      return;
                                                                                                      addr369:
                                                                                                   }
                                                                                                   §§push(uint(uint(§6"D§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr273);
                                                                                 }
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr127:
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       addr135:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          if(_loc12_ || param3)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                                                break loop19;
                                                                                             }
                                                                                             §§goto(addr237);
                                                                                          }
                                                                                          break loop18;
                                                                                       }
                                                                                    }
                                                                                    addr134:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break loop19;
                                                                                       }
                                                                                       §§goto(addr110);
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    break;
                                                                                    addr161:
                                                                                 }
                                                                                 §§goto(addr110);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 addr159:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr161);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr110);
                                                                        }
                                                                        §§goto(addr127);
                                                                     }
                                                                     addr238:
                                                                     §§goto(addr239);
                                                                  }
                                                                  while(!_loc12_);
                                                                  
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc8_);
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr110);
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr238);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr237);
                              }
                           }
                        }
                        §§goto(addr239);
                     }
                  }
               }
            }
            §§goto(addr237);
         }
         §§goto(addr201);
      }
   }
}
