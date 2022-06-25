package §6b§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §0v§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0v§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(_loc1_ && Base64);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
         return §"u§(_loc2_);
      }
      
      public static function §"u§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(_loc8_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(uint(§§pop()));
                  if(!(_loc9_ && Base64))
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(param1.bytesAvailable > 0);
                                                if(_loc8_ || Base64)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc3_[_loc5_] = param1.readUnsignedByte();
                                                      break loop9;
                                                   }
                                                   loop29:
                                                   while(true)
                                                   {
                                                      _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                      loop30:
                                                      while(true)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         loop20:
                                                         while(true)
                                                         {
                                                            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                            loop28:
                                                            while(true)
                                                            {
                                                               _loc4_[3] = _loc3_[2] & 63;
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  continue loop30;
                                                               }
                                                               §§push(uint(_loc3_.length));
                                                               if(!_loc9_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(_loc8_ || Base64)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr145:
                                                                     while(true)
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(uint(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break loop21;
                                                                                 }
                                                                                 addr340:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    addr341:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       addr342:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           addr375:
                                                                           §§push(_loc7_);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= _loc4_.length)
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              addr126:
                                                                              §§push(_loc2_);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() + §0v§.charAt(_loc4_[_loc7_]));
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop28;
                                                                           }
                                                                           addr375:
                                                                           addr106:
                                                                           addr149:
                                                                           addr156:
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_[_loc6_ + 1] = 64;
                                                                           if(_loc9_)
                                                                           {
                                                                              break loop15;
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ && _loc2_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr172:
                                                                                          _loc6_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             continue loop20;
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                       }
                                                                                       addr165:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                 }
                                                                                 addr162:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr375);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr214);
                                                                           }
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                  }
                                                                  addr214:
                                                                  addr228:
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr375);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr340);
                                             }
                                          }
                                       }
                                       §§goto(addr313);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr375);
               }
            }
            §§goto(addr315);
         }
         return _loc2_;
      }
      
      public static function §9N§(param1:String) : String
      {
         var _loc2_:ByteArray = §8C§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §8C§(param1:String) : ByteArray
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
            if(!(_loc9_ && _loc3_))
            {
               if(_loc8_)
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(§§pop() >= param1.length)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                _loc2_.position = 0;
                                                addr90:
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr321:
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc3_[_loc6_] = §0v§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                       continue loop10;
                                                                                    }
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!(_loc9_ && Base64))
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      addr242:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            addr97:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= _loc4_.length)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && Base64))
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           if(!(_loc8_ || param1))
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 addr132:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(4);
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc8_ || Base64)
                                                                                                                                    {
                                                                                                                                       §§push(uint(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || Base64)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                while(!(_loc8_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                                addr164:
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       addr149:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(uint(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                addr208:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      break loop8;
                                                                                                                                                   }
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr207:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr283:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < param1.length);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break loop21;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             addr283:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr199:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr130:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr283);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr221:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr221:
                                                                                                                        }
                                                                                                                        §§goto(addr130);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           addr184:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 §§goto(addr199);
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr230:
                                                                                                                     }
                                                                                                                     §§goto(addr281);
                                                                                                                  }
                                                                                                                  addr100:
                                                                                                               }
                                                                                                               else if(_loc3_[_loc7_ + 1] == 64)
                                                                                                               {
                                                                                                                  §§goto(addr221);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                                  §§goto(addr230);
                                                                                                               }
                                                                                                               §§goto(addr221);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(uint(§§pop()));
                                                                                                      addr380:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         break loop8;
                                                                                                      }
                                                                                                   }
                                                                                                   addr379:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop5;
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§pop();
                                                                           §§goto(addr337);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr90);
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr379);
                              }
                              §§goto(addr380);
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr97);
               }
               §§goto(addr132);
            }
            §§goto(addr149);
         }
         return _loc2_;
      }
   }
}
