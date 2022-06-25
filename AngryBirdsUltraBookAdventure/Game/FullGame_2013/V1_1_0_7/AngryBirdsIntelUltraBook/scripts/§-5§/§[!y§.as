package §-5§
{
   import flash.events.Event;
   
   public class §[!y§ extends §'j§
   {
       
      
      public function §[!y§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+p§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§8!g§ = null;
         var _loc1_:* = int(§#!D§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && _loc1_))
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr323:
                     if(§§pop() < §9%§.length)
                     {
                        §§push(§§findproperty(§#!§));
                        §§push(_loc1_);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop().§#!§(§§pop() + (§9%§[_loc1_].offset || 0))));
                           loop13:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!_loc6_)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop() > -§,!R§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§pop();
                                                if(!_loc6_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(!§throw§(_loc1_));
                                                }
                                                §§goto(addr326);
                                             }
                                          }
                                          addr239:
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr247:
                                                while(true)
                                                {
                                                   _loc4_ = §%!x§();
                                                   if(!_loc6_)
                                                   {
                                                      §]2§.addChild(_loc4_);
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      _loc4_.data = §9%§[_loc1_];
                                                      while(true)
                                                      {
                                                         _loc4_.index = _loc1_;
                                                         while(!(_loc6_ && _loc1_))
                                                         {
                                                            continue loop20;
                                                            loop24:
                                                            while(_loc5_ || _loc3_)
                                                            {
                                                               §#!D§.push(_loc4_);
                                                               if(!_loc5_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr260:
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc4_.x = _loc3_;
                                                                     continue loop24;
                                                                     §§goto(addr260);
                                                                  }
                                                                  addr314:
                                                                  _loc1_++;
                                                                  §§push(_loc6_ && _loc3_);
                                                                  addr262:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr314);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr322:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr323);
                                                                     §§goto(addr314);
                                                                  }
                                                                  addr322:
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr247:
                                             }
                                             §§goto(addr326);
                                          }
                                          §§goto(addr314);
                                       }
                                       addr208:
                                       while(true)
                                       {
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             continue loop13;
                                          }
                                          continue loop15;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr247);
                           }
                        }
                        §§goto(addr226);
                     }
                     addr326:
                     return;
                  }
                  §§goto(addr322);
               }
               else
               {
                  _loc2_ = §#!D§[_loc1_] as §+p§;
                  if(_loc5_)
                  {
                     _loc2_.x = §#!§(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= §%!8§);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(_loc5_)
                                    {
                                       §]2§.removeChild(_loc2_);
                                       while(true)
                                       {
                                          §#!D§.splice(§#!D§.indexOf(_loc2_),1);
                                          loop5:
                                          while(true)
                                          {
                                             addr60:
                                             while(true)
                                             {
                                                §`Q§(_loc2_);
                                                addr64:
                                                while(!_loc6_)
                                                {
                                                }
                                                continue loop5;
                                             }
                                          }
                                          addr49:
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc6_)
                                             {
                                                while(false)
                                                {
                                                   §§goto(addr60);
                                                }
                                                continue loop0;
                                                addr58:
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§goto(addr49);
                                    }
                                    §§goto(addr64);
                                 }
                                 addr108:
                                 §§push(_loc2_.x <= -§,!R§);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 addr100:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop1;
                                 }
                                 addr100:
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr58);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc6_ && _loc1_))
         {
            §§goto(addr322);
         }
         §§goto(addr247);
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
                        addr209:
                        addr178:
                        while(true)
                        {
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc7_ || this)
                           {
                              _loc3_.targetOffset = 0;
                              loop5:
                              for(; !(_loc8_ && _loc3_); if(_loc7_ || _loc3_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr80);
                                 }
                                 break loop4;
                              })
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_.targetOffset - _loc3_.offset);
                                    if(_loc7_)
                                    {
                                       §§push(8);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc7_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc8_ && param1)
                                             {
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr166:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr170:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§push(0.01);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ && _loc2_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     addr105:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        continue loop17;
                                                                     }
                                                                     addr164:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               _loc3_.offset = _loc3_.targetOffset;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               addr80:
                                                               while(true)
                                                               {
                                                                  addr43:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc8_ && this)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr105);
                                                               }
                                                            }
                                                            addr135:
                                                         }
                                                         else
                                                         {
                                                            _loc3_.offset += _loc4_;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc8_ && this)
                                                            {
                                                               §§goto(addr135);
                                                            }
                                                            §§goto(addr43);
                                                         }
                                                      }
                                                   }
                                                   continue loop17;
                                                }
                                             }
                                             addr165:
                                          }
                                          §§goto(addr164);
                                          §§push(§§pop());
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              addr201:
                              continue loop0;
                           }
                           continue loop1;
                        }
                        §§goto(addr209);
                     }
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        §§goto(addr178);
                     }
                     §§goto(addr136);
                     §§goto(addr209);
                  }
               }
               §§goto(addr201);
            }
            §§goto(addr172);
         }
         if(!_loc8_)
         {
            if(§%R§ != §[!3§)
            {
               if(!_loc8_)
               {
                  super.onEnterFrame(param1);
                  addr256:
               }
               §§goto(addr256);
            }
            else if(_loc2_)
            {
               if(!_loc8_)
               {
                  this.updatePositions();
               }
               if(!(_loc7_ || param1))
               {
                  §§goto(addr256);
               }
            }
            return;
         }
         §§goto(addr256);
      }
   }
}
