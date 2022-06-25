package §5,§
{
   import flash.events.Event;
   
   public class HighScoreScroller extends HScroller
   {
       
      
      public function HighScoreScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         if(!(_loc8_ && this))
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     addr122:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
               if(_loc8_ && data)
               {
                  continue;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr84);
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && x)
         {
         }
         var renderer:FriendItemRenderer = null;
         var x:* = NaN;
         var newRenderer:§'J§ = null;
         if(_loc5_)
         {
            if(_loc6_ && x)
            {
            }
         }
         var i:* = int(§?S§.length - 1);
         loop0:
         while(true)
         {
            §§push(i);
            if(_loc5_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!_loc6_)
                  {
                     if(!(_loc6_ && renderer))
                     {
                        §§push(0);
                        if(!(_loc6_ && i))
                        {
                           addr592:
                           §§push(int(§§pop()));
                           if(_loc5_)
                           {
                              i = §§pop();
                              addr595:
                              §§push(i);
                              break;
                              addr460:
                           }
                           i = §§pop();
                           if(!_loc6_)
                           {
                              §§goto(addr595);
                           }
                           return;
                           addr602:
                        }
                        addr584:
                        §§push(int(§§pop()));
                        if(!(_loc6_ && x))
                        {
                           §§goto(addr592);
                        }
                        break;
                     }
                  }
                  §§goto(addr602);
               }
               else
               {
                  if(_loc5_ || this)
                  {
                     if(!_loc6_)
                     {
                        renderer = §?S§[i] as FriendItemRenderer;
                        if(_loc5_)
                        {
                           loop1:
                           while(true)
                           {
                              renderer.x = §2!R§(renderer.index + (renderer.data.offset || 0));
                              while(true)
                              {
                                 loop3:
                                 for(; !_loc6_; while(_loc5_ || x)
                                 {
                                    §§push(renderer.x <= -§#Q§);
                                    if(_loc5_ || i)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr192);
                                          §§push(Boolean(§§pop()));
                                       }
                                       else
                                       {
                                          §§goto(addr217);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr192);
                                    §§goto(addr222);
                                 })
                                 {
                                    §§push(renderer.x >= §3!>§);
                                    if(!(_loc6_ && x))
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(i);
                                                      if(!(_loc6_ && renderer))
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(!_loc6_)
                                                         {
                                                            addr88:
                                                            §§push(int(§§pop()));
                                                         }
                                                         i = §§pop();
                                                         if(!(_loc6_ && i))
                                                         {
                                                            if(_loc5_ || x)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr108:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && x))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop10:
                                                                        while(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr140:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §8Q§(renderer);
                                                                                    while(!(_loc6_ && this))
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr123:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr201:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || x)
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr202:
                                                                                    while(true)
                                                                                    {
                                                                                       §'6§.removeChild(renderer);
                                                                                       §§goto(addr167);
                                                                                    }
                                                                                 }
                                                                                 addr167:
                                                                              }
                                                                           }
                                                                        }
                                                                        while(_loc5_)
                                                                        {
                                                                           §?S§.splice(§?S§.indexOf(renderer),1);
                                                                           §§goto(addr153);
                                                                        }
                                                                        addr153:
                                                                        §§goto(addr202);
                                                                     }
                                                                     §§goto(addr123);
                                                                  }
                                                                  addr137:
                                                                  continue loop11;
                                                               }
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr88);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr201);
                                                addr192:
                                                if(_loc5_ || i)
                                                {
                                                   continue;
                                                }
                                                addr222:
                                                addr222:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop3;
                                                   §§goto(addr192);
                                                }
                                             }
                                             addr199:
                                          }
                                       }
                                       addr217:
                                    }
                                    §§goto(addr222);
                                 }
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                     else
                     {
                        §§push(§§findproperty(§2!R§));
                        §§push(i);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop().§2!R§(§§pop() + (§&^§[i].offset || 0))));
                           loop20:
                           while(true)
                           {
                              x = §§pop();
                              if(_loc5_ || i)
                              {
                                 loop21:
                                 while(true)
                                 {
                                    §§push(x);
                                    loop22:
                                    while(true)
                                    {
                                       §§push(§§pop() > -§#Q§);
                                       loop23:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop24:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop25:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop26:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop29:
                                                      while(true)
                                                      {
                                                         loop30:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr384:
                                                                  while(true)
                                                                  {
                                                                     addr313:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§8!M§(i));
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop31;
                                                                        }
                                                                        addr327:
                                                                        if(_loc5_ || renderer)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§goto(addr595);
                                                                              }
                                                                              continue loop20;
                                                                              addr395:
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§goto(addr595);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop29;
                                                                              §§goto(addr327);
                                                                           }
                                                                           addr372:
                                                                        }
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                            while(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && renderer))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc6_ && renderer))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr595);
                                                                     }
                                                                     §§goto(addr592);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr460);
                                                                  }
                                                               }
                                                               continue loop21;
                                                            }
                                                            §§push(i);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                               break loop0;
                                                            }
                                                            §§goto(addr584);
                                                         }
                                                         continue loop26;
                                                      }
                                                   }
                                                   §§goto(addr395);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr595);
                           }
                        }
                        §§goto(addr417);
                        addr435:
                     }
                  }
                  §§goto(addr352);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() >= §&^§.length)
            {
               if(!_loc6_)
               {
                  §§goto(addr592);
               }
               break;
            }
            if(_loc5_ || renderer)
            {
               if(_loc5_)
               {
                  §§goto(addr435);
               }
               break;
            }
            break;
            §§goto(addr592);
         }
         §§goto(addr592);
      }
      
      override protected function onEnterFrame(e:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
         }
         var obj:Object = null;
         var diff:* = NaN;
         if(!_loc7_)
         {
            while(true)
            {
               loop1:
               for(; _loc8_; while(true)
               {
                  if(_loc8_ || obj)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr40);
         }
         §§push(false);
         if(_loc8_ || somethingChanged)
         {
            §§push(Boolean(§§pop()));
         }
         var somethingChanged:* = §§pop();
         if(!_loc8_)
         {
         }
         loop5:
         for each(obj in data)
         {
            if(!_loc7_)
            {
               while(true)
               {
               }
               addr350:
            }
            while(true)
            {
               if(obj.offset != obj.targetOffset)
               {
                  if(obj.offset == undefined)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           obj.offset = 0;
                           while(true)
                           {
                              addr325:
                              while(true)
                              {
                              }
                              while(_loc8_ || this)
                              {
                                 continue loop8;
                                 addr90:
                                 if(!(_loc8_ || somethingChanged))
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    if(true)
                                    {
                                       continue loop5;
                                    }
                                    loop34:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!(_loc7_ && somethingChanged))
                                       {
                                          addr110:
                                          if(_loc8_ || this)
                                          {
                                             addr118:
                                             §§push(Boolean(§§pop()));
                                             if(_loc8_)
                                             {
                                                somethingChanged = §§pop();
                                                loop35:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(_loc8_ || obj)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc8_ || somethingChanged)
                                                         {
                                                            if(_loc8_ || obj)
                                                            {
                                                               obj.offset = obj.targetOffset;
                                                               break loop35;
                                                            }
                                                            continue loop9;
                                                         }
                                                         addr320:
                                                         while(_loc8_)
                                                         {
                                                            obj.targetOffset = 0;
                                                            loop15:
                                                            while(true)
                                                            {
                                                               addr307:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  addr287:
                                                                  while(true)
                                                                  {
                                                                     §§push(obj.targetOffset - obj.offset);
                                                                     addr293:
                                                                     while(true)
                                                                     {
                                                                        §§push(8);
                                                                        addr294:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           addr295:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr296:
                                                                              while(true)
                                                                              {
                                                                                 diff = §§pop();
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop34;
                                                               }
                                                               addr319:
                                                               while(true)
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop35;
                                                      }
                                                      §§goto(addr275);
                                                      addr138:
                                                   }
                                                   §§goto(addr232);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop34;
                                                   }
                                                   §§goto(addr270);
                                                }
                                                addr182:
                                             }
                                             break;
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr118);
                                    }
                                    while(!(_loc7_ && e))
                                    {
                                       §§goto(addr216);
                                       §§push(Boolean(§§pop()));
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr182);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(obj.targetOffset == undefined)
                     {
                        §§goto(addr319);
                     }
                     §§goto(addr287);
                     §§goto(addr325);
                  }
               }
               §§goto(addr337);
               if(_loc7_ && obj)
               {
                  continue;
               }
               §§goto(addr138);
            }
         }
         if(_loc8_ || this)
         {
         }
         do
         {
            if(§[?§ == §?U§)
            {
               if(somethingChanged)
               {
                  loop40:
                  while(!(_loc7_ && this))
                  {
                     loop41:
                     while(true)
                     {
                        this.updatePositions();
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop41;
                        }
                        continue loop40;
                     }
                  }
                  break;
                  addr430:
               }
               break;
            }
            if(!_loc8_)
            {
            }
            super.onEnterFrame(e);
            addr440:
            §§goto(addr430);
         }
         while(!(_loc8_ || this));
         
      }
   }
}
