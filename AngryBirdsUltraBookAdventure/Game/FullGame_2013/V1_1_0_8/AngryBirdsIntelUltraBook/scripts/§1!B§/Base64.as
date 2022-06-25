package §1!B§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §]!K§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]!K§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(!_loc2_);
         
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
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §8!1§(_loc2_);
      }
      
      public static function §8!1§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc9_ || _loc2_)
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
                                                      while(true)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         loop10:
                                                         while(_loc9_)
                                                         {
                                                            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  _loc4_[3] = _loc3_[2] & 63;
                                                                  loop12:
                                                                  while(!(_loc8_ && _loc2_))
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
                                                                              if(!(_loc8_ && Base64))
                                                                              {
                                                                                 §§push(3);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(uint(§§pop()));
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && _loc2_))
                                                                                             {
                                                                                                if(_loc9_ || Base64)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc8_ && param1)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr108:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr349:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= _loc4_.length)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§push(_loc2_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §]!K§.charAt(_loc4_[_loc7_]));
                                                                                                               }
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(_loc8_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§push(_loc7_);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop()));
                                                                                                                     if(!(_loc8_ && Base64))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  addr194:
                                                                                                               }
                                                                                                               if(!(_loc9_ || param1))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(uint(§§pop()));
                                                                                                               if(!(_loc9_ || _loc2_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ || Base64))
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr108);
                                                                                                                           }
                                                                                                                           §§goto(addr349);
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr332:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   addr330:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                addr193:
                                                                                             }
                                                                                             §§goto(addr194);
                                                                                          }
                                                                                          addr158:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          addr219:
                                                                                       }
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc4_[_loc6_ + 1] = 64;
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                              §§goto(addr158);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop24;
                                                            }
                                                            continue loop24;
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                   if(!_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                §§goto(addr330);
                                                continue loop24;
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
            §§goto(addr344);
         }
         return _loc2_;
      }
      
      public static function §'o§(param1:String) : String
      {
         var _loc2_:ByteArray = §?!8§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §?!8§(param1:String) : ByteArray
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
               if(!(_loc9_ && param1))
               {
                  if(_loc8_ || Base64)
                  {
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(!_loc9_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       _loc2_.position = 0;
                                       addr99:
                                       if(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          loop26:
                                          while(true)
                                          {
                                             addr104:
                                             loop20:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      if(§§pop() >= _loc4_.length)
                                                      {
                                                         addr118:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               break loop20;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr144:
                                                                                       §§push(uint(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   while(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               loop25:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc6_);
                                                                                                                  addr274:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < param1.length);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                                 loop2:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                                    addr265:
                                                                                                                                    loop3:
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                                                          loop4:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ || Base64))
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc8_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(uint(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                addr221:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(uint(§§pop()));
                                                                                                                                                   break loop4;
                                                                                                                                                }
                                                                                                                                                addr343:
                                                                                                                                             }
                                                                                                                                             addr203:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   addr177:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(uint(§§pop()));
                                                                                                                                                      addr178:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                         break loop20;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr198:
                                                                                                                                                _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                          }
                                                                                                                                          addr344:
                                                                                                                                          addr238:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr298:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             addr300:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(4);
                                                                                                                                                addr301:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      addr316:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr316);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break loop3;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr281:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc3_[_loc6_] = §]!K§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr322:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                    addr323:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(uint(§§pop()));
                                                                                                                                       addr324:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr339:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr298);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr316);
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr272:
                                                                                                            }
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr155);
                                                                                                   }
                                                                                                   addr155:
                                                                                                   continue loop0;
                                                                                                   addr166:
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr178);
                                                                                          }
                                                                                       }
                                                                                       addr144:
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr177);
                                                                              }
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr344);
                                                                     }
                                                                     addr131:
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         addr118:
                                                      }
                                                      else if(_loc3_[_loc7_ + 1] == 64)
                                                      {
                                                         §§goto(addr190);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr131);
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr104);
                                                §§goto(addr118);
                                             }
                                          }
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr99);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr343);
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr221);
               }
               §§goto(addr176);
            }
            §§goto(addr144);
         }
         return _loc2_;
      }
   }
}
