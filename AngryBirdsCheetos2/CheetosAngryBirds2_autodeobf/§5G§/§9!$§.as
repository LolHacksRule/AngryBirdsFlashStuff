package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §2!&§.§2p§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §6;§.§%[§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`h§.§@!Z§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!$§ extends §%!$§
   {
      
      public static const §3!?§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!?§ = "CreditsState";
         }
      }
      
      private var §6!L§:§2p§ = null;
      
      private var §<H§:Boolean;
      
      private var §4!i§:Number;
      
      private var §?v§:Number;
      
      private var §+!Q§:Number;
      
      private var §<!3§:Number;
      
      private var §,?§:Number;
      
      protected var §#q§:§#x§ = null;
      
      private var §1!'§:Boolean;
      
      public function §9!$§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         loop0:
         do
         {
            this.§#q§ = new §#x§(0,0,0,1);
            loop1:
            while(true)
            {
               §%!0§ = new §5!§(this);
               do
               {
                  §%!0§.init(§>!;§.§ get§.Views.View_Credits[0]);
                  continue loop1;
               }
               while(!_loc1_);
               
               continue loop0;
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               §§push(§%[§.§`1§);
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        addr178:
                        while(true)
                        {
                           §§pop().start();
                           addr179:
                           while(true)
                           {
                           }
                        }
                        addr147:
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        this.§1!'§ = false;
                        while(true)
                        {
                           §%!0§.container.mClip.addChild(this.§#q§);
                           while(true)
                           {
                              this.§]_§();
                              while(!(_loc2_ && _loc1_))
                              {
                                 §§push(§@!Z§.§;!,§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr109:
                                    while(true)
                                    {
                                       §§pop().§;!i§(§§pop());
                                       continue loop9;
                                    }
                                 }
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    this.§6!L§.init();
                                    §§goto(addr60);
                                 }
                              }
                              addr140:
                              while(_loc3_ || this)
                              {
                                 §§goto(addr147);
                              }
                              §§goto(addr179);
                           }
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr52);
                           }
                           var _loc1_:§<6§ = §%!0§.container.getItemByName("Container_Credits") as §<6§;
                           if(_loc3_ || _loc1_)
                           {
                              §%!0§.addEventListener(MouseEvent.MOUSE_MOVE,this.§5!A§);
                              §%!0§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!$§);
                              §%!0§.addEventListener(MouseEvent.MOUSE_UP,this.§0!X§);
                              §%!0§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                              §%!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!=§);
                              addr324:
                              addr331:
                              addr306:
                              if(_loc3_)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    this.§<!3§ = 0;
                                    addr270:
                                    if(_loc3_)
                                    {
                                       this.§4!i§ = 0;
                                       this.§?v§ = 0;
                                       this.§,?§ = _loc1_.height + §@!Z§.§"r§ * §@!Z§.§5I§;
                                       addr248:
                                       addr265:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(this);
                                          §§push(this.§,?§);
                                          if(_loc3_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§<!3§ = §§pop();
                                          addr234:
                                          if(!_loc2_)
                                          {
                                             §%!0§.setText(§5!9§.§-!O§.getVersionInfo(),"TextField_Version_Number");
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr324);
                                                         }
                                                         return;
                                                         addr225:
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr265);
                                       }
                                       addr260:
                                       §§goto(addr260);
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr306);
                              }
                              addr298:
                              §§goto(addr298);
                           }
                           §§goto(addr225);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§#q§.mouseEnabled = true;
                     §§goto(addr140);
                     §§goto(addr179);
                  }
               }
               §§goto(addr178);
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr134);
      }
      
      private function §5!A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§<H§)
            {
               if(!_loc3_)
               {
                  §§push(this.§+!Q§);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop() - §%!0§.mouseY);
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        while(§§pop() <= §§pop())
                        {
                           §§push(this.§+!Q§);
                           if(_loc2_ || param1)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop() - §%!0§.mouseY);
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop1;
                           }
                           §§push(0);
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§+!Q§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop() - §%!0§.mouseY);
                                    }
                                    §§pop().§4!i§ = §§pop();
                                    this.§+!Q§ = §%!0§.mouseY;
                                    addr99:
                                    if(!_loc2_)
                                    {
                                       §§goto(addr99);
                                    }
                                    if(!_loc3_)
                                    {
                                       §§goto(addr24);
                                    }
                                    else
                                    {
                                       addr105:
                                       addr107:
                                    }
                                    addr105:
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    addr24:
                                    return;
                                    §§goto(addr24);
                                 }
                                 this.§+!Q§ = §%!0§.mouseY;
                                 §§goto(addr105);
                                 addr139:
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr24);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§+!Q§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - §%!0§.mouseY);
                  }
                  §§pop().§4!i§ = §§pop();
                  §§goto(addr139);
                  §§goto(addr105);
               }
               §§goto(addr107);
            }
            §§goto(addr24);
         }
         §§goto(addr105);
      }
      
      private function §5!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<H§ = true;
            do
            {
               this.§+!Q§ = §%!0§.mouseY;
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      private function §0!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<H§ = false;
         }
      }
      
      private function §3!=§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<H§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.delta < 0)
            {
               while(true)
               {
                  this.§?v§ = 16;
                  addr75:
                  while(true)
                  {
                  }
               }
               addr72:
            }
            loop2:
            for(; param1.delta > 0; §§goto(addr75))
            {
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.§?v§ = -16;
                  }
                  addr50:
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop2;
                  }
                  if(_loc2_)
                  {
                     break loop2;
                  }
                  §§goto(addr72);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || param1)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §@!Z§.§^&§.update(param1);
                     loop1:
                     while(true)
                     {
                        (§%!0§.getItemByName("Container_Credits") as §<6§).y = Math.floor(-this.§<!3§);
                        loop2:
                        while(true)
                        {
                           this.§'6§(param1);
                           do
                           {
                              (§%!0§.getItemByName("Container_Credits") as §<6§).setVisibility(true);
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(mNextState.length <= 0)
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              return §%!$§.STATE_STATUS_RUNNING;
                           }
                           while(!(_loc4_ || param1));
                           
                           if(_loc4_ || param1)
                           {
                              return §%!$§.STATE_STATUS_COMPLETED;
                           }
                           addr150:
                           §§push(_loc2_);
                        }
                     }
                  }
               }
               §§goto(addr150);
            }
            return §§pop();
         }
         §§goto(addr150);
      }
      
      private function §'6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§<!3§);
            if(_loc2_)
            {
               §§push(§§pop() + this.§4!i§);
            }
            §§pop().§<!3§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§<!3§);
               if(_loc2_)
               {
                  §§push(§§pop() + this.§?v§);
               }
               §§pop().§<!3§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§<H§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!(_loc3_ && this))
                     {
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§pop();
                              addr225:
                              while(_loc2_)
                              {
                                 §§push(Math.abs(this.§?v§) < param1 / 15);
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop9;
                              }
                              continue loop1;
                           }
                           addr224:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§<!3§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§<!3§ = §§pop();
                                 addr210:
                                 while(true)
                                 {
                                 }
                              }
                              addr193:
                           }
                           while(true)
                           {
                              §§push(this.§<!3§);
                              loop6:
                              while(true)
                              {
                                 §§push(-§5!9§.§"r§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §@!Z§.§5I§);
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(this.§<!3§);
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(this.§,?§);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          addr145:
                                          §§push(this);
                                          §§push(-§5!9§.§"r§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop() * §@!Z§.§5I§);
                                          }
                                          §§pop().§<!3§ = §§pop();
                                          addr160:
                                          if(_loc2_)
                                          {
                                             addr52:
                                             §§push(this.§<H§);
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc2_ || param1)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§4!i§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() * 0.9);
                                                            }
                                                            §§pop().§4!i§ = §§pop();
                                                         }
                                                         break;
                                                      }
                                                      addr87:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc3_ && this)
                                                         {
                                                            §§goto(addr52);
                                                            addr179:
                                                         }
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   addr19:
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr52);
                                    }
                                    if(_loc2_)
                                    {
                                       this.§<!3§ = this.§,?§;
                                       §§goto(addr179);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr224);
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§#q§.parent == §%!0§.container.mClip)
            {
               while(true)
               {
                  §%!0§.container.mClip.removeChild(this.§#q§);
                  addr154:
                  while(true)
                  {
                  }
               }
               addr148:
            }
            loop2:
            while(true)
            {
               §@!Z§.§;!,§.§;!i§(false);
               loop3:
               while(true)
               {
                  §%!0§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§5!A§);
                  loop4:
                  while(true)
                  {
                     §%!0§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!$§);
                     do
                     {
                        if(_loc2_)
                        {
                           break loop4;
                        }
                        §%!0§.removeEventListener(MouseEvent.MOUSE_UP,this.§0!X§);
                        loop6:
                        while(!_loc2_)
                        {
                           §%!0§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                           while(!_loc2_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §%!0§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!=§);
                                 loop8:
                                 while(_loc1_ || _loc1_)
                                 {
                                    (§%!0§.getItemByName("Container_Credits") as §<6§).setVisibility(false);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr87);
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     while(!(_loc1_ || _loc2_));
                     
                  }
                  §§goto(addr148);
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr58:
               §§push(0);
               if(_loc6_ || param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.§1!'§ = false;
                  if(!_loc5_)
                  {
                     this.§@u§();
                     if(_loc6_ || this)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr58);
      }
      
      protected function §@u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§#q§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr151:
                        while(true)
                        {
                           §§push(this.§1!'§);
                           if(!_loc1_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§#q§);
                        loop6:
                        while(true)
                        {
                           §§pop().mouseEnabled = true;
                           while(true)
                           {
                              this.§1!'§ = true;
                              loop8:
                              while(!(_loc1_ && _loc1_))
                              {
                                 §§push(this.§#q§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr92:
                                    while(true)
                                    {
                                       §§pop().§"!c§(§§pop());
                                       continue loop5;
                                    }
                                    addr54:
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          continue loop0;
                                       }
                                       continue loop9;
                                       addr87:
                                       §§push(this.§#q§);
                                       if(_loc2_)
                                       {
                                          addr34:
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§pop().addEventListener(ColorFadeLayerEvent.§79§,this.§"y§);
                                             if(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr87);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                }
                                                continue loop6;
                                                addr83:
                                             }
                                             if(!_loc1_)
                                             {
                                                addr50:
                                                break loop4;
                                             }
                                             continue loop8;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      protected function §"y§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#q§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               while(true)
               {
                  §§push(this.§#q§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(ColorFadeLayerEvent.§79§,this.§"y§);
                  do
                  {
                     mNextState = §39§.§3!?§;
                  }
                  while(!_loc3_);
                  
                  if(!_loc2_)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function §]_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§#q§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr140:
                        loop3:
                        while(true)
                        {
                           §§push(this.§1!'§);
                           if(_loc1_ || this)
                           {
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop7;
                              }
                              addr106:
                              §§push(!§§pop());
                              while(true)
                              {
                                 break loop3;
                                 §§goto(addr106);
                              }
                           }
                           break;
                        }
                        loop2:
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 this.§1!'§ = true;
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§#q§);
                              continue loop0;
                              addr47:
                              if(_loc1_ || _loc2_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        return;
                     }
                     addr139:
                  }
                  §§goto(addr107);
               }
               §§goto(addr139);
            }
         }
         loop8:
         while(true)
         {
            §§push(this.§#q§);
            loop9:
            while(true)
            {
               §§push(0);
               if(_loc2_)
               {
                  break;
                  addr73:
               }
               §§pop().§'H§(§§pop(),0.25);
               while(_loc1_)
               {
                  continue loop9;
               }
               continue loop8;
            }
            §§goto(addr87);
         }
      }
      
      private function §;!"§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§#q§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               while(true)
               {
                  §§push(this.§#q§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(ColorFadeLayerEvent.§79§,this.§;!"§);
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr66:
                  }
               }
            }
         }
         §§goto(addr66);
      }
   }
}
