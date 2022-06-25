package §#!"§
{
   import flash.events.Event;
   
   public class §0a§ extends §6r§
   {
       
      
      public function §0a§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§"U§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§[!'§ = null;
         var _loc1_:* = int(§;E§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  §§goto(addr367);
               }
               _loc2_ = §;E§[_loc1_] as §"U§;
               if(_loc6_)
               {
                  _loc2_.x = §=5§(_loc2_.index + (_loc2_.data.offset || 0));
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.x >= §@5§);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || this)
                                 {
                                    §2O§.removeChild(_loc2_);
                                 }
                                 while(_loc6_)
                                 {
                                    §;E§.splice(§;E§.indexOf(_loc2_),1);
                                    loop7:
                                    while(true)
                                    {
                                       addr62:
                                       while(true)
                                       {
                                          §1K§(_loc2_);
                                          continue loop7;
                                       }
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       addr42:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr62);
                                          }
                                          §§goto(addr66);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 loop4:
                                 while(_loc6_)
                                 {
                                    §§push(_loc2_.x <= -§&!b§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr131:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr42);
                           }
                           addr109:
                        }
                        §§goto(addr131);
                     }
                  }
               }
               §§goto(addr80);
            }
            break;
         }
         loop12:
         for(; §§pop() < §%v§.length; §§goto(addr363))
         {
            §§push(§§findproperty(§=5§));
            §§push(_loc1_);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop().§=5§(§§pop() + (§%v§[_loc1_].offset || 0))));
               loop13:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop14:
                  while(true)
                  {
                     loop15:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop16:
                        while(true)
                        {
                           §§push(§§pop() > -§&!b§);
                           loop17:
                           while(true)
                           {
                              §§push(§§pop());
                              loop18:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       §§pop();
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(!(_loc6_ || _loc1_))
                                       {
                                          continue loop14;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc6_)
                                       {
                                          continue loop16;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop13;
                                       }
                                       §§push(§§pop() < §@5§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§pop();
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§push(!§,z§(_loc1_));
                                                         }
                                                         break loop12;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop19;
                                                }
                                             }
                                          }
                                          continue loop18;
                                          addr201:
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             break;
                                          }
                                          _loc4_ = §7!C§();
                                          if(!_loc5_)
                                          {
                                             §2O§.addChild(_loc4_);
                                             _loc4_.data = §%v§[_loc1_];
                                             addr359:
                                          }
                                          _loc4_.index = _loc1_;
                                          addr355:
                                          if(_loc6_ || this)
                                          {
                                             addr322:
                                             _loc4_.x = _loc3_;
                                             §;E§.push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr322);
                                                      }
                                                      addr360:
                                                      _loc1_++;
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      break loop12;
                                                   }
                                                }
                                                §§goto(addr355);
                                             }
                                             addr326:
                                             §§goto(addr326);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr360);
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr201);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr279);
         }
         addr367:
         if(_loc6_)
         {
            §§push(0);
            if(_loc6_ || this)
            {
               _loc1_ = §§pop();
               if(_loc6_)
               {
                  addr363:
                  §§push(_loc1_);
                  break loop0;
               }
            }
            break loop0;
         }
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc2_:* = false;
         loop0:
         for each(_loc3_ in data)
         {
            if(!_loc7_)
            {
               if(_loc3_.offset != _loc3_.targetOffset)
               {
                  if(_loc3_.offset == undefined)
                  {
                     while(true)
                     {
                        _loc3_.offset = 0;
                        addr215:
                        while(true)
                        {
                        }
                     }
                     addr212:
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.targetOffset = 0;
                        }
                        loop4:
                        while(_loc8_ || _loc3_)
                        {
                           while(true)
                           {
                              if(!(_loc7_ && this))
                              {
                                 loop15:
                                 while(true)
                                 {
                                    addr39:
                                    loop16:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc7_ && _loc2_)
                                       {
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc8_ || param1)
                                       {
                                          continue loop15;
                                       }
                                       addr69:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop16;
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          addr104:
                                          if(!(_loc8_ || param1))
                                          {
                                             break;
                                             addr111:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   break loop15;
                                                }
                                                if(_loc8_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_.offset = _loc3_.targetOffset;
                                                      break loop15;
                                                   }
                                                   addr132:
                                                }
                                                else
                                                {
                                                   loop11:
                                                   while(!_loc7_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr81:
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§push(0.01);
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               continue loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  addr169:
                                                               }
                                                               break loop11;
                                                               §§goto(addr81);
                                                            }
                                                            addr166:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            break loop11;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr172:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         break loop12;
                                                      }
                                                   }
                                                   addr176:
                                                }
                                             }
                                             else
                                             {
                                                _loc3_.offset += _loc4_;
                                                §§goto(addr69);
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr175:
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr176);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr111);
                                       }
                                       §§goto(addr175);
                                       §§goto(addr104);
                                    }
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§push(_loc3_.targetOffset - _loc3_.offset);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(8);
                           if(_loc8_ || _loc2_)
                           {
                              §§goto(addr166);
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr169);
                     }
                  }
               }
               §§goto(addr207);
            }
            §§goto(addr132);
         }
         if(_loc8_)
         {
            if(§5!4§ == § true§)
            {
               if(_loc2_)
               {
                  if(!(_loc7_ && this))
                  {
                     if(!_loc7_)
                     {
                        this.updatePositions();
                     }
                     else
                     {
                        addr264:
                        super.onEnterFrame(param1);
                        addr223:
                        return;
                        addr267:
                     }
                     §§goto(addr267);
                  }
                  if(!(_loc8_ || _loc3_))
                  {
                     §§goto(addr267);
                  }
               }
               §§goto(addr223);
            }
         }
         §§goto(addr264);
      }
   }
}
