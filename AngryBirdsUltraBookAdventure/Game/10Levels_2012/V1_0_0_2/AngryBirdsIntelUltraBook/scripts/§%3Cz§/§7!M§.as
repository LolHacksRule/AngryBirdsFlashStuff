package §<z§
{
   import flash.events.Event;
   
   public class §7!M§ extends §[Z§
   {
       
      
      public function §7!M§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^!s§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§#h§ = null;
         var _loc1_:* = int(§3U§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  addr227:
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc1_ = §§pop();
                        if(!(_loc5_ && _loc1_))
                        {
                           addr338:
                           §§push(_loc1_);
                           break;
                        }
                     }
                     break;
                  }
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     addr175:
                     if(_loc6_ || _loc1_)
                     {
                        §§push(§§pop() < §?=§);
                        if(!_loc5_)
                        {
                           addr186:
                           §§push(§§pop());
                           if(!(_loc5_ && this))
                           {
                              addr195:
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr198:
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr205:
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() > -§ !e§);
                                                if(_loc6_ || this)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         break loop13;
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr195);
                                                   addr216:
                                                }
                                                break;
                                             }
                                             addr265:
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr268:
                                                   _loc4_ = §[d§();
                                                   if(!_loc5_)
                                                   {
                                                      §8X§.addChild(_loc4_);
                                                   }
                                                   _loc4_.data = §++§[_loc1_];
                                                   addr323:
                                                   if(_loc6_)
                                                   {
                                                      _loc4_.index = _loc1_;
                                                      addr288:
                                                      _loc4_.x = _loc3_;
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §3U§.push(_loc4_);
                                                            if(_loc6_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr288);
                                                               }
                                                               addr330:
                                                               _loc1_++;
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      addr316:
                                                      §§goto(addr316);
                                                   }
                                                   addr329:
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr330);
                                          }
                                          addr203:
                                       }
                                       §§goto(addr265);
                                       §§push(!§'?§(_loc1_));
                                    }
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr265);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr198);
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr203);
                        }
                        break;
                        §§goto(addr175);
                     }
                     addr342:
                     return;
                     addr252:
                  }
                  §§goto(addr205);
               }
               else
               {
                  _loc2_ = §3U§[_loc1_] as §^!s§;
                  if(!_loc5_)
                  {
                     _loc2_.x = §[<§(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= §?=§);
                        if(!_loc5_)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr119:
                                 while(true)
                                 {
                                    §§push(_loc2_.x <= -§ !e§);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                              }
                              addr118:
                           }
                           for(; §§pop(); §§goto(addr119))
                           {
                              if(!_loc5_)
                              {
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §8X§.removeChild(_loc2_);
                                 while(true)
                                 {
                                    §3U§.splice(§3U§.indexOf(_loc2_),1);
                                    addr85:
                                    while(true)
                                    {
                                       addr66:
                                       while(true)
                                       {
                                          §<!A§(_loc2_);
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr108:
                              }
                              §§goto(addr108);
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc6_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              if(_loc6_ || _loc3_)
                              {
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr108);
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr85);
                              addr77:
                           }
                           continue loop0;
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr108);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < §++§.length)
            {
               §§push(§§findproperty(§[<§));
               §§push(_loc1_);
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr252);
                  §§push(Number(§§pop().§[<§(§§pop() + (§++§[_loc1_].offset || 0))));
               }
               §§goto(addr247);
            }
            §§goto(addr342);
            §§goto(addr338);
         }
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc2_:Boolean = false;
         for each(_loc3_ in data)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc3_.offset == _loc3_.targetOffset)
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
                  addr190:
                  while(true)
                  {
                  }
                  addr190:
               }
               else if(_loc3_.offset == undefined)
               {
                  while(true)
                  {
                     _loc3_.offset = 0;
                     §§goto(addr190);
                  }
                  addr187:
               }
               loop3:
               while(true)
               {
                  if(_loc3_.targetOffset == undefined)
                  {
                     while(true)
                     {
                        _loc3_.targetOffset = 0;
                        addr172:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              while(true)
                              {
                              }
                              addr174:
                           }
                           else
                           {
                              §§goto(addr187);
                           }
                        }
                        continue loop3;
                     }
                     addr169:
                  }
                  while(true)
                  {
                     §§push(_loc3_.targetOffset - _loc3_.offset);
                     if(!_loc7_)
                     {
                        §§push(8);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc8_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              addr155:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 addr156:
                                 while(true)
                                 {
                                    §§push(0);
                                 }
                              }
                           }
                           addr154:
                        }
                        loop9:
                        while(true)
                        {
                           §§push(§§pop() > §§pop());
                           loop10:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(!_loc7_)
                                          {
                                             §§push(0.01);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                loop13:
                                                while(_loc8_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         _loc3_.offset += _loc4_;
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc3_.offset = _loc3_.targetOffset;
                                                                     addr121:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  addr117:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  if(!_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop11;
                                                                  §§goto(addr69);
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr155);
                                       }
                                       else
                                       {
                                          §§goto(addr169);
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                              §§goto(addr115);
                           }
                        }
                     }
                     §§goto(addr156);
                  }
               }
            }
            §§goto(addr174);
         }
         if(!_loc7_)
         {
            if(§[!+§ != §^!o§)
            {
               if(_loc8_ || param1)
               {
                  super.onEnterFrame(param1);
               }
               addr237:
            }
            else if(_loc2_)
            {
               if(_loc8_)
               {
                  if(_loc8_)
                  {
                     this.updatePositions();
                     addr223:
                  }
                  else
                  {
                     §§goto(addr237);
                  }
               }
               §§goto(addr223);
            }
            return;
         }
         §§goto(addr223);
      }
   }
}
