package §>K§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const § !9§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !9§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            if(!_loc2_)
            {
               version = "1.1.0";
            }
         }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc3_ && param1))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §!"§(_loc2_);
      }
      
      public static function §!"§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc9_ && Base64))
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
               if(!_loc9_)
               {
                  §§push(uint(§§pop()));
                  if(_loc8_ || param1)
                  {
                     _loc5_ = §§pop();
                     if(_loc8_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(3);
                           if(!_loc9_)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr106:
                                       §§pop();
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr118:
                                          if(param1.bytesAvailable <= 0)
                                          {
                                             if(_loc8_)
                                             {
                                                _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                                _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                                if(!(_loc9_ && Base64))
                                                {
                                                   addr180:
                                                   _loc4_[3] = _loc3_[2] & 63;
                                                   addr188:
                                                   §§push(uint(_loc3_.length));
                                                   if(_loc8_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr231:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         break loop1;
                                                      }
                                                      addr231:
                                                   }
                                                   _loc7_ = §§pop();
                                                }
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   while(§§pop() < _loc4_.length)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() + § !9§.charAt(_loc4_[_loc7_]));
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§push(_loc7_);
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() + 1);
                                                      while(true)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc3_[_loc5_] = param1.readUnsignedByte();
                                             §§push(_loc5_ + 1);
                                             if(_loc8_ || Base64)
                                             {
                                                continue;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr231);
                                                }
                                                break;
                                                addr217:
                                                while(true)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc8_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr231);
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr106);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              _loc4_[_loc6_ + 1] = 64;
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(_loc6_);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§goto(addr217);
                                 }
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr188);
                           §§push(uint(0));
                           §§goto(addr264);
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr231);
                  }
                  §§goto(addr217);
               }
               §§goto(addr235);
            }
            §§goto(addr180);
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = §#!J§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §#!J§(param1:String) : ByteArray
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
            loop1:
            while(true)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr283);
               }
               §§push(0);
               if(!(_loc9_ && Base64))
               {
                  §§push(uint(§§pop()));
                  if(_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc8_ || _loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(4);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(§§pop() < §§pop());
                              if(!_loc9_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       §§push(_loc5_);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + _loc6_);
                                          if(_loc8_)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop() < param1.length);
                                                addr124:
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                         if(!_loc9_)
                                                         {
                                                            _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                            _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                            if(_loc9_ && param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(uint(0));
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     loop7:
                                                                     while(§§pop() < _loc4_.length)
                                                                     {
                                                                        if(_loc3_[_loc7_ + 1] == 64)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        addr226:
                                                                        _loc2_.writeByte(_loc4_[_loc7_]);
                                                                        addr226:
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           addr268:
                                                                           break loop2;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(uint(§§pop()));
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr270:
                                                                           addr270:
                                                                           §§push(uint(§§pop()));
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                     }
                                                                     break loop4;
                                                                     addr264:
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      break;
                                                   }
                                                   _loc3_[_loc6_] = § !9§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                   if(!(_loc8_ || Base64))
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc6_);
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr268);
                                                   §§goto(addr268);
                                                   continue loop3;
                                                }
                                                §§goto(addr268);
                                             }
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                              }
                              §§goto(addr124);
                           }
                           break;
                           _loc6_ = uint(§§pop());
                        }
                        §§goto(addr270);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr234);
               }
               §§goto(addr199);
            }
            _loc2_.position = 0;
            addr283:
            return _loc2_;
         }
      }
   }
}
