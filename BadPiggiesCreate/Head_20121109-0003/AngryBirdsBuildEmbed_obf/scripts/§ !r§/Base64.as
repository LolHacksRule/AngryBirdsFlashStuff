package § !r§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const § g§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § g§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            if(_loc1_ || _loc2_)
            {
               addr28:
               version = "1.1.0";
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
         if(_loc4_ || _loc3_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §=G§(_loc2_);
      }
      
      public static function §=G§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc9_ && _loc2_))
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            §§push(0);
            if(_loc8_)
            {
               _loc5_ = §§pop();
               if(!(_loc9_ && param1))
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc9_)
                     {
                        §§push(3);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() < §§pop());
                           if(!(_loc9_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    addr118:
                                    §§pop();
                                    §§push(param1.bytesAvailable > 0);
                                 }
                              }
                              if(!§§pop())
                              {
                                 _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                 _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                    if(_loc8_ || _loc2_)
                                    {
                                       _loc4_[3] = _loc3_[2] & 63;
                                       if(!(_loc9_ && Base64))
                                       {
                                          §§push(uint(_loc3_.length));
                                          if(!(_loc9_ && Base64))
                                          {
                                             addr215:
                                             _loc6_ = §§pop();
                                             addr216:
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                break loop1;
                                                addr224:
                                                while(true)
                                                {
                                                   §§push(_loc6_ + 1);
                                                   if(!(_loc8_ || Base64))
                                                   {
                                                      break loop2;
                                                   }
                                                   _loc6_ = uint(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!(_loc8_ || _loc2_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr248:
                                                         §§push(_loc2_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + § g§.charAt(_loc4_[_loc7_]));
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                   addr277:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= _loc4_.length)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr248);
                                                }
                                             }
                                             addr237:
                                             addr274:
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr237);
                              }
                              else
                              {
                                 _loc3_[_loc5_] = param1.readUnsignedByte();
                                 §§push(_loc5_ + 1);
                                 if(!(_loc9_ && Base64))
                                 {
                                    §§push(uint(§§pop()));
                                    if(!(_loc9_ && Base64))
                                    {
                                       continue;
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr118);
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc9_)
                              {
                                 continue loop0;
                              }
                              _loc7_ = uint(0);
                              if(_loc9_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr285);
                           }
                           else
                           {
                              _loc4_[_loc6_ + 1] = 64;
                              §§goto(addr224);
                           }
                        }
                        addr239:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr239);
                  }
               }
               §§goto(addr224);
            }
            §§goto(addr243);
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = §>!s§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §>!s§(param1:String) : ByteArray
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
            loop1:
            while(§§pop() < param1.length)
            {
               §§push(0);
               if(_loc9_ || Base64)
               {
                  §§push(uint(§§pop()));
                  if(_loc9_ || Base64)
                  {
                     _loc6_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(4);
                        if(_loc9_)
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    addr107:
                                    §§pop();
                                    §§push(_loc5_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() + _loc6_);
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr118:
                                          §§push(§§pop() < param1.length);
                                          loop3:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                   if(_loc9_ || param1)
                                                   {
                                                      _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                      if(_loc9_)
                                                      {
                                                         _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                         addr197:
                                                         _loc7_ = uint(0);
                                                         if(_loc9_)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               addr274:
                                                               _loc5_ = §§pop();
                                                               continue loop0;
                                                               addr232:
                                                               do
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  §§push(_loc7_);
                                                                  continue loop7;
                                                               }
                                                               while(_loc8_);
                                                               
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr231:
                                                                     §§goto(addr232);
                                                                     §§push(uint(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     addr266:
                                                                     §§push(uint(§§pop()));
                                                                     if(!(_loc9_ || Base64))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr256:
                                                         §§push(_loc5_);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            break loop2;
                                                         }
                                                         continue loop1;
                                                         addr212:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr282);
                                             }
                                             _loc3_[_loc6_] = § g§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                             §§push(_loc6_);
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(!(_loc8_ && Base64))
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr231);
                                             }
                                             break;
                                             §§goto(addr231);
                                             §§goto(addr118);
                                          }
                                          if(§§pop() < _loc4_.length)
                                          {
                                             if(_loc3_[_loc7_ + 1] == 64)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr212);
                                             }
                                             _loc2_.writeByte(_loc4_[_loc7_]);
                                             if(!(_loc8_ && param1))
                                             {
                                                §§goto(addr225);
                                             }
                                             §§goto(addr256);
                                          }
                                          if(_loc8_)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr256);
                                          addr121:
                                       }
                                       §§goto(addr266);
                                    }
                                 }
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr107);
                        }
                        break;
                     }
                     §§goto(addr266);
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr232);
               }
               §§goto(addr197);
            }
            _loc2_.position = 0;
            addr282:
            return _loc2_;
         }
      }
   }
}
