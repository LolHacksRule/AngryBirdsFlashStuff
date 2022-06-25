package §'N§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §1!S§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Base64)
         {
            §1!S§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc1_);
            
         }
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
         if(!(_loc3_ && param1))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §5!`§(_loc2_);
      }
      
      public static function §5!`§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc8_ && Base64))
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(_loc8_)
            {
               continue;
            }
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
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr375:
                                          while(true)
                                          {
                                             §§push(param1.bytesAvailable > 0);
                                             if(!(_loc8_ && param1))
                                             {
                                                continue loop9;
                                             }
                                             addr328:
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                loop13:
                                                while(!_loc8_)
                                                {
                                                   _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc4_[3] = _loc3_[2] & 63;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(uint(_loc3_.length));
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && Base64))
                                                            {
                                                               _loc6_ = §§pop();
                                                               for(; !_loc8_; if(_loc8_ && param1)
                                                               {
                                                                  continue;
                                                               },if(false)
                                                               {
                                                                  §§goto(addr127);
                                                               },§§goto(addr395))
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(3);
                                                                        if(!(_loc9_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(uint(§§pop()));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr395:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr396:
                                                                                                addr379:
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= _loc4_.length)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr206:
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + §1!S§.charAt(_loc4_[_loc7_]));
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ && param1)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc8_ && param1)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(!(_loc8_ && Base64))
                                                                                                         {
                                                                                                            if(!(_loc9_ || Base64))
                                                                                                            {
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            §§push(uint(§§pop()));
                                                                                                            if(!(_loc8_ && Base64))
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§push(uint(§§pop()));
                                                                                                      }
                                                                                                      if(_loc8_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      _loc6_ = §§pop();
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr380:
                                                                                                      _loc5_ = §§pop();
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   §§goto(addr209);
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                          }
                                                                                          addr127:
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr375);
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        _loc4_[_loc6_ + 1] = 64;
                                                                        continue loop14;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               continue loop12;
                                                            }
                                                            addr378:
                                                            §§push(§§pop() + 1);
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr390:
                                             §§push(_loc5_);
                                             §§goto(addr378);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_[_loc5_] = param1.readUnsignedByte();
                                       }
                                       §§goto(addr390);
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
         return _loc2_;
      }
      
      public static function § !5§(param1:String) : String
      {
         var _loc2_:ByteArray = §@b§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §@b§(param1:String) : ByteArray
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
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc9_)
                        {
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 _loc2_.position = 0;
                                 addr66:
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(_loc9_ || param1)
                                    {
                                       break;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr104:
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(4);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr123:
                                                         §§push(uint(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§push(4);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr316:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            addr343:
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               addr344:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  addr345:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                  }
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr361:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(_loc5_);
                                                                                                   addr265:
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc6_);
                                                                                                      addr267:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() < param1.length);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr315:
                                                                                             }
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
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                                                            loop4:
                                                                                                            while(!_loc8_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           addr83:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= _loc4_.length)
                                                                                                                                 {
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 if(_loc3_[_loc7_ + 1] == 64)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || Base64)
                                                                                                                                       {
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    addr194:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    _loc2_.writeByte(_loc4_[_loc7_]);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                    }
                                                                                                                                    addr208:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 addr151:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && Base64))
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(uint(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && Base64))
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr181:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr345);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr265);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr161:
                                                                                                                                       }
                                                                                                                                       §§goto(addr344);
                                                                                                                                    }
                                                                                                                                    §§goto(addr267);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr104);
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                                  addr214:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr365:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop()));
                                                                                                                  addr366:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr316);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr279:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_[_loc6_] = §1!S§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    addr306:
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               continue loop0;
                                                               addr131:
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         addr123:
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr66);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr365);
                  }
                  §§goto(addr161);
               }
               §§goto(addr83);
            }
            §§goto(addr123);
         }
         return _loc2_;
      }
   }
}
