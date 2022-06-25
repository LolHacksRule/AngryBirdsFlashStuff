package §<z§
{
   import flash.events.Event;
   
   public class §7!M§ extends §[Z§
   {
       
      
      public function §7!M§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!s§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§#h§ = null;
         var _loc1_:* = int(§3U§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc1_ = §§pop();
                        §§goto(addr351);
                     }
                     break;
                  }
                  addr282:
                  _loc4_ = §[d§();
                  if(!_loc6_)
                  {
                     §8X§.addChild(_loc4_);
                     _loc4_.data = §++§[_loc1_];
                     _loc4_.index = _loc1_;
                     addr304:
                     _loc4_.x = _loc3_;
                     addr343:
                     addr339:
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc6_)
                        {
                           §3U§.push(_loc4_);
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(false)
                                 {
                                    §§goto(addr304);
                                 }
                                 addr344:
                                 _loc1_++;
                                 if(_loc5_)
                                 {
                                    §§goto(addr347);
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr304);
                           addr327:
                        }
                        §§goto(addr339);
                     }
                     addr332:
                     §§goto(addr332);
                  }
                  §§goto(addr327);
               }
               else
               {
                  _loc2_ = §3U§[_loc1_] as §^!s§;
                  if(_loc5_)
                  {
                     _loc2_.x = §[<§(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= §?=§);
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc5_)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             while(false)
                                             {
                                                while(true)
                                                {
                                                   §<!A§(_loc2_);
                                                   addr62:
                                                   addr84:
                                                   while(!(_loc6_ && _loc1_))
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop11;
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.x <= -§ !e§);
                                                         if(_loc5_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr127:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr116:
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      continue loop1;
                                                      §§goto(addr62);
                                                   }
                                                   while(true)
                                                   {
                                                      §8X§.removeChild(_loc2_);
                                                      §§goto(addr84);
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr56:
                                          }
                                          while(true)
                                          {
                                             §3U§.splice(§3U§.indexOf(_loc2_),1);
                                             §§goto(addr84);
                                          }
                                       }
                                       §§goto(addr62);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              addr114:
                           }
                           §§goto(addr127);
                        }
                     }
                  }
                  §§goto(addr56);
               }
            }
            break;
         }
         loop13:
         while(true)
         {
            if(§§pop() < §++§.length)
            {
               §§push(§§findproperty(§[<§));
               §§push(_loc1_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop().§[<§(§§pop() + (§++§[_loc1_].offset || 0))));
                  loop14:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop15:
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop17:
                           while(true)
                           {
                              §§push(§§pop() > -§ !e§);
                              loop18:
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
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                if(_loc6_ && this)
                                                {
                                                   continue loop18;
                                                }
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ || this))
                                                         {
                                                            break;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop17;
                                                      addr243:
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop16;
                                                   }
                                                   §§push(!§'?§(_loc1_));
                                                }
                                                §§goto(addr351);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr344);
                                       }
                                       continue;
                                       addr207:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    §§goto(addr243);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr263);
            }
            addr351:
            if(!(_loc6_ && _loc3_))
            {
               addr347:
               §§push(_loc1_);
               break loop0;
            }
            return;
         }
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc2_:Boolean = false;
         loop0:
         for each(_loc3_ in data)
         {
            if(!(_loc8_ && param1))
            {
               if(_loc3_.offset != _loc3_.targetOffset)
               {
                  if(_loc3_.offset == undefined)
                  {
                     while(true)
                     {
                        _loc3_.offset = 0;
                        addr194:
                        while(true)
                        {
                        }
                     }
                     addr191:
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        while(!(_loc8_ && _loc2_))
                        {
                           if(!_loc8_)
                           {
                              _loc3_.targetOffset = 0;
                              loop5:
                              while(!_loc8_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          addr86:
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr93:
                                             §§push(0.01);
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         _loc3_.offset += _loc4_;
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr81:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc3_.offset = _loc3_.targetOffset;
                                                                     addr108:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr63:
                                                                           break loop15;
                                                                           addr63:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  addr104:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     addr150:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop15;
                                                                  }
                                                                  §§goto(addr63);
                                                               }
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                break loop12;
                                                §§goto(addr86);
                                             }
                                             addr138:
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             break loop12;
                                             §§goto(addr93);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr149:
                                    while(true)
                                    {
                                       §§goto(addr150);
                                       continue loop19;
                                    }
                                 }
                              }
                              addr186:
                              continue loop0;
                           }
                           §§goto(addr191);
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§push(_loc3_.targetOffset - _loc3_.offset);
                        if(!_loc8_)
                        {
                           §§push(8);
                           if(_loc7_ || this)
                           {
                              §§goto(addr138);
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr148);
                     }
                  }
               }
               §§goto(addr186);
            }
            §§goto(addr81);
         }
         if(!_loc8_)
         {
            if(§[!+§ == §^!o§)
            {
               if(_loc2_)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     if(_loc7_)
                     {
                        this.updatePositions();
                        addr232:
                        if(_loc8_ && param1)
                        {
                        }
                        §§goto(addr202);
                     }
                     else
                     {
                        addr243:
                        super.onEnterFrame(param1);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr232);
               }
               addr202:
               return;
            }
         }
         §§goto(addr243);
      }
   }
}
