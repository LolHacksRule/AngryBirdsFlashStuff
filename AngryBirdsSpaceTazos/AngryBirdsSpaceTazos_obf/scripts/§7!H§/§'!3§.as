package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import §^r§.§@!T§;
   import §^r§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'!3§ extends §]!P§ implements §&!k§
   {
       
      
      public function §'!3§(param1:int, param2:MovieClip, param3:§3!'§, param4:§'y§, param5:Boolean = true, param6:Rectangle = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §<! §(param1:§'"H§, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(§'!s§)
            {
               if(_loc3_)
               {
                  §§push(§'!s§.popup.id == param1.popup.id);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              break loop0;
                           }
                           if(_loc3_ || param2)
                           {
                              break;
                           }
                           addr110:
                           addr110:
                           while(true)
                           {
                              §§push(param2);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(!§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr77);
                           }
                        }
                        addr24:
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        addr77:
                        return §§pop();
                        addr67:
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr77);
                  §§push(false);
               }
               §§goto(addr110);
            }
            §§goto(addr24);
         }
         §§goto(addr110);
      }
      
      override public function openPopup(param1:§'"H§, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || param1)
         {
            if(!§'!s§)
            {
               this.§@$§(param1);
               if(_loc5_ || param2)
               {
                  if(!_loc6_)
                  {
                     if(_loc6_)
                     {
                        loop0:
                        while(true)
                        {
                           §null §.unshift(param1);
                           loop1:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 this.closePopup(this.§5z§(param1),true);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(int(§'!s§.popup.priority));
                                    loop44:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          §§push(param1.popup.priority);
                                          loop40:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop44;
                                             }
                                             §§push(int(§§pop()));
                                             loop41:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   if(!§6!%§)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(Boolean(§'!s§.popup.isTransitioning));
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop14:
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop15:
                                                                                             while(!(_loc6_ && param2))
                                                                                             {
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   if(_loc5_ || param2)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     addr120:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §null §.unshift(param1);
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       this.closePopup(this.§5z§(param1),true);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                          {
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       addr57:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           addr375:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(param1.useTransitionIn);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop26:
                                                                                                                                             for(; §§pop(); if(_loc5_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                break loop13;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr346:
                                                                                                                                                   §§push(param1.useTransitionOut);
                                                                                                                                                   if(!(_loc5_ || param2))
                                                                                                                                                   {
                                                                                                                                                      break loop14;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr300:
                                                                                                                                             addr256:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr302:
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            §'!s§.useTransitionIn = false;
                                                                                                                                                            break loop12;
                                                                                                                                                         }
                                                                                                                                                         addr474:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop40;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               loop32:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     loop33:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§8"6§.§8p§);
                                                                                                                                                                        loop30:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr467:
                                                                                                                                                                              §§push(Boolean(§'!s§.popup.isTransitioning));
                                                                                                                                                                              §§push(Boolean(§'!s§.popup.isTransitioning));
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc5_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr400:
                                                                                                                                                                                 §§push(§8"6§.TOP);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §null §.push(param1);
                                                                                                                                                                                       break loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§'!s§.popup.isTransitioning));
                                                                                                                                                                                       addr414:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          loop21:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr384:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                  addr347:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr385:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1.§&!G§);
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr352:
                                                                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                        while(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr364:
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(!(_loc6_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    §§goto(addr375);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr467);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop21;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr444:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                    addr445:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                        addr360:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr443);
                                                                                                                                                                                                                        §§goto(addr352);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr442:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr363);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr383:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr384);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                addr416:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr383);
                                                                                                                                                                                          }
                                                                                                                                                                                          loop47:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             addr470:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr442);
                                                                                                                                                                                                continue loop47;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr400);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr391:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr468);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §null §.push(param1);
                                                                                                                                                      break loop1;
                                                                                                                                                      addr489:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr467);
                                                                                                                                                }
                                                                                                                                                §§goto(addr419);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §null §.unshift(§'!s§);
                                                                                                                                                loop37:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §null §.unshift(param1);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.closePopup(this.§5z§(param1),true);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  break loop1;
                                                                                                                                                               }
                                                                                                                                                               break loop12;
                                                                                                                                                            }
                                                                                                                                                            addr234:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr470);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr271);
                                                                                                                                                      }
                                                                                                                                                      addr271:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr347);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr468);
                                                                                                                                                }
                                                                                                                                                §§goto(addr489);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr360);
                                                                                                                                    }
                                                                                                                                    addr339:
                                                                                                                                 }
                                                                                                                                 §§goto(addr444);
                                                                                                                              }
                                                                                                                              addr336:
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                        }
                                                                                                                        addr122:
                                                                                                                     }
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                               §§goto(addr384);
                                                                                                            }
                                                                                                            §§goto(addr468);
                                                                                                         }
                                                                                                         §§goto(addr120);
                                                                                                      }
                                                                                                      addr217:
                                                                                                   }
                                                                                                   §§goto(addr346);
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break loop1;
                                                                                             }
                                                                                             §§goto(addr445);
                                                                                          }
                                                                                          §§goto(addr372);
                                                                                       }
                                                                                       addr291:
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§goto(addr300);
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                    §§goto(addr122);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr291);
                                                                     §§push(§§pop() == §§pop());
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               while(!_loc6_)
                                                               {
                                                                  §§goto(addr256);
                                                               }
                                                               break loop1;
                                                               addr427:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr402);
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                   §§goto(addr474);
                                                }
                                                §§goto(addr32);
                                             }
                                          }
                                          continue loop44;
                                       }
                                    }
                                 }
                                 addr511:
                              }
                              §§goto(addr427);
                           }
                           §§goto(addr32);
                        }
                     }
                     addr32:
                     return;
                  }
                  §§goto(addr241);
               }
               §§goto(addr57);
            }
            §§goto(addr511);
         }
         §§goto(addr217);
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§'!s§)
            {
               if(_loc4_ || this)
               {
                  addr77:
                  §'!s§.allowQueue = param2;
               }
               while(true)
               {
                  §'!s§.popup.removeEventListener(§@!T§.CLOSE,this.§6'§);
                  while(!(_loc3_ && this))
                  {
                     §'!s§.popup.close(param1);
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr77);
      }
      
      protected function §5z§(param1:§'"H§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§'!s§)
            {
               if(_loc3_ || this)
               {
                  §§push(param1.§&!G§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr50:
                           §§push(Boolean(§'!s§.useTransitionOut));
                           if(!_loc2_)
                           {
                              §§goto(addr83);
                           }
                        }
                        else
                        {
                           addr84:
                           return false;
                        }
                     }
                     else
                     {
                        §§push(param1.§&!G§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || param1)
                           {
                              addr83:
                              return §§pop();
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr84);
         }
         §§goto(addr50);
      }
      
      protected function §@$§(param1:§'"H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §'!s§ = param1;
         }
         loop0:
         while(true)
         {
            §'!s§.popup.open(§[S§,§7Z§,§3!+§,§'!s§.useTransitionIn);
            loop1:
            while(true)
            {
               setViewSize(§ !%§,§=D§);
               while(true)
               {
                  §'!s§.popup.addEventListener(§@!T§.§7!l§,this.§<8§);
                  while(_loc3_)
                  {
                     §'!s§.popup.addEventListener(§@!T§.CLOSE,this.§6'§);
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§?"<§,§'!s§));
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 return;
                              }
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §!3§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3z§ = null;
         if(_loc2_ || this)
         {
            if(§'!s§)
            {
               addr28:
               _loc1_ = §'!s§.popup;
               if(_loc2_)
               {
                  _loc1_.removeEventListener(§@!T§.CLOSE,this.§6'§);
               }
               while(true)
               {
                  _loc1_.removeEventListener(§@!T§.§7!l§,this.§<8§);
                  loop1:
                  while(!(_loc3_ && _loc2_))
                  {
                     do
                     {
                        §'!s§ = null;
                        while(_loc2_ || _loc1_)
                        {
                           dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§?"<§));
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr60);
                        }
                        continue loop1;
                     }
                     while(false);
                     
                     return;
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr28);
      }
      
      protected function §6'§(param1:§@!T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§^!I§,§?"<§,§'!s§));
         }
      }
      
      protected function §<8§(param1:§@!T§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'"H§ = null;
         var _loc2_:* = true;
         if(_loc5_ || _loc2_)
         {
            if(§'!s§)
            {
               if(_loc5_ || param1)
               {
                  §§push(Boolean(§'!s§.allowQueue));
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc5_)
                     {
                        this.§!3§();
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr82);
               }
            }
         }
         addr70:
         if(§null §.length > 0)
         {
            if(!(_loc4_ && _loc3_))
            {
               addr81:
               addr82:
               if(!_loc2_)
               {
               }
               §§goto(addr107);
            }
            _loc3_ = §null §.shift();
            if(_loc5_ || this)
            {
               this.openPopup(_loc3_);
            }
         }
         addr107:
      }
   }
}
