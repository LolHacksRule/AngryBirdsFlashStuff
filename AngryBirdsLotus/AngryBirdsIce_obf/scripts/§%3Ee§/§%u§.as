package §>e§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §%u§
   {
      
      private static var §0E§:Array;
      
      private static var §&]§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&]§ = false;
         }
      }
      
      public function §%u§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = uint(0);
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc9_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc9_ && param1))
            {
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(_loc8_)
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
                  addr88:
                  loop1:
                  while(true)
                  {
                     _loc3_.writeUnsignedInt(134610944);
                     loop2:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           _loc3_.writeByte(0);
                           addr68:
                           while(_loc8_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr93:
            }
            while(true)
            {
               §=3§(_loc2_,1229472850,_loc3_);
               if(!(_loc9_ && param1))
               {
                  if(!_loc9_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr64);
                  }
                  else
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr68);
            }
            var _loc4_:ByteArray = new ByteArray();
            var _loc5_:int = 0;
            while(true)
            {
               §§push(_loc5_);
               if(!_loc9_)
               {
                  if(§§pop() >= param1.height)
                  {
                     loop7:
                     while(_loc8_ || param1)
                     {
                        if(_loc8_)
                        {
                           _loc4_.compress();
                           while(true)
                           {
                              §=3§(_loc2_,1229209940,_loc4_);
                              while(_loc8_ || param1)
                              {
                                 §=3§(_loc2_,1229278788,null);
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    if(!_loc9_)
                                    {
                                       return _loc2_;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                           _loc7_++;
                           loop11:
                           while(true)
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    if(§§pop() >= param1.width)
                                    {
                                       addr252:
                                       break;
                                    }
                                    §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                 }
                                 else
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop14:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr167:
                                             while(true)
                                             {
                                                if(_loc9_ && param1)
                                                {
                                                   continue loop13;
                                                }
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(§§pop() >= param1.width)
                                                   {
                                                      break loop12;
                                                   }
                                                   §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                   if(!_loc9_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop12;
                                                   }
                                                   while(true)
                                                   {
                                                      if(param1.transparent)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr298);
                                                      §§push(0);
                                                   }
                                                   addr298:
                                                   addr307:
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    continue loop11;
                                 }
                              }
                              addr184:
                              while(true)
                              {
                                 _loc5_++;
                                 break loop7;
                              }
                           }
                           addr292:
                           addr259:
                        }
                     }
                     while(true)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr252);
                        §§goto(addr184);
                     }
                     continue;
                  }
                  _loc4_.writeByte(0);
                  §§goto(addr307);
               }
               §§goto(addr167);
            }
         }
         §§goto(addr37);
      }
      
      private static function §=3§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_)
         {
            if(!§&]§)
            {
               loop0:
               do
               {
                  §&]§ = true;
                  while(true)
                  {
                     §0E§ = [];
                     while(!_loc11_)
                     {
                        _loc9_ = uint(0);
                        if(_loc12_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc12_ || param2));
               
               loop5:
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc12_ || param2)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(256);
                        loop7:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc9_);
                              loop8:
                              while(true)
                              {
                                 _loc8_ = uint(§§pop());
                                 §§push(0);
                                 if(_loc12_ || param3)
                                 {
                                    §§push(uint(§§pop()));
                                    if(!(_loc11_ && param3))
                                    {
                                       _loc10_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(8);
                                                if(!(_loc11_ && param1))
                                                {
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §0E§[_loc9_] = _loc8_;
                                                         if(!_loc12_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(_loc9_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc11_ && §%u§))
                                                            {
                                                               addr42:
                                                               §§push(uint(§§pop()));
                                                               if(!_loc12_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc12_ || §%u§)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr214:
                                                                  addr216:
                                                                  addr214:
                                                                  addr216:
                                                                  var _loc4_:* = uint(0);
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(param3 != null)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(uint(param3.length));
                                                                           if(!_loc11_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc11_ && param2))
                                                                              {
                                                                                 addr242:
                                                                                 param1.writeUnsignedInt(_loc4_);
                                                                                 addr245:
                                                                                 §§push(uint(param1.position));
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           var _loc5_:* = §§pop();
                                                                           if(!_loc11_)
                                                                           {
                                                                              param1.writeUnsignedInt(param2);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr256:
                                                                                 if(param3 != null)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       param1.writeBytes(param3);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              var _loc6_:uint = param1.position;
                                                                              if(_loc12_ || §%u§)
                                                                              {
                                                                                 param1.position = _loc5_;
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr280:
                                                                                    _loc8_ = uint(4294967295);
                                                                                 }
                                                                                 var _loc7_:int = 0;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ >= _loc6_ - _loc5_)
                                                                                    {
                                                                                       §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(uint(uint(§0E§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    _loc7_++;
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 param1.position = _loc6_;
                                                                                 do
                                                                                 {
                                                                                    param1.writeUnsignedInt(_loc8_);
                                                                                 }
                                                                                 while(!(_loc12_ || param2));
                                                                                 
                                                                                 return;
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        continue loop10;
                                                                     }
                                                                     addr139:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr83:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!_loc12_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr89:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr89);
                                                               §§goto(addr83);
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr42);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc8_);
                                                         while(true)
                                                         {
                                                            break loop11;
                                                            addr109:
                                                            if(!(_loc11_ && §%u§))
                                                            {
                                                               _loc8_ = §§pop();
                                                               break;
                                                            }
                                                         }
                                                         addr122:
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                if(_loc12_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr139);
                                                      §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                   }
                                                   else
                                                   {
                                                      §§push(uint(uint(_loc8_ >>> 1)));
                                                      if(_loc11_ && §%u§)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr83);
                                                }
                                                §§goto(addr122);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr214);
                        }
                     }
                  }
                  §§goto(addr216);
               }
               addr190:
            }
            §§goto(addr214);
         }
         §§goto(addr190);
      }
   }
}
