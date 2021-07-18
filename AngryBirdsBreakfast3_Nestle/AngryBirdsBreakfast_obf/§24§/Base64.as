package §24§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §=!x§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!x§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new Error("Base64 class is static container only");
      }
      
      public static function encode(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §[!u§(_loc2_);
      }
      
      public static function §[!u§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!_loc8_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(_loc9_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(uint(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc5_ = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop5:
                           while(true)
                           {
                              §§push(3);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop22:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!(_loc9_ || _loc2_))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                      while(true)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         loop10:
                                                         while(!_loc8_)
                                                         {
                                                            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                            while(true)
                                                            {
                                                               _loc4_[3] = _loc3_[2] & 63;
                                                               if(_loc8_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(_loc8_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(uint(_loc3_.length));
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ || _loc3_))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!(_loc9_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(3);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       _loc4_[_loc6_ + 1] = 64;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                                if(_loc9_ || Base64)
                                                                                                {
                                                                                                   addr350:
                                                                                                   if(_loc9_ || Base64)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr320:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr350:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= _loc4_.length)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + §=!x§.charAt(_loc4_[_loc7_]));
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      §§push(uint(§§pop()));
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                continue loop5;
                                                                                                §§push(§§pop() + 1);
                                                                                                break loop14;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(uint(§§pop()));
                                                                                       if(!(_loc8_ && Base64))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc8_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr95);
                                                                                       }
                                                                                       §§goto(addr350);
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr213);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        continue loop4;
                                                                     }
                                                                     addr334:
                                                                     §§push(_loc5_);
                                                                     §§goto(addr320);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                }
                                                §§goto(addr334);
                                                continue loop22;
                                             }
                                          }
                                       }
                                       addr316:
                                    }
                                    §§goto(addr295);
                                 }
                                 §§goto(addr316);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr93);
         }
         return _loc2_;
      }
      
      public static function §&!Z§(param1:String) : String
      {
         var _loc2_:ByteArray = §`!q§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §`!q§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:* = uint(0);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc9_)
            {
               if(!_loc9_)
               {
                  if(!(_loc9_ && Base64))
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(!_loc9_)
                        {
                           _loc2_.position = 0;
                        }
                        if(_loc8_)
                        {
                           if(_loc8_ || param1)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc8_ || _loc3_)
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§pop() + _loc6_);
                                          loop3:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() < param1.length);
                                                if(!_loc8_)
                                                {
                                                   continue loop1;
                                                }
                                                if(_loc8_)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop5:
                                                         while(!_loc9_)
                                                         {
                                                            _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                            while(true)
                                                            {
                                                               _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                               while(true)
                                                               {
                                                                  _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                  addr255:
                                                                  addr354:
                                                                  addr225:
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        continue loop2;
                                                                     }
                                                                     addr353:
                                                                     while(true)
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        break loop10;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                  }
                                                                  loop12:
                                                                  while(_loc8_ || Base64)
                                                                  {
                                                                     if(!(_loc9_ && Base64))
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           addr94:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop() >= _loc4_.length)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(4);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§push(uint(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && Base64))
                                                                                                            {
                                                                                                               addr143:
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  while(_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr255);
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  addr151:
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         addr136:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(uint(§§pop()));
                                                                                                         }
                                                                                                         addr159:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         addr161:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      addr314:
                                                                                                      while(!§§pop())
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr313:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      addr321:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                         addr322:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            break loop5;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr320:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr136);
                                                                                          }
                                                                                          addr101:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr199:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             addr156:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr159);
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr199:
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    addr99:
                                                                                 }
                                                                                 else if(_loc3_[_loc7_ + 1] == 64)
                                                                                 {
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§goto(addr101);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr199);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                 }
                                                                                 §§goto(addr199);
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr347:
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr320);
                                                                           §§push(_loc6_);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr310:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           addr312:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr313);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_[_loc6_] = §=!x§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                         §§goto(addr347);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr321);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr309);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr353);
                  }
                  §§goto(addr322);
               }
               §§goto(addr94);
            }
            §§goto(addr136);
         }
         return _loc2_;
      }
   }
}
