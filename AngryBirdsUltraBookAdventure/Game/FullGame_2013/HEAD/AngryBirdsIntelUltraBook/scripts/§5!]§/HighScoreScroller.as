package §5!]§
{
   import flash.events.Event;
   
   public class HighScoreScroller extends HScroller
   {
       
      
      public function HighScoreScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || maskHeight)
         {
         }
         if(_loc8_)
         {
            while(true)
            {
               loop1:
               while(_loc8_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        do
                        {
                           while(!_loc7_)
                           {
                              while(_loc8_ || this)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                                 while(!(_loc7_ && data))
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(_loc7_ && data);
                        
                     }
                  }
               }
            }
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var renderer:FriendItemRenderer = null;
         var x:* = NaN;
         var newRenderer:§`4§ = null;
         if(_loc5_)
         {
            if(!_loc6_)
            {
               addr33:
            }
            var i:* = int(§-!$§.length - 1);
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc5_ || x)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!(_loc6_ && x))
                           {
                              §§push(int(§§pop()));
                              if(_loc5_)
                              {
                                 i = §§pop();
                                 loop37:
                                 while(true)
                                 {
                                    §§push(i);
                                    addr591:
                                    addr597:
                                    loop18:
                                    while(true)
                                    {
                                       if(§§pop() >= §+p§.length)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr598);
                                       }
                                       while(true)
                                       {
                                          loop20:
                                          for(; !(_loc6_ && x); while(true)
                                          {
                                             if(!(_loc5_ || i))
                                             {
                                                continue loop20;
                                             }
                                             if(_loc6_ && x)
                                             {
                                                continue loop37;
                                             }
                                             if(!_loc6_)
                                             {
                                                if(_loc6_ && x)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr365);
                                          },§§goto(addr598))
                                          {
                                             §§push(§§findproperty(§`a§));
                                             §§push(i);
                                             if(_loc5_ || i)
                                             {
                                                §§push(Number(§§pop().§`a§(§§pop() + (§+p§[i].offset || 0))));
                                                loop21:
                                                while(true)
                                                {
                                                   x = §§pop();
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop37;
                                                      }
                                                      if(!(_loc6_ && x))
                                                      {
                                                         §§push(x);
                                                         loop23:
                                                         for(; !_loc6_; §§push(x),if(!_loc5_)
                                                         {
                                                            continue;
                                                         },§§push(§§pop() < §&n§),if(!(_loc6_ && x))
                                                         {
                                                            if(!(_loc6_ && x))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            §§goto(addr385);
                                                         },§§goto(addr364))
                                                         {
                                                            §§push(§§pop() > -§@!8§);
                                                            if(!(_loc6_ && x))
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
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr364:
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr365:
                                                                                    while(true)
                                                                                    {
                                                                                       addr273:
                                                                                       addr558:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§<!M§(i));
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             continue loop28;
                                                                                          }
                                                                                       }
                                                                                       addr558:
                                                                                       §§push(i);
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          i = §§pop();
                                                                                          if(!(_loc5_ || renderer))
                                                                                          {
                                                                                             break loop18;
                                                                                          }
                                                                                          continue loop37;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                                 addr364:
                                                                              }
                                                                              addr295:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 §§goto(addr558);
                                                                              }
                                                                           }
                                                                           continue;
                                                                           addr339:
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr386:
                                                               while(_loc5_)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         continue loop21;
                                                      }
                                                      §§goto(addr455);
                                                   }
                                                }
                                             }
                                             §§goto(addr421);
                                          }
                                       }
                                       addr598:
                                       return;
                                       continue loop37;
                                    }
                                    §§goto(addr598);
                                 }
                                 addr455:
                                 addr590:
                              }
                              §§goto(addr558);
                           }
                           §§goto(addr591);
                        }
                        §§goto(addr598);
                     }
                     §§goto(addr597);
                  }
                  else if(!(_loc6_ && renderer))
                  {
                     if(_loc5_)
                     {
                        renderer = §-!$§[i] as FriendItemRenderer;
                        if(_loc5_)
                        {
                           loop1:
                           while(true)
                           {
                              renderer.x = §`a§(renderer.index + (renderer.data.offset || 0));
                              loop2:
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(renderer.x >= §&n§);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§pop();
                                                addr207:
                                                while(true)
                                                {
                                                   §§push(renderer.x <= -§@!8§);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   addr184:
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                             addr206:
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(i);
                                                   if(_loc5_ || renderer)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr83:
                                                         §§push(int(§§pop()));
                                                      }
                                                      i = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr87:
                                                      if(_loc6_ && this)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && i))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(!_loc6_)
                                                               {
                                                                  §![§(renderer);
                                                                  continue loop11;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_ && x)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr125);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!_loc6_)
                                                                     {
                                                                        §-!$§.splice(§-!$§.indexOf(renderer),1);
                                                                        continue loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §"!,§.removeChild(renderer);
                                                                        continue loop1;
                                                                     }
                                                                     addr191:
                                                                     addr150:
                                                                  }
                                                               }
                                                               addr125:
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr83);
                                                }
                                                continue loop0;
                                                addr66:
                                             }
                                             if(!_loc5_)
                                             {
                                             }
                                             §§goto(addr191);
                                          }
                                       }
                                    }
                                    §§goto(addr206);
                                 }
                              }
                           }
                        }
                        §§goto(addr207);
                     }
                     else
                     {
                        §§goto(addr388);
                     }
                  }
                  §§goto(addr590);
               }
               break;
            }
            while(true)
            {
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
                  if(!_loc6_)
                  {
                     §§goto(addr558);
                  }
                  §§goto(addr591);
               }
               §§goto(addr558);
               §§goto(addr558);
            }
         }
         §§goto(addr33);
      }
      
      override protected function onEnterFrame(e:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         var obj:Object = null;
         var diff:* = NaN;
         if(_loc7_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr41:
                  while(true)
                  {
                     addr43:
                     while(!_loc8_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr32:
               if(!(_loc7_ || somethingChanged))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr41);
               }
               addr51:
               §§push(false);
               if(_loc7_ || somethingChanged)
               {
                  §§push(Boolean(§§pop()));
               }
               var somethingChanged:* = §§pop();
               if(!_loc7_)
               {
               }
               loop5:
               for each(obj in data)
               {
                  if(!(_loc8_ && this))
                  {
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(obj.offset != obj.targetOffset)
                           {
                              if(obj.offset == undefined)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    addr329:
                                    while(true)
                                    {
                                       obj.offset = 0;
                                       continue loop8;
                                    }
                                 }
                              }
                              loop12:
                              while(true)
                              {
                                 if(obj.targetOffset == undefined)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          obj.targetOffset = 0;
                                          addr289:
                                          while(!_loc8_)
                                          {
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(obj.targetOffset - obj.offset);
                                    while(true)
                                    {
                                       §§push(8);
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc8_ && somethingChanged))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             diff = §§pop();
                                             loop21:
                                             while(!_loc8_)
                                             {
                                                loop22:
                                                while(_loc7_)
                                                {
                                                   §§push(diff);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      §§push(0);
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() > §§pop());
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc8_ && somethingChanged))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop23;
                                                                  addr187:
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     addr206:
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           obj.offset += diff;
                                                                           while(!(_loc8_ && this))
                                                                           {
                                                                              loop30:
                                                                              while(_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    addr131:
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    somethingChanged = §§pop();
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       if(!(_loc8_ && obj))
                                                                                       {
                                                                                          if(_loc8_ && this)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          if(!(_loc8_ && e))
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§goto(addr112);
                                                                                          }
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ || somethingChanged)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr207:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      addr321:
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                }
                                                                                                addr219:
                                                                                             }
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr112);
                                                                                          continue loop30;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                  }
                                                                  addr205:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop19;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr277);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr321);
                        }
                     }
                  }
                  §§goto(addr228);
               }
               if(_loc7_)
               {
                  loop38:
                  while(§"L§ == §+W§)
                  {
                     if(somethingChanged)
                     {
                        loop39:
                        while(_loc7_)
                        {
                           if(_loc8_ && e)
                           {
                              super.onEnterFrame(e);
                              break;
                           }
                           if(_loc8_)
                           {
                              break loop38;
                              addr398:
                           }
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 this.updatePositions();
                                 while(!(_loc8_ && this))
                                 {
                                    if(!(_loc7_ || somethingChanged))
                                    {
                                       continue;
                                    }
                                    if(!_loc7_)
                                    {
                                       §§goto(addr398);
                                    }
                                    §§goto(addr342);
                                 }
                                 continue loop39;
                              }
                              return;
                           }
                           continue loop38;
                        }
                     }
                     §§goto(addr342);
                  }
                  §§goto(addr414);
               }
               §§goto(addr400);
            }
         }
         while(true)
         {
            if(_loc7_)
            {
               §§goto(addr32);
            }
            §§goto(addr43);
         }
         §§goto(addr51);
      }
   }
}
