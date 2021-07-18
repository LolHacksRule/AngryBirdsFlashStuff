package §;R§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §^!"§
   {
      
      private static var §1!Y§:Array;
      
      private static var § !_§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !_§ = false;
         }
      }
      
      public function §^!"§()
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
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = uint(0);
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!(_loc8_ && _loc3_))
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc8_ && §^!"§))
            {
               addr43:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!_loc8_)
            {
               _loc3_.writeInt(param1.width);
            }
            loop0:
            while(true)
            {
               _loc3_.writeInt(param1.height);
               while(true)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  while(!(_loc8_ && §^!"§))
                  {
                     while(true)
                     {
                        _loc3_.writeByte(0);
                        do
                        {
                           §^!g§(_loc2_,1229472850,_loc3_);
                        }
                        while(_loc8_);
                        
                        if(_loc8_)
                        {
                           break;
                        }
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc4_:ByteArray = new ByteArray();
                        var _loc5_:int = 0;
                        addr143:
                        §§push(_loc5_);
                        if(!(_loc8_ && _loc2_))
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              if(§§pop() >= param1.height)
                              {
                                 addr172:
                                 if(_loc9_ || §^!"§)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          _loc4_.compress();
                                          addr185:
                                          if(!_loc8_)
                                          {
                                             §^!g§(_loc2_,1229209940,_loc4_);
                                             addr122:
                                             if(!_loc8_)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §^!g§(_loc2_,1229278788,null);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr122);
                                                            }
                                                            return _loc2_;
                                                         }
                                                         addr256:
                                                         if(_loc9_)
                                                         {
                                                            addr203:
                                                            _loc5_++;
                                                            addr204:
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr143);
                                                            }
                                                            if(!param1.transparent)
                                                            {
                                                               addr313:
                                                               _loc7_ = 0;
                                                               addr251:
                                                               addr253:
                                                               if(_loc7_ >= param1.width)
                                                               {
                                                                  §§goto(addr256);
                                                               }
                                                               addr289:
                                                               _loc6_ = uint(param1.getPixel(_loc7_,_loc5_));
                                                               addr314:
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                                                                  _loc7_++;
                                                                  addr265:
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr251);
                                                                  }
                                                                  §§goto(addr314);
                                                                  addr280:
                                                               }
                                                               addr312:
                                                               §§goto(addr312);
                                                            }
                                                            addr261:
                                                            _loc7_ = 0;
                                                            addr202:
                                                            §§push(_loc7_);
                                                            if(!_loc8_)
                                                            {
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  if(§§pop() >= param1.width)
                                                                  {
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§push(uint(param1.getPixel32(_loc7_,_loc5_)));
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                                                                     addr250:
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        _loc7_++;
                                                                        addr209:
                                                                        if(_loc9_ || §^!"§)
                                                                        {
                                                                           §§goto(addr202);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr261);
                                                            addr262:
                                                            addr320:
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr203);
                              }
                              _loc4_.writeByte(0);
                              §§goto(addr320);
                           }
                           §§goto(addr313);
                        }
                        §§goto(addr203);
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private static function §^!g§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         if(_loc12_)
         {
            if(!§ !_§)
            {
               loop0:
               while(true)
               {
                  § !_§ = true;
                  while(true)
                  {
                     §1!Y§ = [];
                     loop2:
                     while(_loc12_ || param2)
                     {
                        while(true)
                        {
                           _loc9_ = uint(0);
                           if(_loc12_ || param2)
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(_loc9_);
                           if(_loc12_ || param2)
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(256);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc9_);
                                       while(true)
                                       {
                                          §§push(uint(§§pop()));
                                          addr191:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             if(_loc12_)
                                             {
                                                §§push(0);
                                                if(!(_loc11_ && param3))
                                                {
                                                   §§push(uint(§§pop()));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      addr185:
                                                      while(true)
                                                      {
                                                         addr79:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                          }
                                          if(!(_loc12_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() + 1);
                                          if(_loc12_ || param1)
                                          {
                                             §§push(uint(§§pop()));
                                             if(_loc12_ || §^!"§)
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_ || param3)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr70);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr249);
                                 }
                              }
                           }
                           §§goto(addr249);
                        }
                     }
                  }
               }
            }
            §§goto(addr249);
         }
         §§goto(addr230);
      }
   }
}
