package §7!J§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §^[§
   {
      
      private static var §&!R§:Array;
      
      private static var §,!Z§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^[§)
         {
            §,!Z§ = false;
         }
      }
      
      public function §^[§()
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
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc8_ || _loc3_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc8_)
            {
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!(_loc9_ && param1))
            {
               _loc3_.writeInt(param1.width);
            }
            loop0:
            while(true)
            {
               _loc3_.writeInt(param1.height);
               addr93:
               while(true)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  continue loop0;
               }
            }
         }
         §§goto(addr37);
      }
      
      private static function §8!C§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc12_)
         {
            if(!§,!Z§)
            {
               if(!_loc12_)
               {
                  §,!Z§ = true;
               }
               loop0:
               while(true)
               {
                  §&!R§ = [];
                  do
                  {
                     if(!(_loc12_ && §^[§))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(_loc9_ = uint(0), !(_loc11_ || §^[§));
                  
                  addr175:
                  loop5:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!(_loc12_ && param2))
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
                                       if(_loc11_)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(uint(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc11_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc12_)
                                                      {
                                                         §§push(8);
                                                         if(_loc11_)
                                                         {
                                                            if(_loc11_ || param1)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(_loc11_ || §^[§)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              §&!R§[_loc9_] = _loc8_;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(!(_loc11_ || param1))
                                                                                             {
                                                                                                addr216:
                                                                                                §§push(0);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr216:
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop5;
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                       }
                                                                                       addr92:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             addr98:
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       addr146:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr218:
                                                                                 var _loc4_:* = §§pop();
                                                                                 if(!(_loc12_ && §^[§))
                                                                                 {
                                                                                    if(param3 != null)
                                                                                    {
                                                                                       if(!(_loc12_ && param3))
                                                                                       {
                                                                                          §§push(uint(param3.length));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr244:
                                                                                                param1.writeUnsignedInt(_loc4_);
                                                                                                addr247:
                                                                                                §§push(uint(param1.position));
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             param1.writeUnsignedInt(param2);
                                                                                             if(!(_loc12_ && param2))
                                                                                             {
                                                                                                if(param3 != null)
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      addr268:
                                                                                                      param1.writeBytes(param3);
                                                                                                   }
                                                                                                }
                                                                                                var _loc6_:uint = param1.position;
                                                                                                if(!(_loc12_ && param3))
                                                                                                {
                                                                                                   param1.position = _loc5_;
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      _loc8_ = uint(4294967295);
                                                                                                   }
                                                                                                }
                                                                                                var _loc7_:int = 0;
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_ >= _loc6_ - _loc5_)
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.position = _loc6_;
                                                                                                                     while(!(_loc12_ && param1))
                                                                                                                     {
                                                                                                                        param1.writeUnsignedInt(_loc8_);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr351:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr376:
                                                                                                                  _loc8_ = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                            _loc7_++;
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(uint(uint(§&!R§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                                      }
                                                                                                      §§goto(addr376);
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr244);
                                                                                 addr86:
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr148);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr111:
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr92);
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     §§goto(addr98);
                                                                  }
                                                                  §§goto(addr86);
                                                               }
                                                               else
                                                               {
                                                                  addr118:
                                                                  §§push(_loc8_);
                                                                  if(!(_loc11_ || param2))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§push(1);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§push(§§pop() & §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr146);
                                                                     §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr216);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(uint(uint(_loc8_ >>> 1)));
                                                                  if(!_loc12_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     §§goto(addr111);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr218);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr216);
                           }
                        }
                     }
                     §§goto(addr218);
                  }
               }
            }
            §§goto(addr216);
         }
         §§goto(addr175);
      }
   }
}
