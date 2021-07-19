package §1f§
{
   import §,!,§.§0!d§;
   import §,!,§.§4§;
   import §1"a§.§^#G§;
   import flash.events.Event;
   
   public class §=#3§ extends §4#9§
   {
       
      
      public function §=#3§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^#G§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§0!d§ = null;
         var _loc1_:* = int(§!#S§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc6_)
                  {
                     §§push(0);
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                     addr343:
                     if(§§pop() < §%4§.length)
                     {
                        §§push(§§findproperty(getPositionFromIndex));
                        §§push(_loc1_);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop().getPositionFromIndex(§§pop() + (§%4§[_loc1_].offset || 0))));
                           loop13:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    continue loop13;
                                 }
                                 addr212:
                              }
                              else
                              {
                                 addr272:
                                 while(true)
                                 {
                                    _loc4_ = §`m§();
                                    if(_loc5_)
                                    {
                                       §%G§.addChild(_loc4_);
                                       while(true)
                                       {
                                          _loc4_.data = §%4§[_loc1_];
                                          addr292:
                                          if(_loc6_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                _loc4_.y = _loc3_;
                                                while(_loc5_)
                                                {
                                                   §!#S§.push(_loc4_);
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      break loop25;
                                                   }
                                                   §§goto(addr292);
                                                }
                                                addr312:
                                                while(true)
                                                {
                                                   continue loop25;
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc4_.index = _loc1_;
                                                §§goto(addr312);
                                                §§goto(addr285);
                                             }
                                             addr319:
                                          }
                                          while(true)
                                          {
                                             _loc1_++;
                                             if(!(_loc6_ && this))
                                             {
                                                addr342:
                                                while(true)
                                                {
                                                   §§goto(addr343);
                                                }
                                                addr342:
                                             }
                                             §§goto(addr346);
                                          }
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                                 addr272:
                              }
                           }
                        }
                        §§goto(addr246);
                     }
                     addr346:
                     return;
                  }
                  §§goto(addr342);
               }
               else
               {
                  _loc2_ = §!#S§[_loc1_] as §^#G§;
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc2_.y = getPositionFromIndex(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.y >= §-[§);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc2_.y <= -§'D§);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc1_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §<"j§(_loc2_);
                                                      addr62:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            addr104:
                                                            while(true)
                                                            {
                                                               §%G§.removeChild(_loc2_);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §!#S§.splice(§!#S§.indexOf(_loc2_),1);
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr58:
                                                }
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr58);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr62);
                                             addr83:
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr104);
                                       continue loop10;
                                    }
                                 }
                              }
                              addr117:
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr93);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc5_ || _loc1_)
         {
            §§goto(addr342);
         }
         §§goto(addr231);
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
            if(_loc7_ || _loc3_)
            {
               if(_loc3_.offset != _loc3_.targetOffset)
               {
                  if(_loc3_.offset == undefined)
                  {
                     while(true)
                     {
                        _loc3_.offset = 0;
                        addr204:
                        while(true)
                        {
                        }
                        addr121:
                        if(_loc7_)
                        {
                           if(!_loc8_)
                           {
                              _loc3_.offset = _loc3_.targetOffset;
                              loop13:
                              while(true)
                              {
                                 addr78:
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc7_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc8_ && param1))
                                          {
                                             continue loop13;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                continue loop15;
                                             }
                                             loop18:
                                             while(true)
                                             {
                                                addr140:
                                                while(true)
                                                {
                                                   §§push(_loc3_.targetOffset - _loc3_.offset);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(8);
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            addr164:
                                                            §§push(Number(§§pop()));
                                                            if(_loc7_)
                                                            {
                                                               addr167:
                                                               §§push(§§pop());
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr99:
                                                                  §§push(0.01);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                     break loop15;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr170:
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  addr171:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr174:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr99);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr187:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_.targetOffset = 0;
                                                                                    continue loop18;
                                                                                 }
                                                                                 addr187:
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        addr173:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              _loc3_.offset += _loc4_;
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr121);
                                                                        }
                                                                        addr117:
                                                                     }
                                                                     addr110:
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr164);
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr110);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr171);
                                 }
                                 continue loop0;
                              }
                           }
                           addr196:
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        §§goto(addr187);
                     }
                     §§goto(addr140);
                     §§goto(addr204);
                  }
               }
               §§goto(addr196);
            }
            §§goto(addr187);
         }
         if(_loc7_ || this)
         {
            if(§[y§ == §?"j§)
            {
               if(_loc2_)
               {
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        if(_loc7_)
                        {
                           this.updatePositions();
                           addr217:
                           return;
                           addr254:
                           addr242:
                        }
                        else
                        {
                           addr258:
                           super.onEnterFrame(param1);
                        }
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr254);
               }
               §§goto(addr217);
            }
            §§goto(addr258);
         }
         §§goto(addr242);
      }
      
      public function get itemRenderers() : Vector.<§0!d§>
      {
         return §!#S§;
      }
   }
}
