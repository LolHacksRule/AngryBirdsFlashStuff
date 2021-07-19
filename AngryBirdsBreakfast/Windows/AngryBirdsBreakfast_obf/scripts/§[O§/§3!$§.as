package §[O§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §3!$§
   {
      
      private static var §7"§:Array;
      
      private static var §+B§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §3!$§)
         {
            §+B§ = false;
         }
      }
      
      public function §3!$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(_loc8_ || _loc2_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc9_)
            {
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!(_loc9_ && _loc2_))
            {
               _loc3_.writeInt(param1.width);
               loop0:
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     while(_loc8_)
                     {
                        while(!(_loc9_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr67);
            }
         }
         §§goto(addr37);
      }
      
      private static function §2!5§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc11_ || param1)
         {
            if(!§+B§)
            {
               loop0:
               while(true)
               {
                  §+B§ = true;
                  addr240:
                  while(true)
                  {
                     §7"§ = [];
                     do
                     {
                        _loc9_ = 0;
                     }
                     while(_loc12_);
                     
                     if(!(_loc12_ && §3!$§))
                     {
                        if(_loc11_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!_loc12_)
                     {
                        §§push(256);
                        loop10:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc9_);
                              loop11:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 loop12:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc12_ && param1))
                                       {
                                          §§push(uint(§§pop()));
                                          loop14:
                                          for(; _loc11_ || param2; if(!(_loc12_ && §3!$§))
                                          {
                                             continue loop11;
                                          })
                                          {
                                             _loc10_ = §§pop();
                                             while(true)
                                             {
                                                addr66:
                                                addr248:
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   if(_loc11_)
                                                   {
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         continue loop14;
                                                      }
                                                      addr128:
                                                      _loc8_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               addr111:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  addr112:
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     addr113:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           addr176:
                                                                           while(true)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              addr177:
                                                                              while(true)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                           addr176:
                                                                        }
                                                                        _loc10_ = §§pop();
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(uint(0));
                                                                        }
                                                                        else
                                                                        {
                                                                           addr246:
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr164:
                                                            §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   break;
                                                }
                                                addr248:
                                                var _loc4_:* = §§pop();
                                                if(!_loc12_)
                                                {
                                                   if(param3 != null)
                                                   {
                                                      if(_loc11_ || param2)
                                                      {
                                                         addr261:
                                                         §§push(uint(param3.length));
                                                         if(_loc11_ || param3)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               addr274:
                                                               param1.writeUnsignedInt(_loc4_);
                                                            }
                                                            §§push(uint(param1.position));
                                                         }
                                                         var _loc5_:* = §§pop();
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            param1.writeUnsignedInt(param2);
                                                            if(_loc11_)
                                                            {
                                                               if(param3 != null)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     param1.writeBytes(param3);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         var _loc6_:uint = param1.position;
                                                         if(_loc11_)
                                                         {
                                                            param1.position = _loc5_;
                                                            if(_loc11_ || param3)
                                                            {
                                                               addr317:
                                                               _loc8_ = uint(4294967295);
                                                            }
                                                            var _loc7_:int = 0;
                                                            if(_loc11_)
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ >= _loc6_ - _loc5_)
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
                                                                              while(_loc11_ || param1)
                                                                              {
                                                                                 param1.writeUnsignedInt(_loc8_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_ && param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_++;
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr412:
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr369:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr411:
                                                                           _loc8_ = §§pop();
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(uint(uint(§7"§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               return;
                                                               addr350:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr261);
                                             }
                                          }
                                          continue loop12;
                                       }
                                       §§goto(addr246);
                                    }
                                 }
                                 if(!(_loc11_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(8);
                                 if(_loc12_)
                                 {
                                    continue loop10;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    while(true)
                                    {
                                       §7"§[_loc9_] = _loc8_;
                                       if(!(_loc12_ && param3))
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(_loc9_);
                                             if(!_loc12_)
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc11_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr113);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                §§goto(addr111);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr206);
                                       }
                                       break;
                                    }
                                    §§goto(addr246);
                                 }
                                 §§push(_loc8_);
                                 if(_loc11_ || §3!$§)
                                 {
                                    §§push(1);
                                    if(_loc12_ && param2)
                                    {
                                       continue loop10;
                                    }
                                    §§push(§§pop() & §§pop());
                                    if(_loc11_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr128);
                                       §§push(uint(uint(_loc8_ >>> 1)));
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr176);
                              }
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr248);
                  }
               }
            }
            §§goto(addr246);
         }
         §§goto(addr240);
      }
   }
}
