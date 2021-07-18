package §@R§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §"@§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §"@§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(!(_loc2_ || Base64));
         
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §@Z§(_loc2_);
      }
      
      public static function §@Z§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_ || _loc2_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!_loc9_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(uint(§§pop()));
                  addr356:
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
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       loop26:
                                       while(true)
                                       {
                                          §§pop();
                                          addr334:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                continue loop26;
                                             }
                                             addr339:
                                             addr353:
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                addr343:
                                                _loc5_ = uint(§§pop() + 1);
                                                addr342:
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr333:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                          loop9:
                                          while(_loc8_)
                                          {
                                             _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                             loop10:
                                             while(true)
                                             {
                                                _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                loop11:
                                                while(true)
                                                {
                                                   _loc4_[3] = _loc3_[2] & 63;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(uint(_loc3_.length));
                                                      if(_loc8_ || Base64)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc9_ && Base64))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc8_ || Base64)
                                                                           {
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        _loc4_[_loc6_ + 1] = 64;
                                                                        continue loop12;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr220:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     continue loop14;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr342);
                                                            addr122:
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc9_ && param1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(_loc7_);
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc9_ && _loc2_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc8_ || Base64)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        addr83:
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(_loc9_ && Base64)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr99:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    addr369:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= _loc4_.length)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr118:
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc9_ && Base64))
                                                                                       {
                                                                                          §§push(§§pop() + §"@§.charAt(_loc4_[_loc7_]));
                                                                                       }
                                                                                       _loc2_ = §§pop();
                                                                                       while(!_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr122);
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr118);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr220);
                                                                        §§push(uint(§§pop()));
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  addr217:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     continue loop10;
                                                                  }
                                                                  addr209:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§goto(addr217);
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                               addr194:
                                                            }
                                                            §§goto(addr83);
                                                         }
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr336);
                                    }
                                    §§goto(addr353);
                                 }
                                 §§goto(addr333);
                              }
                           }
                        }
                     }
                  }
               }
               addr355:
            }
            while(true)
            {
               §§push(0);
               if(_loc8_ || _loc2_)
               {
                  §§goto(addr194);
                  §§push(uint(§§pop()));
               }
               else
               {
                  §§goto(addr355);
               }
               §§goto(addr356);
            }
         }
         return _loc2_;
      }
      
      public static function §%!K§(param1:String) : String
      {
         var _loc2_:ByteArray = §;t§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §;t§(param1:String) : ByteArray
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
               if(_loc8_ || param1)
               {
                  if(!(_loc9_ && param1))
                  {
                     if(_loc8_)
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(!(_loc9_ && Base64))
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc2_.position = 0;
                                          addr91:
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr100:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() >= _loc4_.length)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr116:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ && Base64))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr125:
                                                                                 §§push(4);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr140:
                                                                                             while(_loc9_ && Base64)
                                                                                             {
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      addr286:
                                                                                                      loop4:
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                           addr246:
                                                                                                                           while(_loc8_ || param1)
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
                                                                                                                                       if(!(_loc9_ && Base64))
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop2:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                       addr334:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr335:
                                                                                                                                    addr202:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr333:
                                                                                                                                 }
                                                                                                                                 §§goto(addr334);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr267:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     _loc3_[_loc6_] = §"@§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        break loop4;
                                                                                                                     }
                                                                                                                     addr329:
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  addr304:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr265:
                                                                                                               addr303:
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr125);
                                                                                                         }
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr295:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc6_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < param1.length);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              §§goto(addr265);
                                                                                                                           }
                                                                                                                           addr260:
                                                                                                                        }
                                                                                                                        §§goto(addr304);
                                                                                                                     }
                                                                                                                     addr256:
                                                                                                                  }
                                                                                                                  §§goto(addr335);
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr139:
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                addr177:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                             }
                                                                                             addr176:
                                                                                          }
                                                                                       }
                                                                                       addr168:
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr202);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr150:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§goto(addr168);
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                              }
                                                                              addr150:
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                     }
                                                                     addr114:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr196:
                                                                     §§push(_loc7_);
                                                                     addr196:
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            else
                                                            {
                                                               if(_loc3_[_loc7_ + 1] == 64)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr114);
                                                                  }
                                                                  addr190:
                                                               }
                                                               else
                                                               {
                                                                  _loc2_.writeByte(_loc4_[_loc7_]);
                                                                  §§goto(addr196);
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr91);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr333);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr100);
               }
               §§goto(addr116);
            }
            §§goto(addr139);
         }
         return _loc2_;
      }
   }
}
