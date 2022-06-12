package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §18§ extends Popup
   {
       
      
      private const §4K§:Number = 0;
      
      private const §5!6§:Number = -5;
      
      private const §^=§:Number = 5;
      
      private const § V§:Number = 50;
      
      private const §`";§:Number = 4;
      
      private var §"!T§:StatePopupManager;
      
      private var §"_§:Boolean = false;
      
      private var §-!Y§:Number = 0;
      
      private var §";§:Number = 0;
      
      private var §&!4§:Number = 0;
      
      private var §0"8§:Number = 0;
      
      private var §0">§:Number = 0;
      
      private var §0x§:Number = 0;
      
      private var §%b§:Number = 0;
      
      private var §7q§:Number = 0;
      
      private var §?!!§:Number = 0;
      
      private var §+d§:Number = 4;
      
      public function §18§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(§ "A§.§4[§.Views.PopupView_TournamentTermsAndConditions[0],param1);
            loop0:
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
               loop1:
               while(true)
               {
                  this.§"!T§ = param2;
                  loop2:
                  while(true)
                  {
                     mClip.stage.addEventListener(Event.ENTER_FRAME,this.§[!V§);
                     loop3:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#O§);
                        while(!_loc4_)
                        {
                           mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§3"E§);
                           continue loop3;
                           addr60:
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           this.§-_§();
                           addr69:
                           if(_loc3_ || param1)
                           {
                              addr38:
                              if(_loc3_ || param1)
                              {
                                 if(!_loc4_)
                                 {
                                    return;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       this.§0"8§ = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§4K§;
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§-!Y§);
                                          if(_loc3_)
                                          {
                                             addr92:
                                             §§push(§§pop() - mClip.TermsScrollBar.TermsScrollBar_Button.height);
                                             if(_loc3_ || param1)
                                             {
                                                addr88:
                                                §§push(§§pop() + this.§5!6§);
                                             }
                                             §§pop().§0">§ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr99:
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      this.§7q§ = mClip.TermsAndConditions_Text.y;
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr60);
                                                         }
                                                         else
                                                         {
                                                            addr167:
                                                            while(true)
                                                            {
                                                               this.§";§ = mClip.TermsAndConditions_Text.y + this.§^=§;
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(mClip.TermsAndConditions_Text.y + this.§-!Y§ - mClip.TermsAndConditions_Text.height);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() + this.§ V§);
                                                                  }
                                                                  §§pop().§&!4§ = §§pop();
                                                                  continue loop11;
                                                               }
                                                            }
                                                            addr167:
                                                         }
                                                         §§goto(addr69);
                                                      }
                                                      continue loop3;
                                                      addr54:
                                                   }
                                                   else
                                                   {
                                                      addr195:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§+d§;
                                                         break loop13;
                                                      }
                                                      break;
                                                      §§goto(addr99);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
                                                      §§goto(addr184);
                                                   }
                                                   addr184:
                                                }
                                                break;
                                                §§goto(addr38);
                                             }
                                             while(true)
                                             {
                                                this.§-!Y§ = mClip.TermsScrollBar.height;
                                                §§goto(addr167);
                                                §§goto(addr92);
                                             }
                                             addr92:
                                          }
                                          §§goto(addr88);
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr54);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      private function §8c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§"_§)
            {
               loop0:
               while(true)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(this.§?!!§);
                        if(_loc3_)
                        {
                           §§push(§§pop() + 5);
                        }
                        §§pop().§?!!§ = §§pop();
                     }
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           this.§-_§();
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop1;
                           addr90:
                        }
                        §§goto(addr25);
                     }
                     addr108:
                  }
                  else
                  {
                     §§push(this);
                     §§push(this.§?!!§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - 5);
                     }
                     §§pop().§?!!§ = §§pop();
                  }
                  while(true)
                  {
                     if(!(_loc2_ && param1))
                     {
                        continue loop0;
                     }
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr25);
         }
         addr25:
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.close();
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      private function §[!V§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§+d§)
            {
               while(true)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§+d§;
                  addr128:
                  while(true)
                  {
                  }
               }
               addr122:
            }
            loop2:
            while(true)
            {
               §§push(this.§"_§);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§?!!§;
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§?!!§);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() * 0.8);
                                       }
                                       §§pop().§?!!§ = §§pop();
                                       loop7:
                                       while(!_loc4_)
                                       {
                                          loop8:
                                          do
                                          {
                                             this.§extends§();
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§-_§();
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             continue loop2;
                                          }
                                          while(false);
                                          
                                          §§push(mClip.TermsAndConditions_Text.y - (this.§";§ + this.§7q§));
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§?!!§);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() == 0);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop11;
                                          }
                                          addr114:
                                       }
                                       else
                                       {
                                          §§goto(addr122);
                                       }
                                    }
                                 }
                                 var _loc2_:* = §§pop();
                                 if(!(_loc4_ && this))
                                 {
                                    mClip.TermsAndConditions_Text.y -= _loc2_ / 5;
                                 }
                                 return;
                              }
                           }
                           §§goto(addr129);
                        }
                        addr87:
                     }
                  }
               }
               §§goto(addr111);
            }
         }
         §§goto(addr114);
      }
      
      private function §#O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§"_§)
            {
               loop0:
               while(true)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§0x§;
                  addr83:
                  while(true)
                  {
                     this.§extends§();
                     while(!_loc2_)
                     {
                        continue loop0;
                        this.§-_§();
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr20);
                        }
                     }
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr83);
      }
      
      private function §extends§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.y >= this.§0"8§)
            {
               if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§0">§)
               {
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        addr71:
                        mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§0">§;
                        while(_loc1_)
                        {
                           this.§?!!§ = 0;
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              addr92:
                              mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§0"8§;
                              break;
                           }
                           §§goto(addr19);
                        }
                        this.§?!!§ = 0;
                        addr77:
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr77);
               }
               addr19:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr71);
      }
      
      private function §-_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%b§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§0">§;
            loop0:
            while(true)
            {
               §§push(this.§%b§);
               loop1:
               while(true)
               {
                  if(§§pop() >= 0)
                  {
                     §§push(this.§%b§);
                     if(!_loc2_)
                     {
                        if(§§pop() > 0.999)
                        {
                           if(_loc1_ || this)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.§%b§ = 1;
                                 addr94:
                                 while(true)
                                 {
                                    break loop1;
                                 }
                                 addr94:
                              }
                              else
                              {
                                 break;
                                 addr112:
                              }
                           }
                           §§goto(addr94);
                        }
                        break;
                     }
                     continue;
                  }
                  if(!(_loc2_ && this))
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     this.§%b§ = 0;
                  }
                  §§goto(addr112);
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§&!4§);
                  if(_loc1_)
                  {
                     §§push(this.§";§);
                     if(!_loc2_)
                     {
                        addr39:
                        §§push(§§pop() - §§pop());
                        if(_loc1_)
                        {
                           §§push(this.§%b§);
                        }
                        §§pop().§7q§ = §§pop();
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr39);
               }
               return;
            }
         }
         §§goto(addr94);
      }
      
      private function §3"E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§?!!§ = 0;
            while(true)
            {
               mClip.Button_Close.mouseEnabled = true;
               while(_loc2_ || _loc2_)
               {
                  this.§"_§ = false;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("SCROLL_DOWN");
            if(_loc5_ || param1)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           addr133:
                        }
                     }
                     else
                     {
                        addr125:
                        §§push(1);
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     addr123:
                     §§push("SCROLL_UP");
                     §§push(_loc4_);
                  }
                  §§goto(addr125);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr125);
               }
               else
               {
                  §§push(2);
               }
               addr138:
               switch(§§pop())
               {
                  case 0:
                     this.§?!!§ = 0;
                     if(_loc5_ || param1)
                     {
                        mClip.Button_Close.mouseEnabled = false;
                        if(_loc5_)
                        {
                           this.§"_§ = true;
                           addr34:
                           this.§0x§ = mClip.TermsScrollBar.TermsScrollBar_Button.y - (mClip.TermsScrollBar as MovieClip).mouseY;
                           if(_loc5_)
                           {
                              break;
                           }
                           break;
                           addr54:
                        }
                        break;
                     }
                     break;
                  case 1:
                     this.§3"E§(null);
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && param3))
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr54);
                        }
                        §§goto(addr34);
                     }
               }
               return;
            }
            §§goto(addr123);
         }
         §§goto(addr125);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
            loop0:
            while(true)
            {
               mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§[!V§);
               loop1:
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#O§);
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§3"E§);
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§8c§);
                        addr61:
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     addr33:
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            super.close();
            if(_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr61);
         }
         §§goto(addr52);
      }
   }
}
