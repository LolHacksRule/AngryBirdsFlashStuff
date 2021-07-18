package § "v§
{
   import §#!'§.§6"]§;
   import §,!,§.§4§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class TournamentHistoryPopup extends AbstractPopup
   {
       
      
      private var §;"E§:§4#9§;
      
      private var §2#@§:Boolean = false;
      
      public function TournamentHistoryPopup(param1:int, param2:int, param3:String = "TournamentHistoryPopup")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_PreviousResults[0],param3);
         }
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.init();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§-j§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        loop4:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr88:
                                    while(true)
                                    {
                                       §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§);
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
                                       §§push(§§pop().§-j§);
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().length > 0);
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                                 addr87:
                              }
                              loop5:
                              while(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.§2#@§ = true;
                                    }
                                    else
                                    {
                                       §§goto(addr88);
                                    }
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                    continue loop1;
                                 }
                              }
                              var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
                              var _loc2_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
                              if(_loc4_ || this)
                              {
                                 _loc1_.mask = _loc2_;
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§2#@§);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             this.§;"E§ = new §4#9§(550,344,null,§"#4§,5,5);
                                             while(true)
                                             {
                                                _loc1_.itemsContainer.addChild(this.§;"E§.scrollerSprite);
                                                while(_loc4_ || _loc2_)
                                                {
                                                   this.§!"1§();
                                                   while(true)
                                                   {
                                                   }
                                                   addr183:
                                                   if(_loc3_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9!V§();
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         addr174:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            addr198:
                                                            while(!_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                }
                                                continue loop11;
                                                if(_loc4_ || _loc2_)
                                                {
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc1_.mcStatuses.visible = !this.§2#@§;
                                          §§goto(addr198);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr87);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1.delta < 0)
            {
               if(_loc2_)
               {
                  this.scroll(this.§;"E§.visibleItemsCount);
               }
               addr82:
            }
            else if(param1.delta > 0)
            {
               if(!_loc3_)
               {
                  this.scroll(-this.§;"E§.visibleItemsCount);
               }
               if(!(_loc2_ || _loc2_))
               {
                  §§goto(addr82);
               }
               else
               {
                  addr60:
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param2)
            {
               if(!(_loc6_ && param3))
               {
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  addr81:
               }
               §§goto(addr81);
            }
            var _loc4_:* = param2.toUpperCase();
            if(!(_loc6_ && param1))
            {
               if("UP" !== _loc4_)
               {
                  if("DOWN" === _loc4_)
                  {
                     §§goto(addr110);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr128:
                  switch(§§pop())
                  {
                     case 0:
                        this.scroll(-this.§;"E§.visibleItemsCount);
                        if(_loc5_)
                        {
                           addr38:
                           break;
                        }
                        break;
                     case 1:
                        this.scroll(this.§;"E§.visibleItemsCount);
                        break;
                        addr46:
                     default:
                        super.onUIInteraction(param1,param2,param3);
                        if(_loc5_)
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr38);
                           }
                           else
                           {
                              §§goto(addr46);
                           }
                        }
                  }
                  return;
               }
               if(_loc5_ || this)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr123:
                  }
               }
               else
               {
                  addr110:
                  §§push(1);
                  if(!_loc6_)
                  {
                     §§goto(addr123);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr110);
         }
         §§goto(addr81);
      }
      
      private function §!"1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§;"E§);
            while(true)
            {
               §§pop().data = §@#B§(§4#;§.singleton.dataModel).§!!C§.§-j§;
               while(true)
               {
                  §§push(this.§;"E§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().refresh();
                  do
                  {
                     this.§9!V§();
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc1_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != 0)
            {
               do
               {
                  this.§;"E§.scroll(param1);
                  do
                  {
                     this.§9!V§();
                  }
                  while(_loc3_);
                  
               }
               while(!(_loc2_ || this));
               
               addr55:
            }
            return;
         }
         §§goto(addr55);
      }
      
      private function §9!V§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§2#@§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(this.§;"E§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop().data));
                                 if(!_loc4_)
                                 {
                                    addr62:
                                    if(§§pop())
                                    {
                                       addr87:
                                       if(_loc3_)
                                       {
                                          addr66:
                                          §§pop();
                                          §§push(this.§;"E§);
                                       }
                                       var _loc1_:Boolean = §§pop();
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.§2#@§);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(§§pop())
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   addr144:
                                                   while(true)
                                                   {
                                                      §§push(this.§;"E§);
                                                      addr147:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().data);
                                                      }
                                                   }
                                                }
                                                addr167:
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§§pop());
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§pop();
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(this.§;"E§);
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().data.length > 0);
                                                               if(_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr147);
                                                            }
                                                            addr132:
                                                            §§pop();
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     §§push(this.§;"E§);
                                                                     break loop6;
                                                                  }
                                                               }
                                                               addr142:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         §§push(§§pop().offset == this.§;"E§.data.length - this.§;"E§.visibleItemsCount);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            break loop4;
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      addr191:
                                                      var _loc2_:* = §§pop();
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §^c§.getItemByName("Button_ScrollUp").visible = _loc1_;
                                                      }
                                                      do
                                                      {
                                                         §^c§.getItemByName("Button_ScrollDown").visible = _loc2_;
                                                      }
                                                      while(!_loc3_);
                                                      
                                                      return;
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                break;
                                             }
                                             §§push(!§§pop());
                                             if(_loc3_)
                                             {
                                                §§goto(addr190);
                                             }
                                             §§goto(addr191);
                                          }
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr66);
                              }
                              §§push(§§pop().offset == 0);
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr79:
                                 §§push(!§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr87);
                                 }
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr62);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr66);
      }
   }
}
