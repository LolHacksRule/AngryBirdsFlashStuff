package §+!"§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §]#§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]#§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
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
         if(!(_loc2_ && _loc2_))
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
         if(!(_loc4_ && param1))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return §!V§(_loc2_);
      }
      
      public static function §!V§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc9_ || Base64)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            §§push(0);
            if(_loc9_)
            {
               §§push(uint(§§pop()));
               if(_loc9_ || Base64)
               {
                  _loc5_ = §§pop();
                  if(_loc9_ || Base64)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(3);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(§§pop() < §§pop());
                              if(!_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§pop();
                                       §§push(param1.bytesAvailable > 0);
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 _loc4_[0] = (_loc3_[0] & 252) >> 2;
                                 if(_loc9_)
                                 {
                                    _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                    if(!_loc8_)
                                    {
                                       _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                       if(_loc9_ || Base64)
                                       {
                                          _loc4_[3] = _loc3_[2] & 63;
                                          addr203:
                                          §§push(uint(_loc3_.length));
                                          if(_loc9_)
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc9_)
                                             {
                                                addr211:
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                §§push(3);
                                                addr234:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!(_loc9_ || Base64))
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc4_[_loc6_ + 1] = 64;
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc6_ + 1);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_ = uint(§§pop());
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(!_loc8_)
                                                   {
                                                      break loop1;
                                                   }
                                                   addr289:
                                                   addr276:
                                                   while(true)
                                                   {
                                                      if(§§pop() < _loc4_.length)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc8_ && Base64))
                                                         {
                                                            §§push(§§pop() + §]#§.charAt(_loc4_[_loc7_]));
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§push(_loc7_);
                                                      }
                                                      continue loop0;
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      break loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                    }
                                    addr243:
                                    _loc7_ = uint(0);
                                    while(true)
                                    {
                                       §§goto(addr289);
                                    }
                                    addr288:
                                 }
                                 §§goto(addr203);
                              }
                              else
                              {
                                 _loc3_[_loc5_] = param1.readUnsignedByte();
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!(_loc9_ || Base64))
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr230);
                                       addr81:
                                    }
                                 }
                                 addr78:
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr234);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc7_ = §§pop();
                        if(_loc8_ && _loc2_)
                        {
                           break;
                        }
                        §§goto(addr288);
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               §§goto(addr81);
            }
            §§goto(addr243);
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = §71§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §71§(param1:String) : ByteArray
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
                  if(!(_loc9_ && param1))
                  {
                     addr309:
                     _loc2_.position = 0;
                  }
                  §§goto(addr312);
               }
               §§push(0);
               if(_loc8_ || Base64)
               {
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(4);
                        if(_loc8_ || _loc3_)
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc8_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    addr123:
                                    §§pop();
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(_loc5_ + _loc6_);
                                       if(!_loc9_)
                                       {
                                          addr139:
                                          if(§§pop() >= param1.length)
                                          {
                                             if(!_loc9_)
                                             {
                                                _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                if(_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc3_[_loc6_] = §]#§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§push(_loc6_ + 1);
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(_loc8_ || param1)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr289:
                                                   §§push(uint(§§pop()));
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                   addr242:
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(uint(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      addr284:
                                                      break;
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            if(§§pop() >= _loc4_.length)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr309);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(_loc3_[_loc7_ + 1] != 64)
                                                               {
                                                                  _loc2_.writeByte(_loc4_[_loc7_]);
                                                                  §§push(_loc7_);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr228:
                                                            }
                                                         }
                                                         break loop3;
                                                      }
                                                      addr261:
                                                   }
                                                   §§push(_loc5_);
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                addr288:
                                                §§goto(addr289);
                                                §§push(§§pop() + 4);
                                             }
                                             else
                                             {
                                                addr188:
                                                _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                if(_loc8_ || _loc2_)
                                                {
                                                   addr210:
                                                   _loc7_ = uint(0);
                                                   if(_loc8_ || Base64)
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr284);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr289);
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr288);
                     }
                  }
                  addr312:
                  return _loc2_;
               }
               §§goto(addr210);
               §§goto(addr309);
            }
            _loc5_ = §§pop();
         }
      }
   }
}
