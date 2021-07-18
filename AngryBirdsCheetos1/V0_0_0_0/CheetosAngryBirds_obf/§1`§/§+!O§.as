package §1`§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §+!O§
   {
      
      private static var §3!7§:Array;
      
      private static var § o§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § o§ = false;
         }
      }
      
      public function §+!O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc8_ || _loc3_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(_loc8_)
            {
               addr37:
               _loc2_.writeUnsignedInt(218765834);
            }
            var _loc3_:ByteArray = new ByteArray();
            if(!_loc9_)
            {
               _loc3_.writeInt(param1.width);
               while(true)
               {
                  _loc3_.writeInt(param1.height);
               }
               addr98:
            }
            loop1:
            while(true)
            {
               _loc3_.writeUnsignedInt(134610944);
               while(true)
               {
                  if(_loc9_)
                  {
                     break;
                     addr69:
                  }
                  while(true)
                  {
                     _loc3_.writeByte(0);
                     continue loop1;
                  }
                  addr60:
                  if(_loc9_ && _loc3_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr69);
                  }
                  else
                  {
                     var _loc4_:ByteArray = new ByteArray();
                     var _loc5_:int = 0;
                     loop5:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc9_ && param1))
                        {
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop() >= param1.height)
                              {
                                 while(_loc8_ || _loc3_)
                                 {
                                    if(!_loc9_)
                                    {
                                       _loc4_.compress();
                                       loop7:
                                       while(true)
                                       {
                                          §6J§(_loc2_,1229209940,_loc4_);
                                          while(_loc8_ || §+!O§)
                                          {
                                             §6J§(_loc2_,1229278788,null);
                                             if(_loc8_ || param1)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr296);
                                 }
                                 while(true)
                                 {
                                    if(!(_loc8_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    _loc7_++;
                                    §§goto(addr247);
                                 }
                              }
                              else
                              {
                                 _loc4_.writeByte(0);
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr200);
                     }
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr37);
      }
      
      private static function §6J§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = uint(0);
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         if(_loc12_ || param1)
         {
            if(!§ o§)
            {
               loop0:
               do
               {
                  § o§ = true;
                  while(true)
                  {
                     §3!7§ = [];
                     while(!_loc11_)
                     {
                        _loc9_ = 0;
                        if(_loc12_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc12_ || param1));
               
               loop9:
               while(true)
               {
                  §§push(_loc9_);
                  if(!(_loc11_ && param3))
                  {
                     loop10:
                     while(true)
                     {
                        §§push(256);
                        loop11:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr272:
                              §§push(0);
                           }
                           else
                           {
                              §§push(_loc9_);
                              loop12:
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 loop13:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc11_)
                                       {
                                          §§push(uint(§§pop()));
                                          loop15:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             loop16:
                                             while(true)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   if(_loc12_ || param2)
                                                   {
                                                      if(_loc11_ && §+!O§)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§push(8);
                                                      if(!_loc12_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc12_ || §+!O§)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §3!7§[_loc9_] = _loc8_;
                                                                  while(_loc12_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!(_loc11_ && §+!O§))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr152:
                                                                                    while(true)
                                                                                    {
                                                                                       addr115:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                 }
                                                                                 addr151:
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr274:
                                                                        var _loc4_:* = §§pop();
                                                                        if(!(_loc11_ && param2))
                                                                        {
                                                                           if(param3 != null)
                                                                           {
                                                                              if(_loc12_ || param3)
                                                                              {
                                                                                 §§push(uint(param3.length));
                                                                                 if(_loc12_ || §+!O§)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       addr310:
                                                                                       param1.writeUnsignedInt(_loc4_);
                                                                                       addr313:
                                                                                       §§push(uint(param1.position));
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 var _loc5_:* = §§pop();
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    param1.writeUnsignedInt(param2);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(param3 != null)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             param1.writeBytes(param3);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 var _loc6_:uint = param1.position;
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    param1.position = _loc5_;
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       _loc8_ = uint(4294967295);
                                                                                    }
                                                                                 }
                                                                                 var _loc7_:int = 0;
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ >= _loc6_ - _loc5_)
                                                                                       {
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(uint(uint(_loc8_ ^ uint(4294967295))));
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.position = _loc6_;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_++;
                                                                                             continue loop3;
                                                                                          }
                                                                                          addr458:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(uint(uint(§3!7§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8))));
                                                                                       }
                                                                                       _loc8_ = §§pop();
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr458);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  while(_loc11_ && param3)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr115);
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr112:
                                                                  addr134:
                                                               }
                                                               §§goto(addr152);
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc12_)
                                                            {
                                                               if(_loc11_ && param1)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(1);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc12_ || §+!O§)
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(uint(uint(uint(3988292384) ^ uint(_loc8_ >>> 1))));
                                                                  continue loop12;
                                                               }
                                                               continue loop16;
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         else
                                                         {
                                                            §§push(uint(uint(_loc8_ >>> 1)));
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                   }
                                                   §§goto(addr274);
                                                }
                                                continue loop12;
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
                  §§goto(addr274);
               }
               addr248:
            }
            §§goto(addr272);
         }
         §§goto(addr248);
      }
   }
}
