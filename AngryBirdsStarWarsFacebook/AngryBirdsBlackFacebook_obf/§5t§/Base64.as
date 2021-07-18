package §5t§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §3#Y§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3#Y§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
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
         if(!(_loc1_ && this))
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
         if(_loc4_ || _loc2_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §-$§(_loc2_);
      }
      
      public static function §-$§(param1:ByteArray) : String
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
            if(!_loc9_)
            {
               §§push(0);
               while(true)
               {
                  §§push(uint(§§pop()));
                  addr336:
                  while(true)
                  {
                     _loc5_ = §§pop();
                  }
                  loop16:
                  while(true)
                  {
                     §§push(0);
                     if(_loc9_ && param1)
                     {
                        break;
                     }
                     §§push(uint(§§pop()));
                     loop17:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              _loc7_ = §§pop();
                              loop18:
                              while(_loc8_)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    addr338:
                                    loop20:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       addr349:
                                       addr122:
                                       while(true)
                                       {
                                          if(§§pop() < _loc4_.length)
                                          {
                                             §§push(_loc2_);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() + §3#Y§.charAt(_loc4_[_loc7_]));
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc8_ || _loc2_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop16;
                                                }
                                                continue loop18;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr122:
                                       while(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(3);
                                             if(_loc8_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   continue loop16;
                                                }
                                                addr190:
                                                _loc4_[_loc6_ + 1] = 64;
                                                if(!_loc9_)
                                                {
                                                   addr323:
                                                   addr322:
                                                   addr155:
                                                   addr154:
                                                   §§push(_loc6_ + 1);
                                                   if(_loc8_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      break;
                                                   }
                                                   _loc5_ = uint(§§pop());
                                                   addr324:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      break loop17;
                                                      §§goto(addr324);
                                                   }
                                                   addr304:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                   while(_loc8_)
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                               break loop20;
                                                            }
                                                            break;
                                                            addr219:
                                                            if(!(_loc8_ || Base64))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(uint(_loc3_.length));
                                                            while(_loc8_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               break loop18;
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         continue;
                                                         addr262:
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   addr318:
                                                   addr317:
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(param1.bytesAvailable > 0);
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr333:
                                                         addr321:
                                                         _loc3_[_loc5_] = param1.readUnsignedByte();
                                                         §§goto(addr322);
                                                         §§push(_loc5_ + 1);
                                                         continue loop24;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr318);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr317);
                                             }
                                             addr307:
                                          }
                                          else
                                          {
                                             §§goto(addr336);
                                          }
                                          §§goto(addr304);
                                       }
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             _loc6_ = §§pop();
                                             addr161:
                                             if(_loc8_ || param1)
                                             {
                                                addr178:
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr122);
                                                      §§goto(addr178);
                                                   }
                                                   addr120:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr323);
                                                }
                                                addr337:
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr321);
                                          §§goto(addr155);
                                       }
                                       §§goto(addr323);
                                    }
                                    while(true)
                                    {
                                       _loc4_[3] = _loc3_[2] & 63;
                                       if(!(_loc8_ || param1))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr219);
                                       addr80:
                                       if(!(_loc8_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          continue loop19;
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr262);
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    §§goto(addr120);
                                 }
                                 §§goto(addr333);
                              }
                           }
                           break;
                        }
                        §§goto(addr197);
                        addr53:
                        if(!(_loc8_ || _loc3_))
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc9_)
                           {
                              §§push(uint(§§pop()));
                              if(!_loc9_)
                              {
                                 addr68:
                                 if(_loc8_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc9_)
                                    {
                                       §§goto(addr80);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr323);
                        }
                        §§goto(addr122);
                     }
                     while(true)
                     {
                        §§goto(addr307);
                     }
                  }
               }
            }
            §§goto(addr337);
         }
         return _loc2_;
      }
      
      public static function §!"T§(param1:String) : String
      {
         var _loc2_:ByteArray = §""y§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §""y§(param1:String) : ByteArray
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
               if(_loc9_ || _loc2_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        if(!_loc8_)
                        {
                           if(!(_loc8_ && Base64))
                           {
                              _loc2_.position = 0;
                              addr79:
                              if(!(_loc8_ && Base64))
                              {
                                 if(_loc9_ || Base64)
                                 {
                                    break;
                                 }
                                 loop27:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc8_)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                if(§§pop() >= _loc4_.length)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              §§push(4);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    while(!_loc8_)
                                                                                    {
                                                                                       §§goto(addr190);
                                                                                       §§push(uint(§§pop()));
                                                                                    }
                                                                                    break loop10;
                                                                                    addr177:
                                                                                 }
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr156:
                                                                                    §§push(uint(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ || Base64)
                                                                                                   {
                                                                                                      loop6:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         addr331:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(4);
                                                                                                            addr332:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr335:
                                                                                                                     §§pop();
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        addr289:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc6_);
                                                                                                                           addr291:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < param1.length);
                                                                                                                              if(_loc8_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr336:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                              addr286:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                                                 addr259:
                                                                                                                                 while(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(uint(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && Base64))
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          addr375:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             addr339:
                                                                                                                                             loop16:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                addr340:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr341);
                                                                                                                                                   continue loop16;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr341:
                                                                                                                                       }
                                                                                                                                       addr233:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                       }
                                                                                                                                       addr379:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr336);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr310:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc3_[_loc6_] = §3#Y§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr375);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr205:
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr164:
                                                                                       }
                                                                                       addr190:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc8_ && Base64))
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                §§goto(addr205);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr339);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    addr156:
                                                                                 }
                                                                                 §§goto(addr340);
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        addr130:
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  addr126:
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   addr108:
                                                }
                                                else if(_loc3_[_loc7_ + 1] == 64)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr126);
                                                   }
                                                   addr216:
                                                }
                                                else
                                                {
                                                   _loc2_.writeByte(_loc4_[_loc7_]);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   break loop10;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr130);
                                       }
                                       addr243:
                                       while(true)
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr259);
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr379);
               }
               §§goto(addr289);
            }
            §§goto(addr156);
         }
         return _loc2_;
      }
   }
}
