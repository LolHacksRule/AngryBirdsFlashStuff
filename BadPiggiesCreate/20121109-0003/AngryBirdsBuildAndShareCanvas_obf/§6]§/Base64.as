package §6]§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §]z§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]z§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
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
         if(_loc3_ || _loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §7o§(_loc2_);
      }
      
      public static function §7o§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_ || param1)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!(_loc8_ || param1))
            {
               continue;
            }
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
                        if(_loc8_)
                        {
                           §§push(3);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       addr353:
                                       do
                                       {
                                          §§push(param1.bytesAvailable > 0);
                                          if(!(_loc8_ || param1))
                                          {
                                             continue loop7;
                                          }
                                       }
                                       while(_loc8_ || Base64);
                                       
                                       continue loop6;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc9_ && _loc2_)
                                          {
                                             break;
                                          }
                                          _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                          while(true)
                                          {
                                             _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                             loop12:
                                             while(!_loc9_)
                                             {
                                                _loc4_[3] = _loc3_[2] & 63;
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(uint(_loc3_.length));
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  §§push(_loc5_);
                                                                  addr147:
                                                               }
                                                               else
                                                               {
                                                                  addr368:
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     _loc4_[_loc6_ + 1] = 64;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr357:
                                                                              }
                                                                              §§push(uint(§§pop()));
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 break;
                                                                              }
                                                                              addr384:
                                                                              addr384:
                                                                              addr384:
                                                                              addr384:
                                                                              addr384:
                                                                              while(§§pop() < _loc4_.length)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc9_ && Base64))
                                                                                 {
                                                                                    §§push(§§pop() + §]z§.charAt(_loc4_[_loc7_]));
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!(_loc8_ || Base64))
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                    if(_loc9_ && Base64)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§push(_loc7_);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr63:
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(uint(§§pop()));
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr83);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr209);
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          §§goto(addr172);
                                                                                          §§goto(addr63);
                                                                                       }
                                                                                       addr171:
                                                                                    }
                                                                                    §§goto(addr83);
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop16;
                                                                           addr209:
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || param1))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                            }
                                                            addr356:
                                                            §§goto(addr357);
                                                            §§push(§§pop() + 1);
                                                         }
                                                         break;
                                                         addr83:
                                                         if(!(_loc8_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc9_ && _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc9_ && param1)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr109:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr384);
                                                         }
                                                      }
                                                      _loc5_ = §§pop();
                                                      break;
                                                   }
                                                   break;
                                                   if(_loc9_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc3_[_loc5_] = param1.readUnsignedByte();
                                    }
                                    §§goto(addr368);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr384);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §#!;§(param1:String) : String
      {
         var _loc2_:ByteArray = §,!O§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §,!O§(param1:String) : ByteArray
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
               if(_loc8_)
               {
                  if(!_loc9_)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc9_ && Base64))
                                 {
                                    if(!_loc9_)
                                    {
                                       _loc2_.position = 0;
                                       addr74:
                                       if(!(_loc9_ && Base64))
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             break;
                                          }
                                          loop26:
                                          while(true)
                                          {
                                             _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                             loop3:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop5:
                                                      while(_loc8_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop() >= _loc4_.length)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc8_ || Base64)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       addr118:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(4);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc8_ || Base64)
                                                                                                   {
                                                                                                      if(!(_loc9_ && Base64))
                                                                                                      {
                                                                                                         §§push(uint(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr144:
                                                                                                            }
                                                                                                            addr159:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               addr160:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr163:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop16:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < param1.length);
                                                                                                                        if(!(_loc9_ && Base64))
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          addr272:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr254:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    _loc3_[_loc6_] = §]z§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    addr285:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       addr286:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                          addr287:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                break loop3;
                                                                                                                                             }
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr273:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   break loop6;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr252:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr252);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                           addr279:
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        addr282:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr141:
                                                                                                      }
                                                                                                      §§goto(addr286);
                                                                                                   }
                                                                                                   §§goto(addr160);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr279);
                                                                                                }
                                                                                                addr278:
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          §§goto(addr163);
                                                                                       }
                                                                                    }
                                                                                    addr116:
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     addr103:
                                                                  }
                                                                  else if(_loc3_[_loc7_ + 1] == 64)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr116);
                                                                     }
                                                                     addr179:
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc2_.writeByte(_loc4_[_loc7_]);
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr185:
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                         while(_loc8_)
                                                         {
                                                            §§goto(addr278);
                                                            §§push(4);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      addr320:
                                                      while(true)
                                                      {
                                                         §§goto(addr273);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      break loop3;
                                                   }
                                                   addr318:
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                §§goto(addr320);
                                             }
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr287);
               }
               §§goto(addr118);
            }
            §§goto(addr141);
         }
         return _loc2_;
      }
   }
}
