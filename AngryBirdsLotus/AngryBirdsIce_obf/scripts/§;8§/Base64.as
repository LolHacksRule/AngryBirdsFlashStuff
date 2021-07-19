package §;8§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §^!%§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!%§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc2_ && Base64);
            
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
         if(!_loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §`J§(_loc2_);
      }
      
      public static function §`J§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:String = "";
         var _loc4_:Array = new Array(4);
         if(!_loc9_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
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
                     §§push(_loc5_);
                     §§push(3);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr261:
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                 _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                 loop6:
                                 while(!(_loc9_ && _loc2_))
                                 {
                                    _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                    do
                                    {
                                       _loc4_[3] = _loc3_[2] & 63;
                                    }
                                    while(!(_loc8_ || param1));
                                    
                                    §§push(uint(_loc3_.length));
                                    loop8:
                                    while(_loc8_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc8_ || _loc3_)
                                       {
                                          do
                                          {
                                             §§push(_loc6_);
                                             while(_loc8_ || _loc3_)
                                             {
                                                §§push(3);
                                                if(_loc9_ && _loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(uint(§§pop()));
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            addr66:
                                                            while(true)
                                                            {
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr295:
                                                                  while(§§pop() < _loc4_.length)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   continue loop1;
                                                }
                                                _loc4_[_loc6_ + 1] = 64;
                                                §§goto(addr152);
                                             }
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop8;
                                                }
                                                §§goto(addr124);
                                                §§push(§§pop() + 1);
                                                §§goto(addr152);
                                             }
                                             §§goto(addr124);
                                          }
                                          while(_loc8_);
                                          
                                          continue loop6;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              _loc3_[_loc5_] = param1.readUnsignedByte();
                              §§push(_loc5_ + 1);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr261);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = §4U§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §4U§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:uint = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_)
            {
               continue;
            }
            if(!_loc9_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(§§pop() >= param1.length)
                  {
                     _loc2_.position = 0;
                     if(_loc8_ || Base64)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc8_)
                              {
                                 if(§§pop() >= _loc4_.length)
                                 {
                                    if(_loc8_)
                                    {
                                       addr81:
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          §§push(4);
                                          if(_loc8_ || Base64)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc8_ || Base64)
                                             {
                                                break;
                                             }
                                             addr105:
                                             while(true)
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   break loop2;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() < param1.length);
                                                      if(_loc8_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                     while(true)
                                                                     {
                                                                        _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        addr286:
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           addr287:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     addr230:
                                                                     addr193:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_ + 1);
                                                                        addr266:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = uint(§§pop());
                                                                        }
                                                                     }
                                                                     addr282:
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr233:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(4);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc5_);
                                                                                 continue loop5;
                                                                              }
                                                                              addr261:
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr207:
                                                            }
                                                            else
                                                            {
                                                               _loc3_[_loc6_] = §^!%§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr266);
                                                }
                                             }
                                          }
                                          §§goto(addr241);
                                       }
                                       §§push(uint(§§pop()));
                                       continue loop0;
                                       addr83:
                                    }
                                    §§goto(addr193);
                                 }
                                 else if(_loc3_[_loc7_ + 1] == 64)
                                 {
                                    §§goto(addr81);
                                 }
                                 else
                                 {
                                    _loc2_.writeByte(_loc4_[_loc7_]);
                                    §§push(_loc7_ + 1);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr196);
                           }
                           continue;
                        }
                        §§goto(addr207);
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr286);
               }
               §§goto(addr233);
            }
            §§goto(addr83);
         }
         return _loc2_;
      }
   }
}
