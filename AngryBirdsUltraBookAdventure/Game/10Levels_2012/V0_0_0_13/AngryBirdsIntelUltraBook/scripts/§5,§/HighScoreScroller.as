package §5,§
{
   import flash.events.Event;
   
   public class HighScoreScroller extends HScroller
   {
       
      
      public function HighScoreScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && maskHeight)
         {
         }
         if(!(_loc8_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop6:
                     while(!(_loc8_ && data))
                     {
                        if(!_loc8_)
                        {
                           super(maskWidth,maskHeight,data,itemRenderer,minMargin,maxMargin);
                           while(true)
                           {
                              if(!(_loc8_ && this))
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop6;
                           }
                           loop5:
                           while(_loc7_ || maskHeight)
                           {
                              if(_loc7_)
                              {
                                 continue loop6;
                              }
                              addr122:
                              while(true)
                              {
                                 break loop5;
                              }
                           }
                           continue loop1;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         var renderer:FriendItemRenderer = null;
         var x:* = NaN;
         var newRenderer:§'J§ = null;
         if(_loc6_ || x)
         {
            if(_loc5_)
            {
            }
         }
         var i:* = int(§?S§.length - 1);
         loop0:
         while(true)
         {
            §§push(i);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc5_ && this))
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           §§push(int(§§pop()));
                           if(_loc6_ || i)
                           {
                              i = §§pop();
                              if(_loc6_)
                              {
                                 addr596:
                                 loop18:
                                 while(true)
                                 {
                                    §§push(i);
                                    loop19:
                                    while(true)
                                    {
                                       if(§§pop() >= §&^§.length)
                                       {
                                          if(_loc6_ || renderer)
                                          {
                                             addr608:
                                          }
                                       }
                                       else
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§push(§§findproperty(§2!R§));
                                                §§push(i);
                                                if(!_loc5_)
                                                {
                                                   §§push(Number(§§pop().§2!R§(§§pop() + (§&^§[i].offset || 0))));
                                                   while(true)
                                                   {
                                                      x = §§pop();
                                                      continue loop20;
                                                   }
                                                   addr430:
                                                }
                                                §§goto(addr425);
                                                addr397:
                                                if(!(_loc6_ || renderer))
                                                {
                                                   continue;
                                                }
                                                §§push(x);
                                                if(!(_loc5_ && renderer))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() < §3!>§);
                                                      if(!(_loc5_ && x))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop30:
                                                         while(!_loc5_)
                                                         {
                                                            loop34:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc5_ && i))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§8!M§(i));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 if(_loc6_ || x)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    continue loop31;
                                                                                 }
                                                                                 addr389:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr390:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ && renderer)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr397);
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                              addr564:
                                                                              §§push(i);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc5_ && x)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                              if(_loc6_ || x)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              continue loop19;
                                                                              addr282:
                                                                           }
                                                                           §§goto(addr608);
                                                                        }
                                                                        addr373:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(_loc6_ || renderer)
                                                                           {
                                                                              if(!(_loc5_ && i))
                                                                              {
                                                                                 if(_loc5_ && renderer)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    newRenderer = §!e§();
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §'6§.addChild(newRenderer);
                                                                                       addr561:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          newRenderer.data = §&^§[i];
                                                                                          addr549:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             newRenderer.index = i;
                                                                                             newRenderer.x = x;
                                                                                             addr536:
                                                                                             addr531:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr514:
                                                                                                if(!(_loc5_ && i))
                                                                                                {
                                                                                                   addr503:
                                                                                                   §?S§.push(newRenderer);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && x))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && renderer))
                                                                                                            {
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  if(_loc6_ || i)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr503);
                                                                                                                     }
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  §§goto(addr549);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr536);
                                                                                                         }
                                                                                                         §§goto(addr514);
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                   }
                                                                                                   §§goto(addr531);
                                                                                                }
                                                                                                §§goto(addr561);
                                                                                             }
                                                                                             §§goto(addr549);
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       addr563:
                                                                                       §§goto(addr563);
                                                                                    }
                                                                                    §§goto(addr536);
                                                                                 }
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           addr609:
                                                                           return;
                                                                           addr318:
                                                                        }
                                                                        §§goto(addr564);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop34;
                                                                  }
                                                                  addr387:
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            addr358:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr387);
                                                         }
                                                         addr386:
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr430);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() > -§#Q§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr386);
                                                   §§goto(addr404);
                                                }
                                                addr404:
                                             }
                                          }
                                       }
                                       §§goto(addr609);
                                    }
                                 }
                                 addr596:
                              }
                              §§goto(addr608);
                           }
                           break;
                        }
                        break;
                        addr268:
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr268);
               }
               else if(!(_loc5_ && x))
               {
                  if(_loc6_ || x)
                  {
                     renderer = §?S§[i] as FriendItemRenderer;
                     if(_loc6_)
                     {
                        while(true)
                        {
                           renderer.x = §2!R§(renderer.index + (renderer.data.offset || 0));
                           addr250:
                           while(true)
                           {
                           }
                        }
                        addr252:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(renderer.x >= §3!>§);
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              addr222:
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(renderer.x <= -§#Q§);
                                       if(_loc6_ || x)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc6_ || i))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(i);
                                                if(!(_loc5_ && i))
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!(_loc5_ && i))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                i = §§pop();
                                                if(!(_loc5_ && x))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr112:
                                                         if(!(_loc5_ && x))
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               addr123:
                                                               loop14:
                                                               while(_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr127:
                                                                     if(_loc5_ && x)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §'6§.removeChild(renderer);
                                                                        continue loop3;
                                                                     }
                                                                     addr210:
                                                                     addr158:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §8Q§(renderer);
                                                                  addr144:
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr112);
                                                            }
                                                            addr209:
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §?S§.splice(§?S§.indexOf(renderer),1);
                                                               §§goto(addr158);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr252);
                                                            }
                                                         }
                                                         addr168:
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr123);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr209);
                                       }
                                    }
                                 }
                                 addr227:
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr222);
                     }
                  }
                  else
                  {
                     §§goto(addr596);
                  }
               }
               §§goto(addr608);
            }
            break;
         }
         while(true)
         {
            i = §§pop();
            if(!_loc5_)
            {
               §§goto(addr596);
            }
            §§goto(addr609);
         }
      }
      
      override protected function onEnterFrame(e:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || obj)
         {
         }
         var obj:Object = null;
         var diff:* = NaN;
         if(_loc8_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr52:
                  addr43:
                  while(true)
                  {
                     continue loop0;
                  }
                  if(!(_loc8_ || e))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr52);
                  }
                  else
                  {
                     addr67:
                     §§push(false);
                     if(_loc8_ || obj)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var somethingChanged:* = §§pop();
                     if(_loc7_)
                     {
                     }
                     loop5:
                     for each(obj in data)
                     {
                        if(_loc8_ || e)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 if(obj.offset != obj.targetOffset)
                                 {
                                    if(obj.offset == undefined)
                                    {
                                       while(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             obj.offset = 0;
                                             addr323:
                                             while(true)
                                             {
                                                addr316:
                                                while(!_loc7_)
                                                {
                                                }
                                             }
                                          }
                                          addr186:
                                          if(!(_loc8_ || obj))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             loop34:
                                             while(true)
                                             {
                                                §§push(true);
                                                if(_loc8_)
                                                {
                                                   addr125:
                                                   if(!(_loc7_ && somethingChanged))
                                                   {
                                                      addr132:
                                                      if(!(_loc7_ && e))
                                                      {
                                                         if(!(_loc7_ && somethingChanged))
                                                         {
                                                            addr147:
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc8_ || somethingChanged)
                                                            {
                                                               somethingChanged = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr209:
                                                                  while(!_loc7_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop34;
                                                                        }
                                                                        addr213:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  while(!_loc7_)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        addr271:
                                                                        while(true)
                                                                        {
                                                                           §§push(obj.targetOffset - obj.offset);
                                                                           addr277:
                                                                           while(true)
                                                                           {
                                                                              §§push(8);
                                                                              addr278:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 addr279:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr280:
                                                                                    while(true)
                                                                                    {
                                                                                       diff = §§pop();
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr265);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr147);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(obj.targetOffset == undefined)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr330);
                              }
                           }
                        }
                        §§goto(addr213);
                     }
                     if(_loc8_ || e)
                     {
                        loop40:
                        for(; §[?§ == §?U§; return)
                        {
                           if(somethingChanged)
                           {
                              if(_loc8_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    while(true)
                                    {
                                       addr404:
                                       addr420:
                                       while(_loc8_)
                                       {
                                          this.updatePositions();
                                          while(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr358);
                                                   }
                                                   break loop40;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop40;
                                          }
                                       }
                                       super.onEnterFrame(e);
                                    }
                                    addr403:
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr404);
                           }
                           addr358:
                        }
                        §§goto(addr420);
                     }
                     §§goto(addr403);
                  }
               }
            }
         }
         while(true)
         {
            if(_loc8_)
            {
               §§goto(addr43);
            }
            §§goto(addr54);
         }
         §§goto(addr67);
      }
   }
}
