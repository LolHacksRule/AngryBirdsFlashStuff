package §3a§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §7T§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7T§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            if(!_loc2_)
            {
               addr23:
               version = "1.1.0";
            }
            return;
         }
         §§goto(addr23);
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
         if(_loc3_ || _loc2_)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §2!K§(_loc2_);
      }
      
      public static function §2!K§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
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
            if(_loc8_ || Base64)
            {
               _loc5_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc8_ || _loc3_)
                  {
                     §§push(3);
                     if(_loc8_)
                     {
                        §§push(§§pop() < §§pop());
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 §§pop();
                                 §§push(param1.bytesAvailable > 0);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           if(_loc8_ || param1)
                           {
                              _loc4_[0] = (_loc3_[0] & 252) >> 2;
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                 addr157:
                                 _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                 if(_loc8_)
                                 {
                                    addr175:
                                    _loc4_[3] = _loc3_[2] & 63;
                                    if(!(_loc9_ && param1))
                                    {
                                       _loc6_ = _loc3_.length;
                                       addr194:
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc9_ && param1))
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(3);
                                                addr233:
                                                while(§§pop() < §§pop())
                                                {
                                                   _loc4_[_loc6_ + 1] = 64;
                                                   if(_loc8_ || Base64)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc8_ || Base64)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr220:
                                                         }
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
                                                                     break loop1;
                                                                  }
                                                               }
                                                               addr272:
                                                            }
                                                            break loop1;
                                                         }
                                                         addr269:
                                                      }
                                                      addr236:
                                                      _loc7_ = §§pop();
                                                      §§goto(addr280);
                                                   }
                                                   break loop4;
                                                }
                                                break;
                                             }
                                             addr235:
                                             §§goto(addr236);
                                             §§push(uint(0));
                                             addr232:
                                          }
                                          break loop1;
                                       }
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr157);
                        }
                        else
                        {
                           _loc3_[_loc5_] = param1.readUnsignedByte();
                           §§push(_loc5_);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc8_)
                              {
                                 §§push(uint(§§pop()));
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr272);
                              }
                              else
                              {
                                 §§goto(addr220);
                              }
                           }
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr233);
                  }
                  break;
               }
               loop3:
               while(true)
               {
                  if(§§pop() >= _loc4_.length)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §7T§.charAt(_loc4_[_loc7_]));
                     }
                     _loc2_ = §§pop();
                     if(_loc8_ || Base64)
                     {
                        §§goto(addr269);
                        §§push(_loc7_ + 1);
                     }
                     break loop3;
                  }
               }
               §§goto(addr280);
            }
            §§goto(addr235);
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = §5!+§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §5!+§(param1:String) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:uint = 0;
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
                     addr259:
                     _loc2_.position = 0;
                  }
                  return _loc2_;
               }
               §§push(0);
               if(!(_loc9_ && param1))
               {
                  _loc6_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        §§push(4);
                        if(!(_loc9_ && Base64))
                        {
                           §§push(§§pop() < §§pop());
                           if(!(_loc9_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    addr113:
                                    §§pop();
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(_loc5_ + _loc6_);
                                       if(_loc8_)
                                       {
                                          addr139:
                                          if(§§pop() >= param1.length)
                                          {
                                             _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                             _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                             if(!_loc9_)
                                             {
                                                _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                addr222:
                                                §§push(uint(0));
                                                if(_loc8_)
                                                {
                                                   _loc7_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc7_ >= _loc4_.length)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr239:
                                                            §§push(_loc5_);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      else if(_loc3_[_loc7_ + 1] == 64)
                                                      {
                                                         §§goto(addr239);
                                                      }
                                                      else
                                                      {
                                                         addr205:
                                                         _loc2_.writeByte(_loc4_[_loc7_]);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   addr223:
                                                }
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   §§goto(addr223);
                                                }
                                                addr222:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_ + 1);
                                                if(_loc9_)
                                                {
                                                   addr214:
                                                   break;
                                                   addr214:
                                                }
                                                while(true)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(!(_loc8_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr222);
                                                }
                                                continue loop1;
                                                §§goto(addr205);
                                             }
                                             addr249:
                                             §§push(uint(§§pop()));
                                             if(_loc8_)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          _loc3_[_loc6_] = §7T§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                          if(_loc9_ && _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc6_);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                §§push(uint(§§pop()));
                                                if(_loc9_ && param1)
                                                {
                                                   break loop1;
                                                }
                                                continue;
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr239);
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr113);
                        }
                        addr248:
                        §§goto(addr249);
                        §§push(§§pop() + §§pop());
                     }
                     break;
                  }
                  §§goto(addr248);
                  §§push(4);
               }
               §§goto(addr222);
               §§goto(addr259);
            }
            _loc5_ = §§pop();
         }
      }
   }
}
