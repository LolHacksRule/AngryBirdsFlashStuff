package §+!c§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §3S§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3S§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc2_ && Base64);
            
         }
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
         return §3q§(_loc2_);
      }
      
      public static function §3q§(param1:ByteArray) : String
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
               while(true)
               {
                  §§push(uint(§§pop()));
                  addr395:
                  do
                  {
                     _loc5_ = §§pop();
                  }
                  while(!_loc8_);
                  
                  continue loop0;
                  addr160:
                  §§push(0);
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  §§push(uint(§§pop()));
                  loop18:
                  while(true)
                  {
                     if(_loc9_ || _loc2_)
                     {
                        _loc7_ = §§pop();
                        if(!(_loc8_ && _loc2_))
                        {
                           addr184:
                           if(!(_loc8_ && param1))
                           {
                              while(true)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    addr400:
                                    while(true)
                                    {
                                       if(§§pop() >= _loc4_.length)
                                       {
                                          continue loop0;
                                       }
                                       §§push(_loc2_);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(§§pop() + §3S§.charAt(_loc4_[_loc7_]));
                                       }
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc8_ && Base64))
                                          {
                                             continue loop18;
                                          }
                                          addr77:
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                if(!(_loc9_ || param1))
                                                {
                                                   addr380:
                                                   §§push(uint(§§pop() + 1));
                                                }
                                                _loc7_ = §§pop();
                                                if(_loc8_ && param1)
                                                {
                                                   continue loop0;
                                                }
                                                continue;
                                                break;
                                             }
                                             break;
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§push(3);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(§§pop() < §§pop());
                                                loop7:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr367:
                                                         do
                                                         {
                                                            §§push(param1.bytesAvailable > 0);
                                                            if(_loc8_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         while(!(_loc8_ && _loc3_));
                                                         
                                                         continue loop7;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                            addr359:
                                                            addr221:
                                                            while(true)
                                                            {
                                                               _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                               if(_loc9_ || param1)
                                                               {
                                                                  _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     _loc4_[3] = _loc3_[2] & 63;
                                                                     break loop18;
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            if(_loc8_ && Base64)
                                                            {
                                                               continue;
                                                            }
                                                            addr228:
                                                            if(_loc9_ || Base64)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc8_ && Base64)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr160);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr367);
                                                                              }
                                                                           }
                                                                           addr103:
                                                                           if(!(_loc9_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           addr392:
                                                                           §§goto(addr380);
                                                                           §§push(_loc5_);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc4_[_loc6_ + 1] = 64;
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr252:
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              addr212:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr380);
                                                                              }
                                                                           }
                                                                           addr220:
                                                                           _loc6_ = §§pop();
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop16;
                                                                              §§goto(addr252);
                                                                           }
                                                                           addr272:
                                                                        }
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  while(!(_loc8_ && _loc3_))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                            }
                                                            addr383:
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                               §§goto(addr383);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_[_loc5_] = param1.readUnsignedByte();
                                                         §§goto(addr392);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr383);
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr220);
                  }
                  while(true)
                  {
                     §§goto(addr264);
                     §§goto(addr184);
                  }
               }
            }
            while(true)
            {
               §§goto(addr360);
            }
         }
         return _loc2_;
      }
      
      public static function §#[§(param1:String) : String
      {
         var _loc2_:ByteArray = §'!_§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §'!_§(param1:String) : ByteArray
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
            if(_loc9_ || _loc3_)
            {
               if(!_loc8_)
               {
                  if(_loc9_ || param1)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc9_ || param1)
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              _loc2_.position = 0;
                              addr84:
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                       while(!_loc9_)
                                       {
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr328:
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(4);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr345:
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr284:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc6_);
                                                                        addr286:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < param1.length);
                                                                           if(_loc8_ && _loc3_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop13;
                                                               }
                                                               addr365:
                                                               _loc3_[_loc6_] = §3S§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr348:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     addr349:
                                                                     while(true)
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      addr341:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr351:
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                       _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                       loop16:
                                       while(true)
                                       {
                                          _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                          addr254:
                                          while(true)
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(0);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop2:
                                                   for(; !(_loc8_ && _loc2_); if(_loc8_ && Base64)
                                                   {
                                                      continue;
                                                   },if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§goto(addr153);
                                                   })
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            addr93:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= _loc4_.length)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr104:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || Base64)
                                                                                 {
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr157:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      addr158:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            if(!(_loc8_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(uint(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  addr184:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§goto(addr365);
                                                                                                                     }
                                                                                                                     §§goto(addr351);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr183:
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr286);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr183);
                                                                                             }
                                                                                             addr153:
                                                                                             _loc5_ = §§pop();
                                                                                             continue loop0;
                                                                                             addr125:
                                                                                          }
                                                                                          §§goto(addr158);
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                              addr213:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr219:
                                                                        }
                                                                        §§goto(addr157);
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  addr96:
                                                               }
                                                               else
                                                               {
                                                                  if(_loc3_[_loc7_ + 1] == 64)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  _loc2_.writeByte(_loc4_[_loc7_]);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr328);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                   addr369:
                                                }
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr323);
                                             }
                                             §§goto(addr371);
                                             continue loop16;
                                          }
                                       }
                                       addr323:
                                    }
                                    §§goto(addr345);
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr369);
                  }
                  §§goto(addr93);
               }
               §§goto(addr104);
            }
            §§goto(addr125);
         }
         return _loc2_;
      }
   }
}
