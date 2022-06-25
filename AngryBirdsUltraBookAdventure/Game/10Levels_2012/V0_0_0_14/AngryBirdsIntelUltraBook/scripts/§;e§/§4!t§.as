package §;e§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §4!t§
   {
      
      private static var § U§:Array;
      
      private static var §"!L§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §"!L§ = false;
         }
      }
      
      public function §4!t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc8_ && §4!t§))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!(_loc8_ && §4!t§))
         {
            _loc3_.writeInt(param1.width);
            while(true)
            {
               _loc3_.writeInt(param1.height);
               loop2:
               while(_loc9_ || param1)
               {
                  loop3:
                  while(true)
                  {
                     _loc3_.writeByte(0);
                     while(!_loc8_)
                     {
                        §!!B§(_loc2_,1229472850,_loc3_);
                        if(_loc9_ || param1)
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private static function §!!B§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_ || param2)
         {
            if(!§"!L§)
            {
               loop0:
               while(true)
               {
                  §"!L§ = true;
                  addr231:
                  while(true)
                  {
                     § U§ = [];
                     while(!_loc11_)
                     {
                        continue loop0;
                        _loc9_ = uint(0);
                        if(_loc11_)
                        {
                           continue;
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
                                       if(_loc12_ || param2)
                                       {
                                          §§push(uint(§§pop()));
                                          if(_loc11_)
                                          {
                                          }
                                          addr239:
                                          var _loc4_:* = §§pop();
                                          if(_loc12_)
                                          {
                                             if(param3 != null)
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(uint(param3.length));
                                                   if(_loc12_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(_loc12_)
                                                      {
                                                         addr255:
                                                         param1.writeUnsignedInt(_loc4_);
                                                         addr258:
                                                         §§push(uint(param1.position));
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      param1.writeUnsignedInt(param2);
                                                      if(_loc12_ || param3)
                                                      {
                                                         addr274:
                                                         if(param3 != null)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               addr279:
                                                               param1.writeBytes(param3);
                                                            }
                                                         }
                                                         var _loc6_:uint = param1.position;
                                                         if(!_loc11_)
                                                         {
                                                            param1.position = _loc5_;
                                                            if(_loc12_)
                                                            {
                                                               addr293:
                                                               _loc8_ = uint(4294967295);
                                                            }
                                                            var _loc7_:int = 0;
                                                            if(_loc12_ || param3)
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ >= _loc6_ - _loc5_)
                                                                  {
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(_loc12_ || §4!t§)
                                                                        {
                                                                           §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 param1.position = _loc6_;
                                                                                 while(_loc12_)
                                                                                 {
                                                                                    param1.writeUnsignedInt(_loc8_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc12_ || param3)
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                              addr372:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr397:
                                                                              _loc8_ = §§pop();
                                                                           }
                                                                        }
                                                                        _loc7_++;
                                                                        continue;
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(uint(uint(§ U§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr274);
                                                }
                                             }
                                          }
                                          §§goto(addr255);
                                       }
                                       _loc8_ = §§pop();
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc12_ || §4!t§)
                                          {
                                             §§push(uint(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   addr79:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc12_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         §§push(8);
                                                         if(!_loc12_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  § U§[_loc9_] = _loc8_;
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              _loc9_ = §§pop();
                                                                              if(_loc12_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr237:
                                                                              addr237:
                                                                              addr238:
                                                                              addr238:
                                                                              §§goto(addr239);
                                                                              §§push(uint(0));
                                                                           }
                                                                           else
                                                                           {
                                                                              addr109:
                                                                              _loc10_ = uint(§§pop());
                                                                              addr108:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_ && §4!t§)
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             while(!_loc11_)
                                                                                             {
                                                                                                §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   addr165:
                                                                                                   _loc8_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr165);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr239);
                                                                                                }
                                                                                             }
                                                                                             continue loop12;
                                                                                             addr147:
                                                                                          }
                                                                                          addr125:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                             §§goto(addr125);
                                                                                          }
                                                                                       }
                                                                                       addr123:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(_loc11_ && param1)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§push(§§pop() & §§pop());
                                                                                          if(_loc12_ || §4!t§)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr147);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                       }
                                                                                       addr130:
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                              }
                                                                              §§goto(addr108);
                                                                           }
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  addr97:
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc8_);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          §§goto(addr238);
                                          if(!(_loc12_ || §4!t§))
                                          {
                                             continue;
                                          }
                                          if(true)
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr79);
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
            }
            §§goto(addr237);
         }
         §§goto(addr231);
      }
   }
}
