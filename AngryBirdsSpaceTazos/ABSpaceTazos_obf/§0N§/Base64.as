package §0N§
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const §9!t§:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §9!t§ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            do
            {
               version = "1.1.0";
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function Base64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
         return §0;§(_loc2_);
      }
      
      public static function §0;§(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:* = uint(0);
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_ || _loc3_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!_loc9_)
            {
               §§push(0);
               while(true)
               {
                  §§push(uint(§§pop()));
                  addr351:
                  while(true)
                  {
                     _loc5_ = §§pop();
                  }
               }
               addr350:
            }
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
                        if(!(_loc9_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr330:
                           }
                           if(!§§pop())
                           {
                              if(!(_loc9_ && Base64))
                              {
                                 _loc4_[0] = (_loc3_[0] & 252) >> 2;
                              }
                              loop7:
                              while(true)
                              {
                                 _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                 loop8:
                                 while(true)
                                 {
                                    _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
                                    loop9:
                                    while(true)
                                    {
                                       _loc4_[3] = _loc3_[2] & 63;
                                       loop10:
                                       while(!(_loc9_ && param1))
                                       {
                                          §§push(uint(_loc3_.length));
                                          loop11:
                                          while(!_loc9_)
                                          {
                                             _loc6_ = §§pop();
                                             loop12:
                                             while(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   addr125:
                                                   addr191:
                                                   while(_loc8_)
                                                   {
                                                      if(!(_loc8_ || Base64))
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(3);
                                                         if(!(_loc8_ || _loc3_))
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(0);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(uint(§§pop()));
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr353:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr364:
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= _loc4_.length)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(_loc2_);
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + §9!t§.charAt(_loc4_[_loc7_]));
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 while(_loc8_ || Base64)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc8_ || Base64)
                                                                                    {
                                                                                       if(_loc8_ || Base64)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(uint(§§pop()));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr76:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr125);
                                                                                          }
                                                                                          §§goto(addr191);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr76);
                                                                                 }
                                                                                 §§goto(addr202);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr191);
                                                            §§push(_loc6_);
                                                            addr226:
                                                         }
                                                         _loc4_[_loc6_ + 1] = 64;
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr338);
                                                      continue loop11;
                                                   }
                                                   §§push(§§pop() + 1);
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                      addr199:
                                                      break;
                                                   }
                                                   §§push(uint(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc8_ || Base64)
                                                      {
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§goto(addr216);
                                                         }
                                                         §§push(_loc5_);
                                                         break loop11;
                                                         addr348:
                                                      }
                                                      continue loop12;
                                                      continue loop12;
                                                   }
                                                   continue loop5;
                                                   addr216:
                                                }
                                                _loc5_ = uint(§§pop());
                                                break loop10;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr338);
                                          §§push(§§pop() + 1);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              _loc3_[_loc5_] = param1.readUnsignedByte();
                           }
                           §§goto(addr348);
                        }
                        §§goto(addr330);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §+c§(param1:String) : String
      {
         var _loc2_:ByteArray = §9!n§(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function §9!n§(param1:String) : ByteArray
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
            if(!(_loc8_ && param1))
            {
               if(§§pop() >= param1.length)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     if(!(_loc8_ && param1))
                     {
                        if(_loc9_)
                        {
                           if(!_loc8_)
                           {
                              _loc2_.position = 0;
                              addr79:
                              if(_loc9_)
                              {
                                 break;
                              }
                              continue;
                           }
                           loop1:
                           while(true)
                           {
                              if(!(_loc8_ && Base64))
                              {
                                 §§push(0);
                                 if(_loc9_)
                                 {
                                    §§push(uint(§§pop()));
                                    loop2:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(_loc9_)
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(§§pop() >= _loc4_.length)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(4);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(uint(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc6_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         addr270:
                                                                                                         §§push(§§pop() < param1.length);
                                                                                                         if(_loc9_ || Base64)
                                                                                                         {
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  loop11:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
                                                                                                                     addr298:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
                                                                                                                        addr254:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              break loop11;
                                                                                                                           }
                                                                                                                           addr301:
                                                                                                                           addr301:
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              continue loop31;
                                                                                                                              addr307:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                              addr302:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                                  addr282:
                                                                                                               }
                                                                                                               addr345:
                                                                                                               _loc3_[_loc6_] = §9!t§.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  addr311:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(uint(§§pop()));
                                                                                                               addr313:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  addr314:
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ && param1)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        addr351:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr321:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr301);
                                                                                                                        §§goto(addr321);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr312:
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                      §§goto(addr312);
                                                                                                   }
                                                                                                   addr263:
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                addr155:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   addr156:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ && Base64)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      _loc7_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || Base64)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr154:
                                                                                          }
                                                                                       }
                                                                                       _loc5_ = §§pop();
                                                                                       addr139:
                                                                                       continue loop0;
                                                                                       addr139:
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 §§goto(addr155);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     addr114:
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         addr103:
                                                      }
                                                      else
                                                      {
                                                         if(_loc3_[_loc7_ + 1] == 64)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr114);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            else
                                                            {
                                                               addr202:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr154);
                                                                     §§push(_loc7_);
                                                                  }
                                                               }
                                                               addr202:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc2_.writeByte(_loc4_[_loc7_]);
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(uint(§§pop()));
                                    }
                                    addr349:
                                 }
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    §§goto(addr351);
                                 }
                              }
                              §§goto(addr282);
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr349);
            }
            §§goto(addr139);
         }
         return _loc2_;
      }
   }
}
