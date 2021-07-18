package §@,§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §?!+§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!+§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(!_loc1_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         throw new Error("Base64 class is static container only");
      }
      
      public static function encode(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc4_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §4O§(_loc2_);
      }
      
      public static function §4O§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc8_ && Base64))
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
                                          loop24:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!_loc9_)
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
                                                      loop9:
                                                      while(_loc9_ || _loc2_)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         loop10:
                                                         while(!(_loc8_ && param1))
                                                         {
                                                            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(_loc8_ && _loc3_)
                                                               {
                                                                  continue loop24;
                                                               }
                                                               _loc4_[3] = _loc3_[2] & 63;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(uint(_loc3_.length));
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop14:
                                                                     while(_loc9_)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           loop16:
                                                                           while(!_loc8_)
                                                                           {
                                                                              §§push(3);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    loop18:
                                                                                    while(_loc9_ || _loc3_)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= _loc4_.length)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop() + §?!+§.charAt(_loc4_[_loc7_]));
                                                                                                }
                                                                                                _loc2_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            addr80:
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               addr218:
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr353:
                                                                                                               addr354:
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr172:
                                                                                                            }
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      addr215:
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr218);
                                                                                                         §§push(uint(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr80);
                                                                                                   addr113:
                                                                                                   if(!(_loc9_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc8_ && param1)
                                                                                                   {
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 _loc4_[_loc6_ + 1] = 64;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        if(!(_loc9_ || _loc2_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr146);
                                                                        continue loop10;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            continue loop24;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                   if(!(_loc9_ || _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(_loc5_);
                                                }
                                                §§goto(addr353);
                                                continue loop24;
                                             }
                                          }
                                       }
                                       addr349:
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr349);
                              }
                           }
                        }
                     }
                  }
                  §§push(0);
                  if(_loc8_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr172);
                  §§push(uint(§§pop()));
               }
            }
            §§goto(addr129);
         }
         return _loc2_;
      }
      
      public static function §,§(param1:String) : String
      {
         var _loc2_:ByteArray = §[$§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §[$§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:uint = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc8_ && _loc3_))
            {
               if(!_loc8_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!_loc8_)
                     {
                        if(_loc9_ || param1)
                        {
                           if(_loc9_ || Base64)
                           {
                              _loc2_.position = 0;
                              addr79:
                              if(!(_loc9_ || Base64))
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    break;
                                 }
                                 loop24:
                                 while(true)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(_loc7_);
                                       loop25:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + 1);
                                             loop26:
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || param1)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc8_ && Base64)
                                                                  {
                                                                     continue loop27;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(§§pop() >= _loc4_.length)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 if(_loc9_ || Base64)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       addr116:
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                §§push(4);
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      addr154:
                                                                                                      _loc5_ = §§pop();
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr337:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(uint(§§pop()));
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  addr321:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(4);
                                                                                                                     addr322:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(!§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                                    addr316:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             addr284:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + _loc6_);
                                                                                                                                                addr286:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < param1.length);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                          addr326:
                                                                                                                                       }
                                                                                                                                       _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc8_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(uint(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop5;
                                                                                                                                                      }
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      break loop5;
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                continue loop16;
                                                                                                                                                addr236:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr374:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(uint(§§pop()));
                                                                                                                                                break loop2;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             addr376:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr318);
                                                                                                                                       }
                                                                                                                                       addr318:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc3_[_loc6_] = §?!+§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                              §§goto(addr370);
                                                                                                                              addr298:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr326);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                    }
                                                                                    addr114:
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           addr198:
                                                                        }
                                                                        §§goto(addr114);
                                                                     }
                                                                     addr112:
                                                                  }
                                                                  else if(_loc3_[_loc7_ + 1] != 64)
                                                                  {
                                                                     _loc2_.writeByte(_loc4_[_loc7_]);
                                                                     continue loop24;
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            addr329:
                                                            while(true)
                                                            {
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§goto(addr337);
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               §§goto(addr375);
                                                               §§goto(addr370);
                                                            }
                                                         }
                                                         addr187:
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                }
                                                §§goto(addr286);
                                             }
                                          }
                                          §§goto(addr329);
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr374);
               }
               §§goto(addr116);
            }
            §§goto(addr154);
         }
         return _loc2_;
      }
   }
}
