package §6o§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §5!]§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §5!]§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!(_loc3_ && param1))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return § !q§(_loc2_);
      }
      
      public static function § !q§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc9_ && Base64))
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
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc9_ && param1)
                                             {
                                                break;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                   break;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                      if(!(_loc8_ || _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc4_[3] = _loc3_[2] & 63;
                                                         loop13:
                                                         while(!_loc9_)
                                                         {
                                                            §§push(uint(_loc3_.length));
                                                            loop14:
                                                            while(!(_loc9_ && _loc3_))
                                                            {
                                                               _loc6_ = §§pop();
                                                               continue loop10;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || _loc3_))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§push(3);
                                                                  if(!(_loc8_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc4_[_loc6_ + 1] = 64;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(_loc6_);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= _loc4_.length)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(!(_loc9_ && Base64))
                                                                        {
                                                                           §§push(§§pop() + §5!]§.charAt(_loc4_[_loc7_]));
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§push(_loc7_);
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              if(_loc9_ && Base64)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc8_ || _loc2_))
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             if(_loc9_ && _loc2_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                          continue loop13;
                                                                                          addr188:
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr113:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop22;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr219:
                                                                                          if(!(_loc8_ || _loc2_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr226:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop17;
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr113);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr362:
                                                                                       §§push(uint(§§pop() + 1));
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr211:
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                 }
                                                                                 addr363:
                                                                                 _loc5_ = §§pop();
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           addr208:
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr211);
                                                                              §§push(uint(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr363);
                                                                           §§goto(addr362);
                                                                        }
                                                                     }
                                                                     addr379:
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr362);
                                             §§push(_loc5_);
                                          }
                                       }
                                       addr357:
                                    }
                                    §§goto(addr326);
                                 }
                                 §§goto(addr357);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr328);
         }
         return _loc2_;
      }
      
      public static function §0!>§(param1:String) : String
      {
         var _loc2_:ByteArray = §%V§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §%V§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
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
            if(_loc8_)
            {
               if(!_loc9_)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        if(!_loc9_)
                        {
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop() >= param1.length)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             _loc2_.position = 0;
                                             addr105:
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             loop21:
                                             while(true)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         addr197:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            addr110:
                                                            loop30:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  addr112:
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     if(§§pop() >= _loc4_.length)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr124:
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr133:
                                                                              while(true)
                                                                              {
                                                                                 §§push(4);
                                                                                 if(!(_loc9_ && Base64))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       addr150:
                                                                                       _loc5_ = §§pop();
                                                                                       break loop30;
                                                                                    }
                                                                                    addr155:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                addr360:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      addr311:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         addr312:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(_loc8_ || Base64)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr323:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc6_);
                                                                                                                              addr273:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc8_ || Base64)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < param1.length);
                                                                                                                                    if(_loc9_ && Base64)
                                                                                                                                    {
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                                             addr308:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                                                addr268:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                                                                   addr248:
                                                                                                                                                   addr380:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(uint(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            addr232:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr231:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(uint(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         addr378:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr124);
                                                                                                                                                   }
                                                                                                                                                   addr380:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr292:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc3_[_loc6_] = §5!]§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(!(_loc8_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop11;
                                                                                                                                                }
                                                                                                                                                addr358:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr374:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          §§goto(addr380);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr358);
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                              §§goto(addr112);
                                                                                                                           }
                                                                                                                           addr271:
                                                                                                                        }
                                                                                                                        §§goto(addr374);
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr322:
                                                                                                               }
                                                                                                               §§goto(addr290);
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr158:
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                           }
                                                                           addr131:
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     else if(_loc3_[_loc7_ + 1] == 64)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§goto(addr131);
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        addr208:
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc2_.writeByte(_loc4_[_loc7_]);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 addr154:
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                        }
                                                                        addr221:
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                          §§goto(addr323);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr105);
                              }
                              else
                              {
                                 §§push(0);
                              }
                              §§goto(addr378);
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr110);
               }
               §§goto(addr133);
            }
            §§goto(addr150);
         }
         return _loc2_;
      }
   }
}
