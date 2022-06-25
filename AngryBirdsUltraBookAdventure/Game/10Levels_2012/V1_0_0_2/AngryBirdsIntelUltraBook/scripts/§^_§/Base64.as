package §^_§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §'+§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'+§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         return §6!s§(_loc2_);
      }
      
      public static function §6!s§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc9_ || Base64)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!(_loc8_ && _loc3_))
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
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          addr317:
                                          do
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!_loc9_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          while(!_loc8_);
                                          
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                          loop29:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             loop30:
                                             while(true)
                                             {
                                                §§push(§§pop() + 1);
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      _loc5_ = §§pop();
                                                      break;
                                                   }
                                                   addr355:
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= _loc4_.length)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + §'+§.charAt(_loc4_[_loc7_]));
                                                      }
                                                      _loc2_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop29;
                                                         }
                                                         §§push(_loc7_);
                                                         if(_loc8_)
                                                         {
                                                            continue loop23;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            if(!(_loc9_ || _loc2_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc9_ || Base64))
                                                            {
                                                               continue loop30;
                                                            }
                                                            §§push(§§pop() + 1);
                                                            if(_loc9_ || Base64)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               addr91:
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  if(_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  §§goto(addr91);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(uint(§§pop()));
                                                                  break;
                                                               }
                                                               continue loop22;
                                                            }
                                                            if(_loc8_ && param1)
                                                            {
                                                               continue loop2;
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               addr207:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr140:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           _loc4_[_loc6_ + 1] = 64;
                                                                           break loop23;
                                                                           addr146:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           if(_loc8_ && Base64)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr224:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               addr138:
                                                            }
                                                            while(_loc9_ || _loc2_)
                                                            {
                                                               §§goto(addr138);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr224);
                                                               §§goto(addr225);
                                                            }
                                                            addr225:
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      continue loop30;
                                                   }
                                                   while(_loc9_)
                                                   {
                                                      §§goto(addr191);
                                                      §§push(_loc6_);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          addr349:
                                       }
                                       while(true)
                                       {
                                          _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                          §§goto(addr309);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr349);
         }
         return _loc2_;
      }
      
      public static function §6!p§(param1:String) : String
      {
         var _loc2_:ByteArray = §@!$§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §@!$§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
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
            if(!(_loc8_ && _loc3_))
            {
               if(!(_loc8_ && _loc2_))
               {
                  if(§§pop() >= param1.length)
                  {
                     if(_loc9_)
                     {
                        if(!_loc8_)
                        {
                           _loc2_.position = 0;
                           addr72:
                           if(_loc9_ || Base64)
                           {
                              break;
                           }
                           loop28:
                           while(true)
                           {
                              §§push(_loc6_);
                              loop29:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 loop25:
                                 while(true)
                                 {
                                    §§push(uint(§§pop()));
                                    loop26:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          _loc6_ = §§pop();
                                          loop22:
                                          while(true)
                                          {
                                             addr314:
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr316:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(4);
                                                   addr317:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr338:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  addr281:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() + _loc6_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < param1.length);
                                                                           if(_loc9_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop15;
                                                                        addr290:
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                            addr337:
                                                         }
                                                         break loop13;
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break loop12;
                                                   }
                                                   _loc3_[_loc6_] = §'+§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                   continue loop28;
                                                }
                                                continue loop22;
                                             }
                                             while(true)
                                             {
                                                _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                loop9:
                                                while(true)
                                                {
                                                   _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop27:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           if(§§pop() >= _loc4_.length)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc8_ && Base64)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc8_ && _loc3_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(_loc8_ && Base64)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       addr124:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          if(!(_loc9_ || _loc3_))
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          §§push(4);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   break loop7;
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                §§push(uint(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            addr366:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr314);
                                                                                                            }
                                                                                                         }
                                                                                                         addr204:
                                                                                                      }
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr180:
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr184);
                                                                              }
                                                                              loop1:
                                                                              while(!(_loc9_ || _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_ && _loc2_)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       §§goto(addr180);
                                                                                       §§push(§§pop() + 1);
                                                                                       addr144:
                                                                                       if(!(_loc8_ && Base64))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr223:
                                                                                    _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr152:
                                                                           }
                                                                           if(_loc3_[_loc7_ + 1] != 64)
                                                                           {
                                                                              §§goto(addr223);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr144);
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               addr365:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                               }
                                                            }
                                                            addr364:
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr365);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr364);
               }
               §§goto(addr124);
            }
            §§goto(addr142);
         }
         return _loc2_;
      }
   }
}
