package §"x§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §<!y§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!y§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         }
         do
         {
            version = "1.1.0";
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         return §%A§(_loc2_);
      }
      
      public static function §%A§(param1:ByteArray) : String
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
            if(!(_loc9_ && _loc3_))
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
                                 if(!(_loc9_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop25:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc9_ && _loc3_)
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
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                                  loop11:
                                                                  for(; _loc8_ || _loc2_; if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop8;
                                                                  })
                                                                  {
                                                                     _loc4_[3] = _loc3_[2] & 63;
                                                                     loop12:
                                                                     while(true)
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
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    while(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          addr112:
                                                                                          while(true)
                                                                                          {
                                                                                             addr408:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr409:
                                                                                                addr374:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= _loc4_.length)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §<!y§.charAt(_loc4_[_loc7_]));
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(!(_loc8_ || Base64))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                if(_loc8_ || Base64)
                                                                                                {
                                                                                                   addr393:
                                                                                                   _loc5_ = uint(§§pop() + 1);
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr202:
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(3);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    _loc4_[_loc6_ + 1] = 64;
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && Base64))
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr220:
                                                                                    if(!(_loc8_ || _loc2_))
                                                                                    {
                                                                                       break loop15;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop25;
                                                         }
                                                         continue loop25;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_[_loc5_] = param1.readUnsignedByte();
                                                }
                                                §§goto(addr374);
                                                continue loop25;
                                             }
                                          }
                                       }
                                       addr370:
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr370);
                              }
                           }
                        }
                     }
                  }
                  §§push(0);
                  if(_loc9_ && param1)
                  {
                     continue;
                  }
                  §§push(uint(§§pop()));
                  if(!_loc9_)
                  {
                     §§goto(addr202);
                  }
                  §§goto(addr409);
               }
            }
            §§goto(addr227);
         }
         return _loc2_;
      }
      
      public static function §8!^§(param1:String) : String
      {
         var _loc2_:ByteArray = §0N§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §0N§(param1:String) : ByteArray
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
               if(!(_loc8_ && param1))
               {
                  if(!_loc8_)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(!_loc8_)
                        {
                           if(_loc9_)
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 _loc2_.position = 0;
                                 addr76:
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                break;
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                loop20:
                                                while(true)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + _loc6_);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(§§pop() < param1.length);
                                                            if(!_loc8_)
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                        addr285:
                                                                        while(true)
                                                                        {
                                                                           _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                              loop3:
                                                                              for(; _loc9_ || Base64; while(true)
                                                                              {
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr113);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr316);
                                                                                 }
                                                                              })
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop() >= _loc4_.length)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   if(_loc3_[_loc7_ + 1] != 64)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            addr115:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(4);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                    while(!_loc9_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                    addr133:
                                                                                                                                 }
                                                                                                                                 addr335:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    addr336:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr286:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(4);
                                                                                                                                 addr289:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          addr316:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr286);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr309:
                                                                                                                                    }
                                                                                                                                    §§goto(addr309);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 addr139:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr138:
                                                                                                                           }
                                                                                                                           §§goto(addr148);
                                                                                                                        }
                                                                                                                        addr124:
                                                                                                                     }
                                                                                                                     §§goto(addr139);
                                                                                                                  }
                                                                                                                  §§goto(addr289);
                                                                                                               }
                                                                                                               §§goto(addr147);
                                                                                                            }
                                                                                                         }
                                                                                                         addr113:
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr186:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr186:
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                                §§goto(addr115);
                                                                                             }
                                                                                             _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                          addr205:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             addr314:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr315);
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                          addr313:
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    addr197:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr334:
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     addr269:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr319:
                                                                     _loc3_[_loc6_] = §<!y§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr313);
                                                                     §§goto(addr319);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                   }
                                                   §§goto(addr315);
                                                }
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr285);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr76);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr197);
               }
               §§goto(addr115);
            }
            §§goto(addr124);
         }
         return _loc2_;
      }
   }
}
