package §>^§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §&!"§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&!"§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(!_loc2_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         return §=!=§(_loc2_);
      }
      
      public static function §=!=§(param1:ByteArray) : String
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
            if(_loc8_ || param1)
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
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc9_)
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
                                                loop8:
                                                while(true)
                                                {
                                                   _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                      if(_loc9_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_[3] = _loc3_[2] & 63;
                                                         if(!_loc8_)
                                                         {
                                                            break loop9;
                                                         }
                                                         §§push(uint(_loc3_.length));
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  break loop9;
                                                               }
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(3);
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    loop15:
                                                                                    while(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(!(_loc8_ || Base64))
                                                                                       {
                                                                                          break loop9;
                                                                                       }
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             addr369:
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= _loc4_.length)
                                                                                                {
                                                                                                   break loop9;
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() + §&!"§.charAt(_loc4_[_loc7_]));
                                                                                                }
                                                                                                _loc2_ = §§pop();
                                                                                                while(_loc8_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop()));
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  addr88:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc9_ && _loc3_)
                                                                                                                        {
                                                                                                                           break loop9;
                                                                                                                        }
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    break loop7;
                                                                                                                                 }
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        loop25:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_ || Base64)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           addr230:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              addr203:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    break loop14;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                    addr212:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr343:
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            addr342:
                                                                                                            §§goto(addr343);
                                                                                                            §§push(uint(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr211);
                                                                                                      }
                                                                                                      §§goto(addr203);
                                                                                                   }
                                                                                                   §§goto(addr88);
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           _loc4_[_loc6_ + 1] = 64;
                                                                           §§goto(addr230);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr342);
                                                            }
                                                            addr341:
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr341);
                                             §§push(_loc5_);
                                          }
                                       }
                                       addr337:
                                    }
                                    §§goto(addr316);
                                 }
                                 §§goto(addr337);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr283);
         }
         return _loc2_;
      }
      
      public static function §>X§(param1:String) : String
      {
         var _loc2_:ByteArray = §#?§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §#?§(param1:String) : ByteArray
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
            if(!(_loc9_ && param1))
            {
               if(!_loc9_)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && param1))
                     {
                        if(!_loc9_)
                        {
                           if(§§pop() >= param1.length)
                           {
                              if(_loc8_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(_loc8_ || Base64)
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(_loc8_ || _loc2_)
                                          {
                                             _loc2_.position = 0;
                                             addr98:
                                             if(_loc8_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_ || Base64)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                   }
                                                   addr296:
                                                }
                                                while(true)
                                                {
                                                   _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                   addr270:
                                                   while(true)
                                                   {
                                                      _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                      addr250:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               continue loop15;
                                                            }
                                                            addr226:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               break loop15;
                                                            }
                                                            addr363:
                                                         }
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr365:
                                                         while(true)
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr315:
                                                               while(true)
                                                               {
                                                                  §§push(4);
                                                                  addr316:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                     addr317:
                                                                     addr319:
                                                                     addr320:
                                                                     while(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr296);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_[_loc6_] = §&!"§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc9_ && Base64))
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 addr334:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    addr335:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr359:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop();
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc6_);
                                                                           addr275:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() < param1.length);
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(!(_loc8_ || _loc3_))
                                                                                 {
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() >= _loc4_.length)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(4);
                                                                                    if(_loc8_ || Base64)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr157:
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                §§goto(addr335);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr156:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr163:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                          }
                                                                                          addr163:
                                                                                       }
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 addr166:
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr167:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && Base64))
                                                                                       {
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       §§goto(addr270);
                                                                                       continue loop30;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr140:
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr215:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           addr162:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr215:
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                                  addr131:
                                                               }
                                                               else
                                                               {
                                                                  if(_loc3_[_loc7_ + 1] == 64)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           §§goto(addr140);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     addr202:
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc2_.writeByte(_loc4_[_loc7_]);
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   addr234:
                                                   §§goto(addr166);
                                                   §§push(uint(§§pop()));
                                                }
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr98);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr363);
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr162);
               }
               §§goto(addr142);
            }
            §§goto(addr156);
         }
         return _loc2_;
      }
   }
}
