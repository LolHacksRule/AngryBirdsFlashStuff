package §_-e3§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const § true§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § true§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            if(!(_loc1_ && _loc2_))
            {
               version = "1.1.0";
            }
         }
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(_loc3_ || param1)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §_-UG§(_loc2_);
      }
      
      public static function §_-UG§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(!(_loc9_ && param1))
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
               §§push(uint(§§pop()));
               if(_loc8_)
               {
                  _loc5_ = §§pop();
                  while(true)
                  {
                     §§push(_loc5_);
                  }
                  addr72:
               }
               loop2:
               while(true)
               {
                  §§push(3);
                  if(!_loc9_)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§pop();
                              §§push(param1.bytesAvailable > 0);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        _loc3_[_loc5_] = param1.readUnsignedByte();
                        §§push(_loc5_ + 1);
                        if(!_loc9_)
                        {
                           §§push(uint(§§pop()));
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              addr89:
                              _loc4_[0] = (_loc3_[0] & 252) >> 2;
                              _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                              if(_loc8_)
                              {
                                 _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                 if(_loc8_ || Base64)
                                 {
                                    _loc4_[3] = _loc3_[2] & 63;
                                    §§push(uint(_loc3_.length));
                                    if(_loc8_)
                                    {
                                       _loc6_ = §§pop();
                                       if(!(_loc9_ && Base64))
                                       {
                                          addr201:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr202:
                                             addr236:
                                             while(true)
                                             {
                                                break loop2;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr244:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc9_ && Base64)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr252:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                   addr244:
                                                }
                                                while(§§pop() < _loc4_.length)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() + § true§.charAt(_loc4_[_loc7_]));
                                                   }
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc8_ || Base64)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr235:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr244);
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr201:
                                       }
                                       addr214:
                                       §§goto(addr259);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr235);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr89);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr205:
                     §§push(uint(0));
                     if(!(_loc9_ && param1))
                     {
                        _loc7_ = §§pop();
                        §§goto(addr214);
                     }
                     §§goto(addr244);
                  }
                  else
                  {
                     _loc4_[_loc6_ + 1] = 64;
                     §§push(_loc6_);
                     if(!(_loc8_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§§pop() + 1);
                     if(_loc8_ || _loc3_)
                     {
                        _loc6_ = uint(§§pop());
                        if(!(_loc9_ && _loc3_))
                        {
                           §§goto(addr201);
                        }
                        else
                        {
                           §§goto(addr214);
                        }
                     }
                  }
                  §§goto(addr236);
               }
            }
            §§goto(addr205);
         }
         return _loc2_;
      }
      
      public static function §_-Ae§(param1:String) : String
      {
         var _loc2_:ByteArray = §_-bs§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §_-bs§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:uint = 0;
         var _loc7_:* = uint(0);
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:* = uint(0);
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               if(§§pop() >= param1.length)
               {
                  _loc2_.position = 0;
                  return _loc2_;
               }
               §§push(0);
               if(_loc9_ || Base64)
               {
                  _loc6_ = §§pop();
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(4);
                     if(_loc9_)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc9_ || param1)
                        {
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr83:
                                 §§pop();
                                 §§push(_loc5_ + _loc6_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr97:
                                    if(§§pop() >= param1.length)
                                    {
                                       _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                          if(_loc9_)
                                          {
                                             _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                             addr163:
                                             §§push(uint(0));
                                             if(!_loc8_)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc9_ || _loc3_)
                                                {
                                                   addr174:
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop() < _loc4_.length)
                                                      {
                                                         if(_loc3_[_loc7_ + 1] == 64)
                                                         {
                                                            addr183:
                                                            break;
                                                         }
                                                         _loc2_.writeByte(_loc4_[_loc7_]);
                                                         if(!(_loc9_ || Base64))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc7_);
                                                         if(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(_loc8_)
                                                               {
                                                                  addr213:
                                                                  §§push(uint(§§pop()));
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(uint(§§pop()));
                                                               }
                                                            }
                                                            addr199:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                §§push(_loc5_);
                                                break;
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr183);
                                    }
                                    else
                                    {
                                       _loc3_[_loc6_] = § true§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                       §§push(_loc6_ + 1);
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr202);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr83);
                     }
                     break;
                  }
                  §§goto(addr213);
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr163);
            }
            _loc5_ = §§pop();
         }
      }
   }
}
