package §<"F§
{
   import §1!t§.§""B§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §6!H§.§6!e§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0"W§ extends Popup
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
      
      public function §0"W§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_RaffleTermsAndConditionsPopup[0],param1);
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
                     addr311:
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
                              loop6:
                              while(true)
                              {
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                                 loop7:
                                 for(; _loc4_; while(!(_loc3_ && param2))
                                 {
                                    this.§1"Y§ = mClip.TermsScrollBar.height;
                                    §§goto(addr183);
                                 })
                                 {
                                    mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
                                    loop8:
                                    while(true)
                                    {
                                       mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
                                       while(true)
                                       {
                                          mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                                          continue loop6;
                                          addr185:
                                          if(_loc4_ || param2)
                                          {
                                             this.§=4§ = mClip.TermsAndConditions_Text.y + this.§@"5§;
                                             loop14:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(this);
                                                §§push(mClip.TermsAndConditions_Text.y + this.§1"Y§ - mClip.TermsAndConditions_Text.height);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() + this.§'!F§);
                                                }
                                                §§pop().§2"&§ = §§pop();
                                                while(true)
                                                {
                                                   this.§]7§ = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§3"Z§;
                                                   addr116:
                                                   addr230:
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   while(true)
                                                   {
                                                      mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
                                                      continue loop7;
                                                      §§goto(addr116);
                                                   }
                                                   addr98:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      this.§'"E§ = mClip.TermsAndConditions_Text.y;
                                                      while(_loc4_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop7;
                                                         this.§#!R§();
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         addr34:
                                                         if(_loc4_ || this)
                                                         {
                                                            addr41:
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               while(_loc4_)
                                                               {
                                                                  §§goto(addr185);
                                                                  §§goto(addr41);
                                                               }
                                                               continue loop6;
                                                               addr183:
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr98);
                                                               }
                                                               break;
                                                               §§goto(addr34);
                                                            }
                                                            §§goto(addr116);
                                                            addr96:
                                                         }
                                                         §§goto(addr50);
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                return;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§push(this.§>"P§);
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§push(§6!e§.§1" §);
                     if(!(_loc3_ && param2))
                     {
                        §§pop().addEventListener(§§pop(),this.onUiInteraction);
                        §§goto(addr230);
                     }
                     §§goto(addr311);
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      protected function §%v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            §§push("CLOSE_POPUP");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(0);
                        if(_loc5_ || param3)
                        {
                        }
                     }
                     else
                     {
                        addr154:
                        §§push(1);
                        if(_loc6_ && this)
                        {
                        }
                     }
                     §§goto(addr167);
                  }
                  else
                  {
                     addr152:
                     §§push("SCROLL_DOWN");
                     §§push(_loc4_);
                  }
                  §§goto(addr154);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr154);
               }
               else
               {
                  §§push(2);
               }
               addr167:
               loop3:
               switch(§§pop())
               {
                  case 0:
                     this.close();
                     break;
                     addr99:
                  case 1:
                     this.§%-§ = 0;
                     while(true)
                     {
                        mClip.Button_Close.mouseEnabled = false;
                        loop1:
                        while(true)
                        {
                           addr60:
                           while(true)
                           {
                              this.§^"Q§ = true;
                              if(_loc6_ && param2)
                              {
                                 break loop3;
                              }
                              this.§<!`§ = mClip.TermsScrollBar.TermsScrollBar_Button.y - (mClip.TermsScrollBar as MovieClip).mouseY;
                              if(_loc6_ && this)
                              {
                                 break loop3;
                              }
                              continue loop1;
                           }
                           break loop3;
                        }
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(!(_loc6_ && param3))
                        {
                           if(false)
                           {
                              §§goto(addr60);
                           }
                           break loop3;
                        }
                        §§goto(addr99);
                     }
               }
               return;
            }
            §§goto(addr152);
         }
         §§goto(addr154);
      }
      
      private function §1"C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§^"Q§)
            {
               if(!_loc2_)
               {
                  if(param1.delta < 0)
                  {
                     if(!_loc2_)
                     {
                        addr90:
                        §§push(this);
                        §§push(this.§%-§);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + 5);
                        }
                        §§pop().§%-§ = §§pop();
                     }
                     while(true)
                     {
                        §§goto(addr24);
                     }
                     addr103:
                  }
                  else
                  {
                     §§push(this);
                     §§push(this.§%-§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop() - 5);
                     }
                     §§pop().§%-§ = §§pop();
                  }
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        §§goto(addr78);
                     }
                     else
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr20);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr20);
         }
         addr20:
         while(true)
         {
            this.§#!R§();
            if(_loc3_ || param1)
            {
               break;
            }
            continue loop0;
            addr78:
         }
      }
      
      private function §=!%§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§="M§)
            {
               while(true)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
                  addr148:
                  while(true)
                  {
                  }
                  addr31:
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop9:
                     while(true)
                     {
                        this.§5!9§();
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              this.§#!R§();
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 break loop9;
                              }
                              §§goto(addr31);
                           }
                           else
                           {
                              §§goto(addr148);
                           }
                           if(!_loc4_)
                           {
                              mClip.TermsAndConditions_Text.y -= _loc2_ / 5;
                           }
                           return;
                        }
                        loop6:
                        while(true)
                        {
                           §§push(this.§%-§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() == 0);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc4_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       continue loop6;
                                    }
                                 }
                                 addr131:
                              }
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§%-§;
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§%-§);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * 0.8);
                                    }
                                    §§pop().§%-§ = §§pop();
                                    break loop9;
                                 }
                              }
                              §§goto(addr149);
                           }
                           break;
                        }
                        §§goto(addr175);
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr40);
                        }
                        §§goto(addr119);
                     }
                     addr40:
                  }
                  §§goto(addr149);
               }
            }
            while(true)
            {
               §§push(this.§^"Q§);
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr131);
                  §§push(!§§pop());
               }
               §§goto(addr133);
               §§goto(addr148);
            }
         }
         §§goto(addr119);
      }
      
      private function §%!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§^"Q§)
            {
               if(_loc2_)
               {
                  mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§<!`§;
               }
               while(true)
               {
                  this.§5!9§();
                  loop1:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§#!R§();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr34);
         }
         §§goto(addr59);
      }
      
      private function §5!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(mClip.TermsScrollBar.TermsScrollBar_Button.y >= this.§]7§)
            {
               if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§2"T§)
               {
                  if(_loc2_)
                  {
                     addr60:
                     mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§2"T§;
                  }
                  loop0:
                  while(_loc2_ || _loc1_)
                  {
                     this.§%-§ = 0;
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        loop1:
                        while(true)
                        {
                           this.§%-§ = 0;
                           break loop0;
                           addr103:
                           while(true)
                           {
                              mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§]7§;
                              continue loop1;
                           }
                        }
                        addr95:
                     }
                     §§goto(addr25);
                  }
                  while(true)
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr95);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr60);
      }
      
      private function §#!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§8o§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§2"T§;
            loop0:
            while(true)
            {
               §§push(this.§8o§);
               loop1:
               while(§§pop() >= 0)
               {
                  §§push(this.§8o§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop() > 0.999)
                     {
                        while(true)
                        {
                           this.§8o§ = 1;
                           addr105:
                           do
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           while(_loc2_);
                           
                           continue loop0;
                        }
                        addr102:
                     }
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§2"&§);
                        if(_loc2_)
                        {
                           §§push(this.§=4§);
                           if(_loc2_)
                           {
                              addr60:
                              §§push(§§pop() - §§pop());
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(this.§8o§);
                              }
                              §§pop().§'"E§ = §§pop();
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr105);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr60);
                     }
                     return;
                  }
               }
               while(true)
               {
                  this.§8o§ = 0;
               }
            }
         }
         §§goto(addr118);
      }
      
      private function § [§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%-§ = 0;
            while(true)
            {
               mClip.Button_Close.mouseEnabled = true;
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.§^"Q§ = false;
            if(!(_loc2_ && param1))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
            loop0:
            while(true)
            {
               mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§=!%§);
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!M§);
                  loop2:
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                     loop3:
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
                        loop4:
                        while(true)
                        {
                           mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
                           loop5:
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
                                 loop6:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       super.close();
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    return;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr77);
      }
   }
}
