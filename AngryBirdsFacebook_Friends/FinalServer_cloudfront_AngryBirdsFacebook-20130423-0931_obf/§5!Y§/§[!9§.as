package §5!Y§
{
   import §1!t§.§""B§;
   import §6!H§.§6!e§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[!9§ extends Popup
   {
       
      
      private const §3"Z§:Number = 0;
      
      private const §#!U§:Number = -5;
      
      private const §@"5§:Number = 5;
      
      private const §'!F§:Number = 50;
      
      private const §'1§:Number = 4;
      
      private var §>"P§:StatePopupManager;
      
      private var §^"Q§:Boolean = false;
      
      private var §1"Y§:Number = 0;
      
      private var §=4§:Number = 0;
      
      private var §2"&§:Number = 0;
      
      private var §]7§:Number = 0;
      
      private var §2"T§:Number = 0;
      
      private var §<!`§:Number = 0;
      
      private var §8o§:Number = 0;
      
      private var §'"E§:Number = 0;
      
      private var §%-§:Number = 0;
      
      private var §="M§:Number = 4;
      
      public function §[!9§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(§ "<§.§%I§.Views.PopupView_RaffleWinnersPopup[0],param1);
            loop0:
            while(true)
            {
               this.§>"P§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§>"P§);
                  while(true)
                  {
                     §§push(§6!e§.§1" §);
                     addr291:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.onUiInteraction);
                        loop4:
                        while(true)
                        {
                           mClip.stage.addEventListener(Event.ENTER_FRAME,this.§=!%§);
                           loop5:
                           while(true)
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!M§);
                              while(true)
                              {
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                                 loop7:
                                 while(true)
                                 {
                                    mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
                                    while(true)
                                    {
                                       mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
                                       addr237:
                                       while(!_loc3_)
                                       {
                                          mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                                          continue loop7;
                                       }
                                       continue loop0;
                                       loop18:
                                       while(_loc4_ || param1)
                                       {
                                          this.§'"E§ = mClip.CompetitionWinners_Text.y;
                                          loop19:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                addr50:
                                                if(_loc4_ || this)
                                                {
                                                   addr57:
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr150:
                                                   addr150:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(this);
                                                            §§push(mClip.CompetitionWinners_Text.y + this.§1"Y§ - mClip.CompetitionWinners_Text.height);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() + this.§'!F§);
                                                            }
                                                            §§pop().§2"&§ = §§pop();
                                                            break loop19;
                                                         }
                                                         break;
                                                      }
                                                      continue loop1;
                                                      §§goto(addr57);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                break;
                                             }
                                             continue loop18;
                                          }
                                          while(_loc4_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§]7§ = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§3"Z§;
                                                §§goto(addr104);
                                             }
                                             §§goto(addr50);
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                addr168:
                                                if(_loc3_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                this.§=4§ = mClip.CompetitionWinners_Text.y + this.§@"5§;
                                                §§goto(addr150);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
                                                   continue loop1;
                                                }
                                                addr208:
                                             }
                                             §§goto(addr123);
                                          }
                                          addr123:
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§push(this.§>"P§);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(§6!e§.§1" §);
                     if(!(_loc4_ || param1))
                     {
                        §§goto(addr291);
                     }
                     §§pop().addEventListener(§§pop(),this.onUiInteraction);
                     §§goto(addr208);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      protected function §%v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^"Q§ = true;
         }
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("CLOSE_POPUP");
            if(_loc6_ || param3)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        addr138:
                        §§push(0);
                        if(_loc5_)
                        {
                           addr148:
                        }
                     }
                     else
                     {
                        addr145:
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr153);
                  }
                  else
                  {
                     §§goto(addr144);
                  }
               }
               §§goto(addr144);
            }
            addr144:
            if("SCROLL_DOWN" === _loc4_)
            {
               §§goto(addr145);
            }
            else
            {
               §§push(2);
            }
            addr153:
            loop3:
            switch(§§pop())
            {
               case 0:
                  this.close();
                  if(_loc6_ || param3)
                  {
                     break;
                  }
                  break;
               case 1:
                  this.§%-§ = 0;
                  loop0:
                  while(true)
                  {
                     mClip.Button_Close.mouseEnabled = false;
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                     while(true)
                     {
                        this.§^"Q§ = true;
                        continue loop0;
                     }
                  }
            }
            return;
         }
         §§goto(addr138);
      }
      
      private function §1"C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§^"Q§)
            {
               if(_loc3_)
               {
                  if(param1.delta >= 0)
                  {
                     §§push(this);
                     §§push(this.§%-§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() - 5);
                     }
                     §§pop().§%-§ = §§pop();
                     loop0:
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!(_loc2_ && param1))
                           {
                              while(true)
                              {
                                 continue loop0;
                              }
                              addr90:
                           }
                        }
                        addr108:
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr25);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§%-§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + 5);
                     }
                     §§pop().§%-§ = §§pop();
                  }
               }
               §§goto(addr108);
            }
            addr25:
            return;
         }
         §§goto(addr90);
      }
      
      private function §=!%§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§="M§)
            {
               while(true)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
                  addr158:
                  while(true)
                  {
                  }
               }
               addr152:
            }
            loop2:
            while(true)
            {
               §§push(this.§^"Q§);
               loop3:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop11:
                        while(true)
                        {
                           §§pop();
                           loop10:
                           while(true)
                           {
                              §§push(this.§%-§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() == 0);
                                 if(_loc3_ || param1)
                                 {
                                    continue loop3;
                                 }
                                 addr112:
                                 if(_loc4_)
                                 {
                                    continue loop11;
                                 }
                                 loop4:
                                 while(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue loop10;
                                       }
                                       mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§%-§;
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§%-§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * 0.8);
                                          }
                                          §§pop().§%-§ = §§pop();
                                          while(_loc3_ || this)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop6;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                this.§5!9§();
                                                do
                                                {
                                                   this.§#!R§();
                                                }
                                                while(!(_loc3_ || param1));
                                                
                                                if(!(_loc3_ || this))
                                                {
                                                   break;
                                                }
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc4_ && this)
                                                {
                                                   continue loop2;
                                                }
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    var _loc2_:* = §§pop();
                                    if(_loc3_ || _loc3_)
                                    {
                                       mClip.CompetitionWinners_Text.y -= _loc2_ / 5;
                                    }
                                    return;
                                 }
                                 §§push(mClip.CompetitionWinners_Text.y - (this.§=4§ + this.§'"E§));
                                 if(_loc3_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr186);
                           }
                           continue loop3;
                        }
                        addr143:
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr143);
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §%!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§^"Q§)
            {
               if(!_loc2_)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§<!`§;
                  do
                  {
                     this.§5!9§();
                     do
                     {
                        this.§#!R§();
                     }
                     while(_loc2_);
                     
                  }
                  while(_loc2_);
                  
                  addr78:
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §5!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.y >= this.§]7§)
            {
               if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§2"T§)
               {
                  if(_loc1_ || _loc1_)
                  {
                     mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§2"T§;
                  }
                  loop0:
                  while(_loc1_ || this)
                  {
                     this.§%-§ = 0;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(_loc2_ && _loc1_)
                     {
                        loop1:
                        while(true)
                        {
                           this.§%-§ = 0;
                           break loop0;
                           addr107:
                           while(true)
                           {
                              mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§]7§;
                              continue loop1;
                           }
                        }
                        addr99:
                     }
                     else
                     {
                        addr41:
                     }
                     §§goto(addr19);
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr99);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr107);
         }
         §§goto(addr41);
      }
      
      private function §#!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§8o§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§2"T§;
            while(true)
            {
               §§push(this.§8o§);
               loop1:
               while(§§pop() >= 0)
               {
                  §§push(this.§8o§);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(§§pop() > 0.999)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        this.§8o§ = 1;
                        while(true)
                        {
                           addr49:
                           §§pop().§'"E§ = §§pop();
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§2"&§);
                     if(_loc1_)
                     {
                        §§push(this.§=4§);
                        if(_loc1_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.§8o§);
                           }
                           §§goto(addr49);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr49);
                     §§goto(addr106);
                  }
                  §§goto(addr81);
               }
               addr115:
               while(_loc1_ || _loc2_)
               {
                  §§goto(addr28);
                  §§goto(addr74);
               }
            }
         }
         while(true)
         {
            this.§8o§ = 0;
            §§goto(addr115);
         }
      }
      
      private function § [§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%-§ = 0;
         }
         do
         {
            mClip.Button_Close.mouseEnabled = true;
            do
            {
               this.§^"Q§ = false;
            }
            while(!(_loc3_ || this));
            
         }
         while(_loc2_ && param1);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
            while(true)
            {
               mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§=!%§);
               loop1:
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!M§);
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                     loop3:
                     while(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
                        while(true)
                        {
                           mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
                           addr64:
                           while(_loc1_)
                           {
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            addr124:
         }
         while(true)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
            for(; !_loc2_; super.close(),if(!_loc2_)
            {
               return;
            })
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr124);
               }
               §§goto(addr75);
            }
            §§goto(addr64);
         }
      }
   }
}
