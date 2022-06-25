package §]z§
{
   import flash.events.Event;
   
   public class §2b§ extends §7v§
   {
       
      
      public function §2b§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#!F§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§`V§ = null;
         var _loc1_:* = int(§4"§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(!_loc6_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr343:
                     if(§§pop() < §0A§.length)
                     {
                        §§push(§§findproperty(§"!§));
                        §§push(_loc1_);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(Number(§§pop().§"!§(§§pop() + (§0A§[_loc1_].offset || 0))));
                           loop12:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop13:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop() > -§=!C§);
                                       loop16:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         addr197:
                                                      }
                                                   }
                                                }
                                                continue;
                                                addr180:
                                             }
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc1_))
                                                   {
                                                      continue loop13;
                                                      addr204:
                                                      §§pop();
                                                   }
                                                   §§push(_loc3_);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop15;
                                                      if(_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop14;
                                                         }
                                                         addr264:
                                                         if(!§%>§(_loc1_))
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr343);
                                                            }
                                                            addr346:
                                                            return;
                                                            addr342:
                                                         }
                                                         addr334:
                                                         _loc1_++;
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                _loc4_ = get();
                                                if(!(_loc6_ && this))
                                                {
                                                   §8!9§.addChild(_loc4_);
                                                   _loc4_.data = §0A§[_loc1_];
                                                   addr327:
                                                   if(!_loc6_)
                                                   {
                                                      _loc4_.index = _loc1_;
                                                      addr299:
                                                      _loc4_.x = _loc3_;
                                                      if(_loc5_)
                                                      {
                                                         §4"§.push(_loc4_);
                                                         if(!(_loc6_ && _loc1_))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr297:
                                                               if(false)
                                                               {
                                                                  §§goto(addr299);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      addr320:
                                                      §§goto(addr320);
                                                   }
                                                   addr333:
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr297);
                                             }
                                             else
                                             {
                                                §§goto(addr264);
                                             }
                                             §§goto(addr264);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr253);
                     }
                  }
                  §§goto(addr346);
               }
               else
               {
                  _loc2_ = §4"§[_loc1_] as §#!F§;
                  if(!_loc6_)
                  {
                     _loc2_.x = §"!§(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= §70§);
                        if(_loc5_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc2_.x <= -§=!C§);
                                    if(_loc6_ && _loc1_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §8!9§.removeChild(_loc2_);
                                             addr102:
                                             while(true)
                                             {
                                                §4"§.splice(§4"§.indexOf(_loc2_),1);
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr83:
                                                   while(true)
                                                   {
                                                      §9t§(_loc2_);
                                                      addr62:
                                                      while(_loc6_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          addr99:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc5_)
                                          {
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr58);
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr62);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              addr112:
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr99);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc6_)
         {
         }
         §§goto(addr346);
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc2_:* = false;
         loop0:
         for each(_loc3_ in data)
         {
            if(_loc7_ || _loc2_)
            {
               if(_loc3_.offset != _loc3_.targetOffset)
               {
                  if(_loc3_.offset == undefined)
                  {
                     loop1:
                     while(true)
                     {
                        _loc3_.offset = 0;
                        addr189:
                        while(true)
                        {
                        }
                        loop5:
                        while(true)
                        {
                           if(!(_loc7_ || _loc2_))
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(_loc3_.targetOffset - _loc3_.offset);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(8);
                                 if(_loc7_)
                                 {
                                    addr142:
                                    §§push(§§pop() / §§pop());
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_ || param1)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                          addr151:
                                       }
                                       addr152:
                                       while(true)
                                       {
                                          §§push(0);
                                       }
                                    }
                                    addr142:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    if(_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§pop();
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                if(!_loc8_)
                                                {
                                                   §§push(0.01);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      addr98:
                                                      §§push(§§pop() < §§pop());
                                                      while(true)
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               _loc3_.offset += _loc4_;
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr181:
                                                                     continue loop0;
                                                                  }
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        addr101:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           _loc3_.offset = _loc3_.targetOffset;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ || this))
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc3_.targetOffset = 0;
                                                                     continue loop5;
                                                                     §§goto(addr107);
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr98);
                                                      }
                                                      addr99:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr151);
                                             }
                                             continue loop7;
                                          }
                                          addr158:
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr189);
                     }
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        §§goto(addr165);
                     }
                     §§goto(addr125);
                     §§goto(addr189);
                  }
               }
               §§goto(addr181);
            }
            §§goto(addr124);
         }
         if(_loc7_ || this)
         {
            if(§7k§ == §7!f§)
            {
               if(_loc2_)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        this.updatePositions();
                     }
                     else
                     {
                        addr248:
                        super.onEnterFrame(param1);
                        addr202:
                        return;
                        addr251:
                     }
                     §§goto(addr251);
                  }
                  if(!(_loc7_ || param1))
                  {
                     §§goto(addr251);
                  }
               }
               §§goto(addr202);
            }
         }
         §§goto(addr248);
      }
   }
}
