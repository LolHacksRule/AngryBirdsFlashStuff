package §`K§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §=C§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §=C§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(!(_loc2_ || _loc1_));
            
         }
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
         if(!_loc4_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §,v§(_loc2_);
      }
      
      public static function §,v§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:uint = 0;
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!_loc8_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
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
                        loop5:
                        while(_loc9_)
                        {
                           §§push(3);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(!(_loc8_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       addr291:
                                       while(true)
                                       {
                                          §§push(param1.bytesAvailable > 0);
                                          if(_loc9_ || Base64)
                                          {
                                             break;
                                          }
                                          continue loop15;
                                       }
                                    }
                                    addr290:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       _loc3_[_loc5_] = param1.readUnsignedByte();
                                       §§push(_loc5_);
                                    }
                                    _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                    _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                    _loc4_[3] = _loc3_[2] & 63;
                                    if(!(_loc9_ || _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc9_ || _loc2_))
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc3_.length;
                                    loop8:
                                    while(_loc9_ || _loc2_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             continue loop6;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop() >= _loc4_.length)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc2_);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop() + §=C§.charAt(_loc4_[_loc7_]));
                                             }
                                             _loc2_ = §§pop();
                                             §§push(_loc7_ + 1);
                                             if(_loc8_)
                                             {
                                                addr145:
                                                _loc6_ = §§pop();
                                                addr147:
                                                if(_loc9_)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop8;
                                             }
                                             if(!(_loc9_ || _loc3_))
                                             {
                                                addr295:
                                                §§push(uint(§§pop()));
                                                break loop9;
                                             }
                                             §§push(uint(§§pop()));
                                             if(_loc8_ && Base64)
                                             {
                                                continue;
                                             }
                                             if(!(_loc9_ || _loc3_))
                                             {
                                                break;
                                             }
                                             _loc7_ = §§pop();
                                             if(!_loc9_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc9_)
                                             {
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr82:
                                                }
                                                while(true)
                                                {
                                                   continue loop13;
                                                }
                                             }
                                             else
                                             {
                                                addr139:
                                                while(true)
                                                {
                                                }
                                                addr139:
                                             }
                                             §§goto(addr82);
                                          }
                                          continue loop5;
                                       }
                                       if(_loc8_ && param1)
                                       {
                                          break loop4;
                                       }
                                       _loc5_ = §§pop();
                                       continue loop4;
                                    }
                                    §§goto(addr291);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr290);
                           }
                        }
                        §§goto(addr295);
                     }
                     continue loop2;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §]t§(param1:String) : String
      {
         var _loc2_:ByteArray = §4U§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §4U§(param1:String) : ByteArray
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
                  if(!_loc8_)
                  {
                     if(!_loc8_)
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(!_loc8_)
                           {
                              _loc2_.position = 0;
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr211:
                                    while(true)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          §§push(§§pop() + _loc6_);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop() < param1.length);
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             if(!(_loc8_ && Base64))
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc3_[_loc6_] = §=C§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                      break;
                                                   }
                                                   _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                   _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                   _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                   if(_loc8_ && Base64)
                                                   {
                                                      break;
                                                   }
                                                   §§push(0);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      loop11:
                                                      while(_loc9_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               addr76:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(§§pop() >= _loc4_.length)
                                                                  {
                                                                     addr81:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr83:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || Base64)
                                                                           {
                                                                              §§push(4);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(uint(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr100:
                                                                                       while(_loc8_ && param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr251:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                             }
                                                                                             break loop11;
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                          addr119:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             break loop11;
                                                                                          }
                                                                                          addr272:
                                                                                       }
                                                                                    }
                                                                                    addr111:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(4);
                                                                                 }
                                                                                 addr253:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 addr265:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr253);
                                                                              }
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                        §§goto(addr81);
                                                                     }
                                                                     addr82:
                                                                  }
                                                                  else
                                                                  {
                                                                     if(_loc3_[_loc7_ + 1] == 64)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     _loc2_.writeByte(_loc4_[_loc7_]);
                                                                     §§push(_loc7_ + 1);
                                                                  }
                                                                  §§goto(addr111);
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_ = uint(§§pop());
                                                      }
                                                      addr292:
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§push(_loc6_);
                                                while(true)
                                                {
                                                   §§goto(addr272);
                                                }
                                                addr271:
                                             }
                                             §§goto(addr265);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr292);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr76);
               }
               §§goto(addr83);
            }
            §§goto(addr99);
         }
         return _loc2_;
      }
   }
}
