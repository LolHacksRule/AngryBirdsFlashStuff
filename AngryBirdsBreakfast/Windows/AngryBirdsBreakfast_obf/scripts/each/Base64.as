package each
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §["%§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §["%§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         return §`d§(_loc2_);
      }
      
      public static function §`d§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc8_ && _loc2_))
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
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          addr312:
                                          do
                                          {
                                             if(!_loc9_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(param1.bytesAvailable > 0);
                                             if(_loc8_ && _loc2_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          while(_loc9_ || _loc3_);
                                          
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                             while(true)
                                             {
                                                _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                loop13:
                                                while(!_loc8_)
                                                {
                                                   _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                   while(true)
                                                   {
                                                      _loc4_[3] = _loc3_[2] & 63;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(uint(_loc3_.length));
                                                         if(_loc9_)
                                                         {
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            _loc6_ = §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(!(_loc9_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr118:
                                                                     while(true)
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(uint(§§pop()));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr334:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           addr122:
                                                                        }
                                                                        _loc4_[_loc6_ + 1] = 64;
                                                                        continue loop15;
                                                                     }
                                                                     addr164:
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr312);
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= _loc4_.length)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(_loc2_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop() + §["%§.charAt(_loc4_[_loc7_]));
                                                            }
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break;
                                                                     addr329:
                                                                  }
                                                                  §§push(_loc7_);
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(uint(§§pop()));
                                                                     if(!(_loc9_ || param1))
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr97);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           addr319:
                                                                           _loc5_ = §§pop();
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           §§goto(addr150);
                                                                        }
                                                                        addr149:
                                                                        §§goto(addr97);
                                                                     }
                                                                     §§goto(addr118);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr149);
                                                                           §§push(uint(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           addr318:
                                                                           §§push(uint(§§pop()));
                                                                        }
                                                                     }
                                                                     addr146:
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr122);
                                                            }
                                                            §§goto(addr318);
                                                            §§push(§§pop() + 1);
                                                         }
                                                      }
                                                      continue loop5;
                                                      if(!(_loc9_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                       }
                                       §§goto(addr329);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr191);
         }
         return _loc2_;
      }
      
      public static function §>7§(param1:String) : String
      {
         var _loc2_:ByteArray = §!,§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §!,§(param1:String) : ByteArray
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
            if(!(_loc8_ && Base64))
            {
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc9_)
                        {
                           if(!(_loc8_ && param1))
                           {
                              if(_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    _loc2_.position = 0;
                                    addr78:
                                    if(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       loop24:
                                       while(true)
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             loop20:
                                             while(true)
                                             {
                                                §§push(4);
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc9_ || Base64)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr271:
                                                               §§push(_loc5_);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() + _loc6_);
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() < param1.length);
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        _loc3_[_loc6_] = §["%§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc9_ || Base64)
                                                                                 {
                                                                                    §§push(uint(§§pop()));
                                                                                    loop5:
                                                                                    for(; !(_loc8_ && _loc3_); while(true)
                                                                                    {
                                                                                       if(_loc9_ || Base64)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          break loop4;
                                                                                       }
                                                                                       continue loop5;
                                                                                    },_loc7_ = §§pop(),while(true)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                       §§goto(addr167);
                                                                                    },addr167:)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       loop6:
                                                                                       while(!_loc8_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             addr85:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                if(§§pop() >= _loc4_.length)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(!(_loc8_ && Base64))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            addr103:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ && param1)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(4);
                                                                                                                  if(_loc8_ && param1)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           addr144:
                                                                                                                           while(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr143:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr324:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop()));
                                                                                                                        }
                                                                                                                        addr324:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop()));
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr157:
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr101:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                      §§goto(addr324);
                                                                                                   }
                                                                                                   addr90:
                                                                                                }
                                                                                                else if(_loc3_[_loc7_ + 1] == 64)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr101);
                                                                                                   }
                                                                                                   addr205:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc9_ || param1))
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   addr211:
                                                                                                }
                                                                                                §§goto(addr157);
                                                                                             }
                                                                                             addr194:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       break loop4;
                                                                                    }
                                                                                    addr354:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 §§goto(addr356);
                                                                              }
                                                                              if(_loc8_ && _loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr324);
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         addr319:
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr319);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr354);
                  }
                  §§goto(addr85);
               }
               §§goto(addr103);
            }
            §§goto(addr143);
         }
         return _loc2_;
      }
   }
}
