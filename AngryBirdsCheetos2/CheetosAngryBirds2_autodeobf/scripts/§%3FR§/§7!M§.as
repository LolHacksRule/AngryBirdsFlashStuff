package §?R§
{
   import §'!"§.§?h§;
   import flash.utils.ByteArray;
   import mx.utils.Base64Encoder;
   
   public class §7!M§
   {
      
      public static var §=Y§:ByteArray;
       
      
      public function §7!M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §^E§(param1:String) : String
      {
         var _loc2_:Array = createBlocksFromString(param1);
         var _loc3_:ByteArray = §<!$§(_loc2_);
         return §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true);
      }
      
      public static function §7!e§(param1:ByteArray) : String
      {
         var _loc2_:Array = §7!M§.createBlocksFromByteArray(param1);
         var _loc3_:ByteArray = §<!$§(_loc2_);
         return §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true) + §?h§.§+z§(_loc3_.readInt(),true);
      }
      
      public static function §>r§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:uint = 0;
         var _loc2_:Array = §7!M§.createBlocksFromString(param1);
         var _loc3_:ByteArray = §<!$§(_loc2_);
         var _loc4_:* = "";
         if(!_loc8_)
         {
            _loc3_.position = 0;
         }
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ < _loc3_.length)
            {
               _loc7_ = _loc3_.readUnsignedByte();
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc8_ && §7!M§))
                     {
                        §§push(§§pop() + String.fromCharCode(_loc7_));
                     }
                     _loc4_ = §§pop();
                     if(!_loc9_)
                     {
                        break;
                     }
                     _loc5_++;
                     if(_loc8_ && _loc2_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            var _loc6_:Base64Encoder;
            (_loc6_ = new Base64Encoder()).encode(_loc4_);
            return _loc6_.flush();
         }
      }
      
      private static function §<!$§(param1:Array) : ByteArray
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc9_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc2_:* = 1732584193;
         var _loc3_:int = 4023233417;
         var _loc4_:int = 2562383102;
         var _loc5_:int = 271733878;
         var _loc6_:int = 3285377520;
         var _loc7_:int = param1.length;
         var _loc8_:Array = new Array(80);
         var _loc10_:int = 0;
         while(true)
         {
            §§push(_loc10_);
            while(true)
            {
               §§push(_loc7_);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc2_);
                     while(true)
                     {
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc12_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop6:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc19_ && _loc2_))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc14_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc15_ = §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc16_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  _loc17_ = §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc17_);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(20);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc17_);
                                                                                       while(!(_loc19_ && _loc2_))
                                                                                       {
                                                                                          §§push(40);
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                while(!_loc19_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      addr883:
                                                                                                      addr945:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                _loc17_++;
                                                                                                addr1263:
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr1407:
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   _loc16_ = int(_loc15_);
                                                                                                   if(_loc18_ || _loc3_)
                                                                                                   {
                                                                                                      addr1312:
                                                                                                      _loc15_ = int(_loc14_);
                                                                                                      if(_loc18_ || param1)
                                                                                                      {
                                                                                                         addr1278:
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(30);
                                                                                                         if(_loc19_ && §7!M§)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§push(§§pop() << §§pop());
                                                                                                         if(_loc19_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(_loc13_);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         _loc14_ = §§pop() | §§pop() >>> 2;
                                                                                                         if(_loc19_ && param1)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         _loc13_ = int(_loc12_);
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            addr1254:
                                                                                                            addr1255:
                                                                                                            §§push(int(_loc9_));
                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                            {
                                                                                                               _loc12_ = §§pop();
                                                                                                               §§goto(addr1263);
                                                                                                            }
                                                                                                            addr1479:
                                                                                                            _loc13_ = §§pop();
                                                                                                            §§push(_loc9_);
                                                                                                            continue loop6;
                                                                                                            addr1480:
                                                                                                         }
                                                                                                         addr1454:
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
                                                                                                            addr1335:
                                                                                                            §§push(_loc12_);
                                                                                                            §§push(5);
                                                                                                            if(!(_loc19_ && §7!M§))
                                                                                                            {
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  addr1351:
                                                                                                                  §§push(§§pop() << §§pop());
                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr1361:
                                                                                                                     §§push(§§pop() | _loc12_ >>> 27);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           addr1495:
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr1384:
                                                                                                                              addr1385:
                                                                                                                              addr1383:
                                                                                                                              §§push(§§pop() ^ §§pop() ^ _loc15_);
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1394:
                                                                                                                                 addr1393:
                                                                                                                                 addr1395:
                                                                                                                                 §§push(§§pop() + §§pop() + _loc16_);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1406:
                                                                                                                                    _loc9_ = int(§§pop() + int(_loc8_[_loc17_]) + 1859775393);
                                                                                                                                    §§goto(addr1407);
                                                                                                                                 }
                                                                                                                                 addr1547:
                                                                                                                                 _loc9_ = int(§§pop() + int(_loc8_[_loc17_]) + 1518500249);
                                                                                                                                 addr1538:
                                                                                                                                 if(!(_loc19_ && §7!M§))
                                                                                                                                 {
                                                                                                                                    addr1508:
                                                                                                                                    _loc16_ = int(_loc15_);
                                                                                                                                    addr1503:
                                                                                                                                    _loc15_ = int(_loc14_);
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(30);
                                                                                                                                    addr1509:
                                                                                                                                    addr1504:
                                                                                                                                    addr1502:
                                                                                                                                    addr1507:
                                                                                                                                 }
                                                                                                                                 var _loc11_:ByteArray;
                                                                                                                                 (_loc11_ = new ByteArray()).writeInt(_loc2_);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    _loc11_.writeInt(_loc3_);
                                                                                                                                    _loc11_.writeInt(_loc4_);
                                                                                                                                    _loc11_.writeInt(_loc5_);
                                                                                                                                    _loc11_.writeInt(_loc6_);
                                                                                                                                    _loc11_.position = 0;
                                                                                                                                    addr1729:
                                                                                                                                    addr1753:
                                                                                                                                    addr1749:
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §=Y§ = new ByteArray();
                                                                                                                                       addr1708:
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || §7!M§)
                                                                                                                                          {
                                                                                                                                             §=Y§.writeBytes(_loc11_);
                                                                                                                                             addr1700:
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §=Y§.position = 0;
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1729);
                                                                                                                                                      }
                                                                                                                                                      return _loc11_;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1729);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1700);
                                                                                                                                                addr1702:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1708);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1753);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1749);
                                                                                                                                    }
                                                                                                                                    addr1744:
                                                                                                                                    §§goto(addr1744);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1702);
                                                                                                                              }
                                                                                                                              if(_loc19_ && _loc2_)
                                                                                                                              {
                                                                                                                                 addr1610:
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    addr1611:
                                                                                                                                    _loc8_[_loc17_] = param1[_loc10_ + _loc17_];
                                                                                                                                    addr1510:
                                                                                                                                    §§push(_loc12_ << 5);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1534:
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       §§push(27);
                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1527:
                                                                                                                                          §§push(§§pop() | §§pop() >>> §§pop());
                                                                                                                                          §§push(_loc13_ & _loc14_);
                                                                                                                                          §§push(~_loc13_ & _loc15_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1538);
                                                                                                                                       §§push(§§pop() + (§§pop() | §§pop()) + _loc16_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1527);
                                                                                                                                    addr1619:
                                                                                                                                 }
                                                                                                                                 addr1594:
                                                                                                                                 _loc9_ = _loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14] ^ _loc8_[_loc17_ - 16];
                                                                                                                                 addr1595:
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ || §7!M§))
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
                                                                                                                                    §§goto(addr1510);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1619);
                                                                                                                                 addr1588:
                                                                                                                                 addr1582:
                                                                                                                              }
                                                                                                                              §§push(§§pop() << §§pop());
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(2);
                                                                                                                           }
                                                                                                                           _loc14_ = §§pop() | §§pop() >>> §§pop();
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr1478:
                                                                                                                              §§goto(addr1479);
                                                                                                                              §§push(int(_loc12_));
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1538);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1384);
                                                                                                                     }
                                                                                                                     §§goto(addr1510);
                                                                                                                  }
                                                                                                                  §§goto(addr1503);
                                                                                                               }
                                                                                                               §§goto(addr1384);
                                                                                                            }
                                                                                                            §§goto(addr1385);
                                                                                                            addr1421:
                                                                                                         }
                                                                                                         _loc17_++;
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         §§goto(addr1595);
                                                                                                      }
                                                                                                      §§goto(addr1509);
                                                                                                      addr1311:
                                                                                                   }
                                                                                                   §§goto(addr1611);
                                                                                                }
                                                                                                continue loop23;
                                                                                                addr1207:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1439:
                                                                                             }
                                                                                             §§push(_loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14]);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr1453:
                                                                                                _loc9_ = §§pop() ^ _loc8_[_loc17_ - 16];
                                                                                                §§goto(addr1454);
                                                                                             }
                                                                                             §§goto(addr1588);
                                                                                          }
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc17_);
                                                                              }
                                                                              §§goto(addr1609);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc19_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr994);
                                                                  §§push(30);
                                                               }
                                                            }
                                                         }
                                                         if(_loc19_ && §7!M§)
                                                         {
                                                            continue;
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§goto(addr533);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc19_ && §7!M§)
                        {
                           continue;
                        }
                        §§goto(addr1072);
                        §§push(5);
                     }
                  }
                  §§goto(addr1394);
               }
            }
         }
      }
      
      private static function createBlocksFromByteArray(param1:ByteArray) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:int = param1.position;
         if(_loc8_)
         {
            param1.position = 0;
         }
         var _loc3_:Array = new Array();
         var _loc4_:int = param1.length * 8;
         var _loc5_:int = 255;
         var _loc6_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(!_loc7_)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_[_loc4_ >> 5] |= 128 << 24 - _loc4_ % 32;
                        while(true)
                        {
                           _loc3_[(_loc4_ + 64 >> 9 << 4) + 15] = _loc4_;
                           while(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 param1.position = _loc2_;
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc8_)
                                 {
                                    return _loc3_;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc3_[_loc6_ >> 5] |= (param1.readByte() & _loc5_) << 24 - _loc6_ % 32;
                  }
                  addr124:
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     §§push(8);
                  }
                  _loc6_ = §§pop();
                  continue;
               }
               §§push(int(§§pop() + §§pop()));
            }
            §§goto(addr124);
         }
      }
      
      private static function createBlocksFromString(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = new Array();
         var _loc3_:int = param1.length * 8;
         var _loc4_:int = 255;
         var _loc5_:* = 0;
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc7_)
                     {
                        _loc2_[_loc3_ >> 5] |= 128 << 24 - _loc3_ % 32;
                     }
                     while(true)
                     {
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                     continue;
                  }
                  _loc2_[_loc5_ >> 5] |= (param1.charCodeAt(_loc5_ / 8) & _loc4_) << 24 - _loc5_ % 32;
                  addr113:
                  §§push(_loc5_);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(8);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               §§push(int(§§pop() + §§pop()));
            }
            §§goto(addr113);
         }
         return _loc2_;
      }
   }
}
