package §6b§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §0v§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0v§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(_loc2_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         if(!(_loc9_ && Base64))
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
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop23:
                                          while(true)
                                          {
                                             §§pop();
                                             addr367:
                                             while(true)
                                             {
                                                §§push(param1.bytesAvailable > 0);
                                                if(_loc8_ || param1)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop23;
                                             }
                                          }
                                          addr366:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             _loc3_[_loc5_] = param1.readUnsignedByte();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   addr388:
                                                   §§push(uint(§§pop() + 1));
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= _loc4_.length)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc2_);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + §0v§.charAt(_loc4_[_loc7_]));
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(!(_loc9_ && Base64))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        if(_loc9_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr86:
                                                                        if(_loc9_ && _loc3_)
                                                                        {
                                                                           loop16:
                                                                           while(_loc8_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr103);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_[3] = _loc3_[2] & 63;
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(uint(_loc3_.length));
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             addr236:
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_ || param1)
                                                                                                      {
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            §§push(3);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(§§pop() >= §§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc8_ || param1))
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  if(_loc8_ || Base64)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop()));
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  addr336:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                                                                                     if(_loc9_ && param1)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                               addr136:
                                                                                                            }
                                                                                                            addr217:
                                                                                                            _loc4_[_loc6_ + 1] = 64;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ || _loc2_))
                                                                                                                     {
                                                                                                                        addr389:
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr178:
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        addr180:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(_loc8_ || Base64)
                                                                                                                           {
                                                                                                                              if(_loc9_ && param1)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        §§goto(addr367);
                                                                                                                        §§goto(addr178);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                                  addr171:
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                         }
                                                                                                         addr253:
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr103:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr103:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        §§goto(addr103);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr388);
                                                                     }
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr86);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                }
                                                §§goto(addr389);
                                             }
                                          }
                                          §§goto(addr336);
                                          §§goto(addr327);
                                       }
                                    }
                                 }
                                 §§goto(addr366);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr101);
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
            if(_loc9_)
            {
               if(_loc9_)
               {
                  if(_loc9_)
                  {
                     if(_loc9_ || _loc2_)
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || Base64)
                                 {
                                    if(_loc9_)
                                    {
                                       _loc2_.position = 0;
                                       addr85:
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             break;
                                          }
                                          loop25:
                                          while(true)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(4);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_ || Base64)
                                                            {
                                                               addr136:
                                                               §§push(uint(§§pop()));
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr137:
                                                                  while(_loc8_)
                                                                  {
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                        addr305:
                                                                        while(true)
                                                                        {
                                                                           _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && Base64))
                                                                              {
                                                                                 _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && Base64))
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr100:
                                                                                                   addr155:
                                                                                                   addr156:
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop() >= _loc4_.length)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc6_);
                                                                                                                        addr274:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < param1.length);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 addr371:
                                                                                                                                 _loc3_[_loc6_] = §0v§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    addr351:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(uint(§§pop()));
                                                                                                                                             addr355:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                addr356:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr354:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             addr377:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr376:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          addr308:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(4);
                                                                                                                                             addr309:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                if(_loc9_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc9_ || Base64)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc8_ && Base64))
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr356);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr272:
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                               }
                                                                                                            }
                                                                                                            addr109:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            if(_loc3_[_loc7_ + 1] == 64)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr198:
                                                                                                            _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ || param1))
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               §§push(_loc7_);
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr153:
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              break loop7;
                                                                                                                           }
                                                                                                                           §§goto(addr355);
                                                                                                                        }
                                                                                                                        addr153:
                                                                                                                     }
                                                                                                                     §§goto(addr274);
                                                                                                                  }
                                                                                                                  addr150:
                                                                                                               }
                                                                                                               §§goto(addr153);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr355);
                                                                                                      }
                                                                                                      §§goto(addr153);
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && Base64))
                                                                                                      {
                                                                                                         §§goto(addr100);
                                                                                                      }
                                                                                                      §§goto(addr198);
                                                                                                      §§goto(addr155);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          addr211:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr375:
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 addr269:
                                                                                 addr235:
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr136:
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                             §§goto(addr305);
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr85);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr375);
                     }
                     §§goto(addr351);
                  }
                  §§goto(addr308);
               }
               §§goto(addr211);
            }
            §§goto(addr136);
         }
         return _loc2_;
      }
   }
}
