package §_-tM§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §_-Rj§
   {
      
      private static var §_-GW§:Array;
      
      private static var §_-j6§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-j6§ = false;
         }
      }
      
      public function §_-Rj§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
         if(!(_loc9_ && param1))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc9_ && _loc3_))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!(_loc9_ && _loc2_))
         {
            _loc3_.writeInt(param1.width);
            if(_loc8_ || §_-Rj§)
            {
               _loc3_.writeInt(param1.height);
               if(_loc8_ || _loc2_)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc9_)
                  {
                  }
                  addr95:
                  var _loc4_:ByteArray = new ByteArray();
                  var _loc5_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop1:
                     while(§§pop() < param1.height)
                     {
                        _loc4_.writeByte(0);
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        if(!param1.transparent)
                        {
                           §§push(0);
                           if(!(_loc9_ && _loc2_))
                           {
                              _loc7_ = §§pop();
                              if(!(_loc8_ || _loc2_))
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ && _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() >= param1.width)
                                 {
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          _loc7_++;
                                          addr214:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc9_)
                                             {
                                                if(§§pop() >= param1.width)
                                                {
                                                   break;
                                                }
                                                §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                break loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr213:
                                    }
                                    _loc5_++;
                                    continue loop0;
                                 }
                                 §§push(uint(param1.getPixel(_loc7_,_loc5_)));
                                 if(_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                    if(_loc8_ || §_-Rj§)
                                    {
                                       continue;
                                    }
                                    addr190:
                                    §§goto(addr214);
                                 }
                                 break;
                                 §§goto(addr214);
                              }
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr213);
                              }
                           }
                           else
                           {
                              addr187:
                              _loc7_ = §§pop();
                              if(!_loc8_)
                              {
                                 §§goto(addr244);
                              }
                           }
                           §§goto(addr190);
                        }
                        else
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr187);
                     }
                     _loc4_.compress();
                     §_-TS§(_loc2_,1229209940,_loc4_);
                     §_-TS§(_loc2_,1229278788,null);
                     addr244:
                     return _loc2_;
                  }
               }
               _loc3_.writeByte(0);
               if(!(_loc9_ && param1))
               {
                  addr90:
                  §_-TS§(_loc2_,1229472850,_loc3_);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr90);
      }
      
      private static function §_-TS§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc12_)
         {
            if(!§_-j6§)
            {
               if(_loc12_ || §_-Rj§)
               {
                  addr34:
                  §_-j6§ = true;
                  if(!(_loc11_ && §_-Rj§))
                  {
                     §_-GW§ = [];
                     if(!_loc11_)
                     {
                        addr49:
                        _loc9_ = 0;
                     }
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!_loc11_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(256);
                           loop2:
                           while(§§pop() < §§pop())
                           {
                              §§push(uint(_loc9_));
                              if(_loc12_ || param3)
                              {
                                 _loc8_ = §§pop();
                                 §§push(0);
                                 if(_loc12_)
                                 {
                                    §§push(uint(§§pop()));
                                    if(_loc12_)
                                    {
                                       _loc10_ = §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc10_);
                                          if(_loc11_)
                                          {
                                             break;
                                             addr141:
                                          }
                                          while(true)
                                          {
                                             §§push(8);
                                             if(_loc12_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §_-GW§[_loc9_] = _loc8_;
                                                      §§push(_loc9_);
                                                      break loop3;
                                                   }
                                                   break loop2;
                                                }
                                                §§push(_loc8_);
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§push(1);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc11_)
                                                      {
                                                         addr160:
                                                         §§push(uint(§§pop()));
                                                         addr87:
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc12_ || param2))
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc8_ = uint(uint(_loc8_ >>> 1));
                                                            if(!_loc12_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(_loc11_ && param1)
                                                               {
                                                                  break loop5;
                                                               }
                                                               §§push(uint(§§pop()));
                                                               if(_loc11_ && param1)
                                                               {
                                                                  break loop3;
                                                               }
                                                               _loc10_ = §§pop();
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(!_loc12_)
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop0;
                                                      addr170:
                                                      break loop0;
                                                   }
                                                   break;
                                                }
                                                break loop3;
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr160);
                                       §§push(§§pop() + 1);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr107);
                           }
                           addr169:
                           §§goto(addr170);
                        }
                     }
                     break;
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc11_ && param2))
                  {
                     if(param3 != null)
                     {
                        if(_loc12_)
                        {
                           §§push(uint(param3.length));
                           if(_loc12_)
                           {
                              _loc4_ = §§pop();
                              if(_loc12_ || §_-Rj§)
                              {
                                 addr197:
                                 param1.writeUnsignedInt(_loc4_);
                                 addr200:
                                 §§push(uint(param1.position));
                              }
                              §§goto(addr200);
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc11_)
                           {
                              param1.writeUnsignedInt(param2);
                              if(!_loc11_)
                              {
                                 if(param3 != null)
                                 {
                                    if(_loc12_ || param2)
                                    {
                                    }
                                    addr224:
                                    var _loc6_:uint = param1.position;
                                    if(_loc12_ || param3)
                                    {
                                       param1.position = _loc5_;
                                       if(!_loc11_)
                                       {
                                          _loc8_ = uint(4294967295);
                                       }
                                    }
                                    var _loc7_:int = 0;
                                    if(!(_loc11_ && param3))
                                    {
                                       while(true)
                                       {
                                          if(_loc7_ >= _loc6_ - _loc5_)
                                          {
                                             §§goto(addr318);
                                          }
                                          §§push(uint(uint(§_-GW§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                          if(!(_loc12_ || param2))
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          _loc7_++;
                                       }
                                       _loc8_ = §§pop();
                                       param1.position = _loc6_;
                                       if(!(_loc11_ && param1))
                                       {
                                          param1.writeUnsignedInt(_loc8_);
                                       }
                                       addr318:
                                       if(!_loc11_)
                                       {
                                          addr289:
                                          §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                          break loop8;
                                       }
                                       return;
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr224);
                              }
                              param1.writeBytes(param3);
                           }
                           §§goto(addr224);
                        }
                     }
                  }
                  §§goto(addr197);
               }
               §§goto(addr49);
            }
            §§goto(addr169);
         }
         §§goto(addr34);
      }
   }
}
