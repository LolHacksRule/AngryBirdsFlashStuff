package §^_§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §'+§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'+§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
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
         if(!_loc1_)
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
         if(_loc3_ || param1)
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
         if(_loc9_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!_loc8_)
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
                        addr313:
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
                                          loop23:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc8_ && _loc2_)
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
                                                      while(true)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                               loop11:
                                                               while(!_loc8_)
                                                               {
                                                                  _loc4_[3] = _loc3_[2] & 63;
                                                                  loop12:
                                                                  while(_loc9_ || Base64)
                                                                  {
                                                                     §§push(uint(_loc3_.length));
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              loop16:
                                                                              while(_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(3);
                                                                                 if(_loc8_ && param1)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    loop17:
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop14;
                                                                                       addr96:
                                                                                       if(!(_loc9_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr105:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          addr360:
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= _loc4_.length)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(_loc2_);
                                                                                             if(_loc9_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + §'+§.charAt(_loc4_[_loc7_]));
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc8_ && _loc3_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               addr192:
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               addr326:
                                                                                                               §§push(uint(§§pop()));
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr222:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   break;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§goto(addr192);
                                                                                             §§push(§§pop() + 1);
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    addr203:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 _loc4_[_loc6_ + 1] = 64;
                                                                                 §§goto(addr222);
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr325:
                                                                                    §§goto(addr326);
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr354:
                                                            §§push(_loc5_);
                                                            §§goto(addr325);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                }
                                                §§goto(addr354);
                                                continue loop23;
                                             }
                                          }
                                       }
                                       addr321:
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr321);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr313);
            }
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
            if(_loc8_ || _loc3_)
            {
               if(!(_loc9_ && Base64))
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!(_loc9_ && param1))
                     {
                        if(!(_loc9_ && Base64))
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              if(_loc8_)
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    _loc2_.position = 0;
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       addr343:
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          addr344:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                          }
                                       }
                                       addr102:
                                       if(!(_loc8_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(§§pop() >= _loc4_.length)
                                       {
                                          if(!(_loc9_ && Base64))
                                          {
                                             addr119:
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                addr126:
                                                §§push(_loc5_);
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(4);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr149:
                                                            §§push(uint(§§pop()));
                                                            while(true)
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr220:
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                 addr279:
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || Base64)
                                                                                    {
                                                                                       _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                       loop13:
                                                                                       while(_loc8_ || Base64)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             loop14:
                                                                                             while(_loc8_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      addr100:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr102);
                                                                                                         }
                                                                                                         addr317:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(4);
                                                                                                            addr318:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr338:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                     addr338:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                                  addr296:
                                                                                                               }
                                                                                                               §§goto(addr338);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr199:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§push(§§pop() + 1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  §§goto(addr199);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr344);
                                                                                                               }
                                                                                                            }
                                                                                                            addr196:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr343);
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      addr291:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() < param1.length);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr296);
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                             }
                                                                                             addr363:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             break loop12;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr289:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       addr252:
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr119);
                                                                                 }
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    addr315:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr317);
                                                                                       continue loop29;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr183);
                                                                                 §§push(_loc7_);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           addr220:
                                                                        }
                                                                        §§goto(addr199);
                                                                     }
                                                                     continue loop0;
                                                                     addr164:
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            addr149:
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr164);
                                       }
                                       if(_loc3_[_loc7_ + 1] == 64)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§goto(addr126);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr220);
                                       }
                                       _loc2_.writeByte(_loc4_[_loc7_]);
                                       §§goto(addr220);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr315);
                                 §§goto(addr344);
                              }
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr164);
                     }
                     break;
                  }
                  §§push(0);
                  §§goto(addr363);
               }
               §§goto(addr100);
            }
            §§goto(addr149);
         }
         return _loc2_;
      }
   }
}
