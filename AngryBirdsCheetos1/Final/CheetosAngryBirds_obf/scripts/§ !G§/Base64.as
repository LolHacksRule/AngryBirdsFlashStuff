package § !G§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §@?§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@?§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc2_);
            
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc3_ || _loc2_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §2S§(_loc2_);
      }
      
      public static function §2S§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc8_ && _loc3_))
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
                                 if(!(_loc8_ && Base64))
                                 {
                                    if(§§pop())
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          §§pop();
                                          addr337:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             continue loop22;
                                          }
                                       }
                                       addr336:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                          break;
                                       }
                                       if(_loc8_ && Base64)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                       loop21:
                                       while(true)
                                       {
                                          _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                          addr271:
                                          while(!_loc9_)
                                          {
                                             continue loop21;
                                          }
                                          addr253:
                                          _loc4_[3] = _loc3_[2] & 63;
                                          loop23:
                                          while(true)
                                          {
                                             §§push(uint(_loc3_.length));
                                             loop16:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(3);
                                                      if(!(_loc9_ || _loc3_))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc9_ || Base64)
                                                         {
                                                            if(_loc9_)
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
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     break loop17;
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     if(!(_loc9_ || _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr208:
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr340:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              continue loop4;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= _loc4_.length)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() + §@?§.charAt(_loc4_[_loc7_]));
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 addr124:
                                                                                 if(!(_loc9_ || _loc2_))
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 §§push(_loc7_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop11;
                                                                                       addr191:
                                                                                    }
                                                                                 }
                                                                                 if(_loc9_ || Base64)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr94:
                                                                                       }
                                                                                       §§push(_loc7_);
                                                                                       continue;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              addr228:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ || Base64))
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§goto(addr190);
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      _loc4_[_loc6_ + 1] = 64;
                                                      §§goto(addr228);
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr94);
                                                }
                                                addr243:
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr340);
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr336);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         return _loc2_;
      }
      
      public static function §6! §(param1:String) : String
      {
         var _loc2_:ByteArray = §[D§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §[D§(param1:String) : ByteArray
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
                  if(_loc8_ || _loc3_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(_loc8_)
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    if(_loc8_)
                                    {
                                       _loc2_.position = 0;
                                       addr84:
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                   loop17:
                                                   while(_loc8_)
                                                   {
                                                      _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(uint(§§pop()));
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr222:
                                                                  while(true)
                                                                  {
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        addr100:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || Base64)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(§§pop() < _loc4_.length)
                                                                                    {
                                                                                       if(_loc3_[_loc7_ + 1] == 64)
                                                                                       {
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && Base64))
                                                                                             {
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr117:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr118:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(4);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           while(!(_loc8_ || param1))
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                           addr147:
                                                                                                                        }
                                                                                                                        loop11:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(4);
                                                                                                                           addr303:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                              loop13:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr307:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          addr267:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + _loc6_);
                                                                                                                                             addr269:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < param1.length);
                                                                                                                                                if(!(_loc8_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr344:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          addr345:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr283:
                                                                                                                                       addr344:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       _loc3_[_loc6_] = §@?§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr312:
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(uint(§§pop()));
                                                                                                                                                addr314:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   break loop17;
                                                                                                                                                }
                                                                                                                                                §§goto(addr312);
                                                                                                                                             }
                                                                                                                                             addr313:
                                                                                                                                          }
                                                                                                                                          §§goto(addr314);
                                                                                                                                       }
                                                                                                                                       addr339:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr139:
                                                                                                                  }
                                                                                                                  §§goto(addr269);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        break;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     addr172:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr203:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr158);
                                                                                                                              }
                                                                                                                              addr157:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr345);
                                                                                                                           }
                                                                                                                           §§goto(addr314);
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr158:
                                                                                                                  addr171:
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            §§goto(addr303);
                                                                                                         }
                                                                                                         §§goto(addr314);
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                }
                                                                                                addr116:
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                    §§goto(addr116);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr344);
                                                                                 }
                                                                              }
                                                                              §§goto(addr157);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr343:
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr300);
                                                   }
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr307);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr84);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr343);
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr100);
               }
               §§goto(addr118);
            }
            §§goto(addr139);
         }
         return _loc2_;
      }
   }
}
