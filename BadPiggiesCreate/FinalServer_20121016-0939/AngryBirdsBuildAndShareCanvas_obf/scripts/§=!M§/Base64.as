package §=!M§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const § !e§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !e§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc2_ && _loc1_);
            
         }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §<_§(_loc2_);
      }
      
      public static function §<_§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:uint = 0;
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc9_ && param1))
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(_loc8_ || _loc3_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(uint(§§pop()));
                  if(!(_loc9_ && param1))
                  {
                     _loc5_ = §§pop();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop4:
                           while(true)
                           {
                              §§push(3);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop21:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                   break;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                      loop9:
                                                      while(true)
                                                      {
                                                         _loc4_[3] = _loc3_[2] & 63;
                                                         while(true)
                                                         {
                                                            §§push(uint(_loc3_.length));
                                                            loop11:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr249:
                                                               while(_loc8_)
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr155:
                                                                     loop14:
                                                                     while(_loc8_)
                                                                     {
                                                                        §§push(3);
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        addr229:
                                                                        _loc4_[_loc6_ + 1] = 64;
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && Base64))
                                                                           {
                                                                              if(_loc8_ || Base64)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 break loop14;
                                                                                 addr243:
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     while(_loc8_)
                                                                     {
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(§§pop() + 1);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && _loc2_))
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 addr217:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                              }
                                                                              addr216:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                                 addr341:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    break loop8;
                                                                                 }
                                                                              }
                                                                              addr340:
                                                                           }
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr111:
                                                            if(_loc9_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!(_loc8_ || _loc3_))
                                                            {
                                                               break loop6;
                                                            }
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr129:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr374:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() < _loc4_.length)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + § !e§.charAt(_loc4_[_loc7_]));
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop21;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                       addr335:
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr335);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr374);
                  }
                  §§goto(addr279);
               }
            }
            §§goto(addr127);
         }
         return _loc2_;
      }
      
      public static function §0!L§(param1:String) : String
      {
         var _loc2_:ByteArray = §[!P§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §[!P§(param1:String) : ByteArray
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
            if(_loc8_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc8_ || param1)
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    _loc2_.position = 0;
                                    addr94:
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    loop30:
                                    while(true)
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(§§pop() >= _loc4_.length)
                                             {
                                                while(true)
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr125:
                                                            while(true)
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  addr132:
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || Base64)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(4);
                                                                                                addr313:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         addr316:
                                                                                                      }
                                                                                                      loop14:
                                                                                                      while(!§§pop())
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                               addr277:
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        addr240:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop()));
                                                                                                                        }
                                                                                                                        addr358:
                                                                                                                     }
                                                                                                                     addr198:
                                                                                                                     while(_loc8_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr360:
                                                                                                                  addr220:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc9_ && Base64)
                                                                                                                        {
                                                                                                                           break loop20;
                                                                                                                           addr159:
                                                                                                                           addr280:
                                                                                                                        }
                                                                                                                        §§push(_loc7_);
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           while(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    addr183:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       §§goto(addr198);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr182:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr321:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 addr321:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < param1.length);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              §§goto(addr316);
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr284);
                                                                                                                           §§push(§§pop() + _loc6_);
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr333:
                                                                                                      addr354:
                                                                                                      _loc3_[_loc6_] = § !e§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         addr320:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr321);
                                                                                                            §§goto(addr132);
                                                                                                         }
                                                                                                         §§goto(addr333);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           continue loop0;
                                                                           addr146:
                                                                        }
                                                                        §§goto(addr162);
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr320);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr159);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr220);
                                                   }
                                                }
                                                addr109:
                                             }
                                             else if(_loc3_[_loc7_ + 1] != 64)
                                             {
                                                _loc2_.writeByte(_loc4_[_loc7_]);
                                                §§goto(addr220);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr125);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr280);
                                       }
                                    }
                                 }
                                 §§goto(addr354);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr358);
                  }
                  §§goto(addr182);
               }
               §§goto(addr125);
            }
            §§goto(addr146);
         }
         return _loc2_;
      }
   }
}
