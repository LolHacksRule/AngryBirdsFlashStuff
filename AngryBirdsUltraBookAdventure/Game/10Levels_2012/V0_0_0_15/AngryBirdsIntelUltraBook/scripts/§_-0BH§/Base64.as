package §_-0BH§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §_-cw§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-cw§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(!_loc1_);
            
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
         if(_loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §_-UL§(_loc2_);
      }
      
      public static function §_-UL§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_ || _loc3_)
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
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     loop27:
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop12:
                           while(true)
                           {
                              §§push(3);
                              loop13:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc8_ || Base64)
                                 {
                                    if(§§pop())
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§pop();
                                          addr327:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc8_ || param1)
                                             {
                                             }
                                             continue loop14;
                                          }
                                       }
                                       addr326:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop23:
                                          while(true)
                                          {
                                             _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                             loop24:
                                             while(true)
                                             {
                                                _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                loop15:
                                                while(true)
                                                {
                                                   _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc8_ || Base64)
                                                      {
                                                         _loc4_[3] = _loc3_[2] & 63;
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(uint(_loc3_.length));
                                                            loop6:
                                                            while(!_loc9_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc8_ || Base64)
                                                                        {
                                                                           §§push(3);
                                                                           if(!(_loc8_ || Base64))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              addr212:
                                                                              _loc4_[_loc6_ + 1] = 64;
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ && _loc3_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr374:
                                                                                          addr374:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= _loc4_.length)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(_loc2_);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(§§pop() + §_-cw§.charAt(_loc4_[_loc7_]));
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             if(!(_loc8_ || param1))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                if(_loc9_ && Base64)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc9_ && Base64)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§push(uint(§§pop()));
                                                                                                   if(_loc9_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            addr95:
                                                                                                         }
                                                                                                         §§push(_loc7_);
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr162:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(uint(§§pop()));
                                                                                                      if(_loc9_ && Base64)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      _loc7_ = §§pop();
                                                                                                      while(_loc9_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                   §§goto(addr95);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ || _loc3_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_ || Base64)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               break loop6;
                                                                                                               addr366:
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         addr359:
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   addr333:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                       }
                                                                                       addr331:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          addr332:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     §§goto(addr374);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr331);
                                                               §§goto(addr366);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr327);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                       }
                                       §§goto(addr359);
                                       continue loop13;
                                    }
                                 }
                                 §§goto(addr326);
                              }
                           }
                        }
                     }
                     addr372:
                  }
                  §§goto(addr374);
               }
            }
            §§goto(addr372);
         }
         return _loc2_;
      }
      
      public static function §_-aW§(param1:String) : String
      {
         var _loc2_:ByteArray = §_-72§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §_-72§(param1:String) : ByteArray
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
            if(_loc8_ || _loc2_)
            {
               if(_loc8_ || _loc2_)
               {
                  if(_loc8_ || param1)
                  {
                     if(_loc8_ || _loc3_)
                     {
                        if(!_loc9_)
                        {
                           if(_loc8_ || param1)
                           {
                              if(§§pop() >= param1.length)
                              {
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc8_ || _loc2_)
                                       {
                                          _loc2_.position = 0;
                                          addr111:
                                          if(_loc8_ || param1)
                                          {
                                             if(_loc8_ || _loc2_)
                                             {
                                                break;
                                             }
                                             loop20:
                                             while(true)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr139:
                                                   while(true)
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(4);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!(_loc9_ && Base64))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                    loop12:
                                                                                    while(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                          addr263:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(_loc8_ || Base64)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr247:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         addr128:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(§§pop() >= _loc4_.length)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr323:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              addr325:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 §§push(4);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop30:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr354:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                addr288:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + _loc6_);
                                                                                                                                                   addr290:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < param1.length);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr353:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          addr374:
                                                                                                                                          _loc3_[_loc6_] = §_-cw§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             addr357:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                addr358:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(uint(§§pop()));
                                                                                                                                                   addr359:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                      break loop12;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr353);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  addr133:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  if(_loc3_[_loc7_ + 1] == 64)
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     §§push(_loc7_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr358);
                                                                                                                              }
                                                                                                                              §§goto(addr290);
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              addr209:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr203:
                                                                                                                           addr208:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr359);
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr246:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr378:
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr247);
                                                                     }
                                                                     continue loop0;
                                                                     addr166:
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               addr158:
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr111);
                              }
                              else
                              {
                                 §§push(0);
                              }
                              §§goto(addr378);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr288);
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr128);
               }
               §§goto(addr139);
            }
            §§goto(addr158);
         }
         return _loc2_;
      }
   }
}
