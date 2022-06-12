package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §3![§.§1F§;
   import §4!e§.§08§;
   import §6o§.§+!k§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9<§ extends §1-§
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9<§))
         {
            STATE_NAME = "CreditsState";
         }
      }
      
      protected var §[$§:§1F§ = null;
      
      private var §5f§:Boolean;
      
      private var §,!R§:Number;
      
      private var §6!w§:Number;
      
      private var §>8§:Number;
      
      private var §8O§:Number;
      
      private var §="1§:Number;
      
      public function §9<§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            do
            {
               §6w§ = new §7!A§(this);
               do
               {
                  §6w§.init(§ "A§.§4[§.Views.View_Credits[0]);
                  do
                  {
                     this.§[$§ = new §1F§(§#6§.§6!z§);
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(_loc2_ && _loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§="1§ = (§6w§.getItemByName("Container_Credits") as §08§).height + §#6§.§+P§ * §#6§.§"e§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§="1§);
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§8O§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §#6§.§6!z§.§3H§(true);
                     loop3:
                     while(true)
                     {
                        §#6§.resume();
                        loop4:
                        for(; _loc3_; if(_loc3_ || _loc1_)
                        {
                           continue loop3;
                        })
                        {
                           §#6§.setController(this.§[$§);
                           loop5:
                           while(true)
                           {
                              this.§[$§.init();
                              loop6:
                              while(true)
                              {
                                 this.playThemeMusic();
                                 while(true)
                                 {
                                    §6w§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§3[§);
                                    while(_loc3_)
                                    {
                                       §6w§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§;8§);
                                       while(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             §6w§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§=!M§);
                                             while(_loc3_ || _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop6;
                                    loop15:
                                    while(_loc3_ || this)
                                    {
                                       this.§6!w§ = 0;
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          addr32:
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             addr39:
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   this.§,!R§ = 0;
                                                   continue loop15;
                                                   §§goto(addr39);
                                                }
                                                addr206:
                                                §§push(§+!k§.§ n§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                addr41:
                                             }
                                             else
                                             {
                                                §§goto(addr206);
                                             }
                                             var _loc1_:* = §§pop();
                                             §§push(_loc1_);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                                             }
                                             var _loc2_:* = §§pop();
                                             if(_loc3_ || this)
                                             {
                                                §§push(_loc1_);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                                }
                                                _loc1_ = §§pop();
                                             }
                                             do
                                             {
                                                this.setVersionTexts(_loc1_,_loc2_);
                                             }
                                             while(_loc4_ && _loc1_);
                                             
                                             return;
                                          }
                                          addr79:
                                          while(true)
                                          {
                                             §6w§.stage.addEventListener(Event.MOUSE_LEAVE,this.§<"'§);
                                             §§goto(addr32);
                                          }
                                       }
                                       while(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr88);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        §6w§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        §§goto(addr79);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr41);
         }
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §6w§.setText(param1,"TextField_Version_Number");
         }
         do
         {
            §6w§.setText(param2,"TextField_Version_Number_Server");
         }
         while(!_loc4_);
         
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      private function §=t§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§6w§.stage.mouseX < §6w§.stage.width - 180)
            {
               if(_loc3_ || _loc3_)
               {
                  addr60:
                  §§push(true);
                  if(!(_loc2_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr69:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr60);
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5f§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr171:
                     if(this.§=t§(param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(this.§>8§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §6w§.stage.mouseY);
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§>8§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() - §6w§.stage.mouseY);
                                    }
                                    if(!(_loc2_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop1;
                                    }
                                    §§push(0);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§>8§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(§§pop() - §6w§.stage.mouseY);
                                          }
                                          §§pop().§,!R§ = §§pop();
                                       }
                                       addr104:
                                       if(!_loc3_)
                                       {
                                          this.§>8§ = §6w§.stage.mouseY;
                                          if(!(_loc2_ || this))
                                          {
                                             §§goto(addr104);
                                          }
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§goto(addr19);
                                             }
                                             else
                                             {
                                                addr172:
                                             }
                                             this.§5f§ = false;
                                             return;
                                             addr175:
                                          }
                                          §§goto(addr175);
                                       }
                                       addr113:
                                       if(_loc3_ && _loc3_)
                                       {
                                          this.§>8§ = §6w§.stage.mouseY;
                                          §§goto(addr113);
                                          addr157:
                                       }
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr19);
                                 }
                                 §§push(this);
                                 §§push(this.§>8§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - §6w§.stage.mouseY);
                                 }
                                 §§pop().§,!R§ = §§pop();
                                 §§goto(addr157);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr172);
               }
               addr19:
               return;
            }
         }
         §§goto(addr171);
      }
      
      private function §;8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§=t§(param1));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr63:
                     if(!§#6§.isPaused)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr71:
                           this.§5f§ = true;
                        }
                     }
                     §§goto(addr20);
                  }
                  do
                  {
                     this.§>8§ = §6w§.stage.mouseY;
                  }
                  while(!_loc3_);
                  
               }
               addr20:
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      private function §=!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5f§ = false;
         }
      }
      
      private function §<"'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5f§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§=t§(param1))
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              addr65:
                              this.§6!w§ = -16;
                           }
                           else
                           {
                              addr86:
                              this.§6!w§ = 16;
                              addr25:
                              return;
                              addr89:
                           }
                           §§goto(addr89);
                        }
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr25);
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr65);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(!§#6§.isPaused)
                     {
                        while(true)
                        {
                           §#6§.§'" §.update(param1);
                           addr158:
                           while(true)
                           {
                              (§6w§.getItemByName("Container_Credits") as §08§).setVisibility(true);
                              loop3:
                              while(true)
                              {
                                 this.readyToShowCredits();
                                 while(true)
                                 {
                                    (§6w§.getItemByName("Container_Credits") as §08§).y = Math.floor(-this.§8O§);
                                    addr122:
                                    while(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       this.§2!s§(param1);
                                       while(true)
                                       {
                                          addr54:
                                          if(_loc3_ || this)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr154:
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_ || param1)
                        {
                           §§goto(addr54);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc3_ || param1)
                                 {
                                    addr104:
                                    break;
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr122);
                        }
                     }
                     return §1-§.STATE_STATUS_RUNNING;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  if(_loc3_ || _loc2_)
                  {
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr104);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §2!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§8O§);
            if(!_loc2_)
            {
               §§push(§§pop() + this.§,!R§);
            }
            §§pop().§8O§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§8O§);
               if(_loc3_)
               {
                  §§push(§§pop() + this.§6!w§);
               }
               §§pop().§8O§ = §§pop();
               while(true)
               {
                  §§push(this.§5f§);
                  loop2:
                  while(true)
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
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§8O§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(param1);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§8O§ = §§pop();
                                    addr245:
                                    loop9:
                                    while(true)
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§5f§);
                                                if(_loc2_ && this)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                addr252:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr253:
                                                   while(true)
                                                   {
                                                      §§push(Math.abs(this.§6!w§) < param1 / 15);
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             if(!§§pop())
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§,!R§);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§,!R§ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            addr95:
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§6!w§);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * 0.9);
                                                         }
                                                         §§pop().§6!w§ = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop15;
                                                         }
                                                         §§goto(addr88);
                                                         §§goto(addr95);
                                                      }
                                                      addr88:
                                                      addr102:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            §§push(this);
                                                            §§push(-AngryBirdsFP11.§^!7§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop() * §#6§.§"e§);
                                                            }
                                                            §§pop().§8O§ = §§pop();
                                                            continue loop8;
                                                         }
                                                         addr174:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  this.§8O§ = this.§="1§;
                                                                  continue loop20;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                      }
                                                      addr137:
                                                   }
                                                }
                                             }
                                             return;
                                             addr53:
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§8O§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(-AngryBirdsFP11.§^!7§);
                                    addr170:
                                    while(true)
                                    {
                                       §§push(§§pop() * §#6§.§"e§);
                                       addr173:
                                       while(§§pop() >= §§pop())
                                       {
                                          continue loop11;
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr245);
                              }
                           }
                           addr211:
                        }
                        §§goto(addr252);
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6w§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§3[§);
            loop0:
            while(true)
            {
               §6w§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;8§);
               addr114:
               while(true)
               {
                  §6w§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§=!M§);
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param1)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(_loc6_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr95:
                        §§push(1);
                        if(_loc5_ && param3)
                        {
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     addr93:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr95);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr95);
               }
               else
               {
                  §§push(2);
               }
               addr108:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §#;§.STATE_NAME;
                     if(!(_loc5_ && param3))
                     {
                        break;
                     }
                     break;
                  case 1:
                     AngryBirdsFP11.§@<§.§'!+§();
                     if(!(_loc5_ && param2))
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr95);
      }
   }
}
