package §3!t§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class include
   {
      
      private static var §-!c§:Array;
      
      private static var §>2§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>2§ = false;
         }
      }
      
      public function include()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc9_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!_loc9_)
            {
               addr32:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_ || _loc3_)
            {
               _loc3_.writeInt(param1.width);
            }
            loop0:
            while(true)
            {
               _loc3_.writeInt(param1.height);
               loop1:
               while(true)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  while(true)
                  {
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        do
                        {
                           §0[§(_loc2_,1229472850,_loc3_);
                        }
                        while(_loc9_ && _loc3_);
                        
                        if(!(_loc8_ || include))
                        {
                           break;
                        }
                        if(!_loc8_)
                        {
                           continue loop1;
                        }
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc4_:ByteArray = new ByteArray();
                        var _loc5_:int = 0;
                        addr178:
                        §§push(_loc5_);
                        if(_loc8_ || _loc2_)
                        {
                           if(!(_loc9_ && include))
                           {
                              if(§§pop() >= param1.height)
                              {
                                 addr197:
                                 if(!_loc9_)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc4_.compress();
                                          addr210:
                                          if(_loc8_)
                                          {
                                             §0[§(_loc2_,1229209940,_loc4_);
                                             addr137:
                                             if(_loc8_ || include)
                                             {
                                                if(!(_loc9_ && include))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            §0[§(_loc2_,1229278788,null);
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && include))
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr227:
                                                                        _loc5_++;
                                                                        §§goto(addr178);
                                                                        addr267:
                                                                     }
                                                                     return _loc2_;
                                                                  }
                                                                  addr213:
                                                                  addr232:
                                                                  §§push(_loc7_);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop() >= param1.width)
                                                                     {
                                                                        addr220:
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§goto(addr227);
                                                                        }
                                                                        addr327:
                                                                        _loc7_ = 0;
                                                                        addr260:
                                                                        addr326:
                                                                        addr328:
                                                                        §§push(_loc7_);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(§§pop() >= param1.width)
                                                                           {
                                                                              §§goto(addr267);
                                                                           }
                                                                           addr310:
                                                                           _loc6_ = uint(param1.getPixel(_loc7_,_loc5_));
                                                                           _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                           _loc7_++;
                                                                           addr281:
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§goto(addr260);
                                                                           }
                                                                           if(!param1.transparent)
                                                                           {
                                                                              §§goto(addr326);
                                                                           }
                                                                           addr270:
                                                                           _loc7_ = 0;
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              §§goto(addr213);
                                                                           }
                                                                           §§goto(addr328);
                                                                           addr311:
                                                                           addr301:
                                                                           addr334:
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                        _loc7_++;
                                                                        §§goto(addr232);
                                                                        addr247:
                                                                        addr259:
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr220);
                              }
                              _loc4_.writeByte(0);
                              §§goto(addr334);
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr213);
                     }
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      private static function §0[§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(!_loc12_)
         {
            if(!§>2§)
            {
               if(_loc11_ || include)
               {
                  §>2§ = true;
               }
               do
               {
                  §-!c§ = [];
                  do
                  {
                     _loc9_ = uint(0);
                  }
                  while(!(_loc11_ || param1));
                  
               }
               while(_loc12_ && include);
               
               loop6:
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc11_ || param1)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(256);
                        loop8:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc9_);
                              loop9:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 loop10:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc12_)
                                       {
                                          §§push(uint(§§pop()));
                                          loop12:
                                          for(; _loc11_; if(_loc12_ && param3)
                                          {
                                             continue;
                                          },§§push(§§pop() + 1),if(_loc11_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(!_loc11_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc11_ || param1)
                                             {
                                                _loc9_ = §§pop();
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr59);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr86);
                                          },§§goto(addr116))
                                          {
                                             _loc10_ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr86:
                                                   while(_loc11_ || param1)
                                                   {
                                                      §§push(8);
                                                      if(!(_loc12_ && param2))
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc8_);
                                                         }
                                                         loop16:
                                                         while(!_loc12_)
                                                         {
                                                            §-!c§[_loc9_] = _loc8_;
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(_loc9_);
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc12_)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  addr166:
                                                                  addr167:
                                                                  _loc8_ = §§pop();
                                                               }
                                                               else
                                                               {
                                                                  addr130:
                                                                  _loc8_ = §§pop();
                                                                  if(_loc12_)
                                                                  {
                                                                     addr241:
                                                                     break loop14;
                                                                  }
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               §§push(_loc10_);
                                                               if(!_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(uint(§§pop() + 1));
                                                               if(!_loc12_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  break loop16;
                                                               }
                                                               addr243:
                                                               var _loc4_:* = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  if(param3 != null)
                                                                  {
                                                                     if(!(_loc12_ && param3))
                                                                     {
                                                                        §§push(uint(param3.length));
                                                                        if(!(_loc12_ && param3))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr269:
                                                                              param1.writeUnsignedInt(_loc4_);
                                                                              addr272:
                                                                              §§push(uint(param1.position));
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           param1.writeUnsignedInt(param2);
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              if(param3 != null)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr293:
                                                                                    param1.writeBytes(param3);
                                                                                 }
                                                                              }
                                                                              var _loc6_:uint = param1.position;
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 param1.position = _loc5_;
                                                                                 if(!(_loc12_ && param3))
                                                                                 {
                                                                                    _loc8_ = uint(4294967295);
                                                                                 }
                                                                              }
                                                                              var _loc7_:int = 0;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ >= _loc6_ - _loc5_)
                                                                                    {
                                                                                       loop3:
                                                                                       while(_loc11_ || include)
                                                                                       {
                                                                                          §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             loop4:
                                                                                             while(_loc11_)
                                                                                             {
                                                                                                param1.position = _loc6_;
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.writeUnsignedInt(_loc8_);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_ || param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr411:
                                                                                             _loc8_ = §§pop();
                                                                                          }
                                                                                          _loc7_++;
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§push(uint(uint(§-!c§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                    §§goto(addr411);
                                                                                 }
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                               }
                                                               §§goto(addr269);
                                                               addr59:
                                                               if(_loc11_ || param1)
                                                               {
                                                                  if(!(_loc11_ || param2))
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr154:
                                                                     §§goto(addr166);
                                                                     §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                  }
                                                                  §§goto(addr167);
                                                                  continue loop16;
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop14;
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   if(!_loc12_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(!(_loc12_ && param2))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr130);
                                                               §§push(uint(uint(_loc8_ >>> 1)));
                                                            }
                                                            §§goto(addr111);
                                                         }
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr241);
                        }
                     }
                  }
                  §§goto(addr243);
               }
               addr212:
            }
            §§goto(addr241);
         }
         §§goto(addr212);
      }
   }
}
