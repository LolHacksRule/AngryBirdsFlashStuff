package §'!O§
{
   import §"^§.§+!'§;
   import §'!N§.§2O§;
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §0L§ extends §=j§
   {
      
      public static const §@o§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@o§ = "CreditsState";
         }
      }
      
      private var §%;§:§0!%§ = null;
      
      private var § r§:Boolean;
      
      private var §#C§:Number;
      
      private var §3N§:Number;
      
      private var §!!=§:Number;
      
      private var §[Z§:Number;
      
      private var §`!@§:Number;
      
      private var §#%§:Boolean;
      
      public function §0L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
         }
         while(true)
         {
            §4!N§ = new §-k§(0,0,0,1);
            while(_loc1_ || this)
            {
               §]!9§ = new §]!Q§(this);
               do
               {
                  §]!9§.init(§;A§.§=I§.Views.View_Credits[0]);
                  do
                  {
                     this.§%;§ = new §0!%§(§"!S§.§-!7§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
                  }
                  while(_loc2_);
                  
               }
               while(!_loc1_);
               
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§#%§ = false;
               loop1:
               while(true)
               {
                  this.§`!@§ = (§]!9§.getItemByName("Container_Credits") as §2O§).height + §"!S§.§!!d§ * §"!S§.§[=§;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§`!@§);
                     if(_loc2_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§[Z§ = §§pop();
                     while(true)
                     {
                        sHighscoreSidebar.enableCreditsButton(false);
                        while(_loc2_ || this)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                           loop5:
                           for(; _loc2_ || _loc2_; if(_loc3_ && _loc3_)
                           {
                              continue;
                           },§+!'§.§9!;§.isPaused = false,if(_loc2_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              while(false)
                              {
                                 §§goto(addr35);
                              }
                              var _loc1_:§2O§ = §]!9§.container.getItemByName("Container_Credits") as §2O§;
                              if(!_loc3_)
                              {
                                 §]!9§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ use§);
                                 loop10:
                                 while(true)
                                 {
                                    §]!9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4%§);
                                    while(true)
                                    {
                                       §]!9§.addEventListener(MouseEvent.MOUSE_UP,this.§;!N§);
                                       addr215:
                                       while(true)
                                       {
                                          §]!9§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                          continue loop10;
                                       }
                                       addr164:
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §]!9§.setText(§4,§.§?!`§,"TextField_Version_Number");
                                       addr171:
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc3_)
                                                {
                                                   this.§3N§ = 0;
                                                   while(_loc2_)
                                                   {
                                                      §§goto(addr164);
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr215);
                                                   addr162:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§#C§ = 0;
                                                      continue loop15;
                                                   }
                                                   addr192:
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          if(!_loc3_)
                                          {
                                             addr157:
                                          }
                                          continue loop10;
                                          return;
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                              }
                              §§goto(addr192);
                           },§§goto(addr38))
                           {
                              this.§%;§.init();
                              loop6:
                              while(true)
                              {
                                 addr35:
                                 while(true)
                                 {
                                    §,L§.§`!]§();
                                    addr38:
                                    while(_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
            while(true)
            {
               if(§,L§.§[!;§ != §#!_§.§@o§)
               {
                  sHighscoreSidebar.enableLogOutButton(true);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     §§goto(addr25);
                  }
               }
            }
            addr25:
            return;
         }
         while(true)
         {
            sHighscoreSidebar.enableLogOutButton(false);
            §§goto(addr59);
         }
      }
      
      private function § use§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§ r§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§!!=§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() - §]!9§.mouseY);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        while(§§pop() <= §§pop())
                        {
                           §§push(this.§!!=§);
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() - §]!9§.mouseY);
                           }
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           §§push(0);
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(§§pop() < §§pop())
                           {
                              addr96:
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§!!=§);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop() - §]!9§.mouseY);
                                 }
                                 §§pop().§#C§ = §§pop();
                                 this.§!!=§ = §]!9§.mouseY;
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && _loc3_)
                                    {
                                       §§goto(addr96);
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          addr25:
                                          return;
                                          addr57:
                                       }
                                       addr165:
                                       this.§!!=§ = §]!9§.mouseY;
                                    }
                                    continue loop0;
                                 }
                                 addr117:
                                 §§goto(addr117);
                              }
                              break;
                           }
                           §§goto(addr25);
                        }
                        §§push(this);
                        §§push(this.§!!=§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() - §]!9§.mouseY);
                        }
                        §§pop().§#C§ = §§pop();
                        §§goto(addr165);
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr57);
      }
      
      private function §4%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ r§ = true;
            do
            {
               this.§!!=§ = §]!9§.mouseY;
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §;!N§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ r§ = false;
         }
      }
      
      private function §21§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ r§ = false;
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
                  this.§3N§ = 16;
                  addr80:
                  while(true)
                  {
                  }
                  addr52:
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  this.§3N§ = -16;
                  addr24:
                  return;
                  addr72:
               }
            }
            while(param1.delta > 0)
            {
               if(!_loc3_)
               {
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§goto(addr52);
               }
               §§goto(addr72);
            }
            §§goto(addr24);
         }
         §§goto(addr80);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(§-Z§.§ !6§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(§"!b§.§5;§());
                           if(!_loc4_)
                           {
                           }
                           addr43:
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 return §=p§.STATE_STATUS_RUNNING;
                              }
                              §§goto(addr54);
                           }
                        }
                        §§goto(addr54);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
            }
            §§goto(addr43);
         }
         addr54:
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc4_ || param1)
            {
               if(§§pop() != §=p§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr186);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr187:
                  }
               }
               loop1:
               while(true)
               {
                  (§]!9§.getItemByName("Container_Credits") as §2O§).y = Math.floor(-this.§[Z§);
                  while(true)
                  {
                     if(§"!S§.isPaused)
                     {
                        §"!S§.§^e§();
                        loop3:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       while(mNextState.length > 0)
                                       {
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             return §=p§.STATE_STATUS_COMPLETED;
                                          }
                                          addr144:
                                          while(true)
                                          {
                                             §"!S§.§]O§.update(param1);
                                          }
                                       }
                                       addr69:
                                       return §=p§.STATE_STATUS_RUNNING;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§?4§(param1);
                                 }
                              }
                              while(true)
                              {
                                 this.§0e§();
                              }
                           }
                           while(!_loc3_)
                           {
                              §§goto(addr134);
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr144);
                  }
               }
            }
            §§goto(addr186);
         }
         addr186:
         return _loc2_;
      }
      
      private function §0e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§#%§)
            {
               if(!_loc2_)
               {
                  addr109:
                  §§push(§"!S§.§-!7§);
                  while(true)
                  {
                     §§push(true);
                     addr112:
                     while(true)
                     {
                        §§pop().§%2§(§§pop());
                     }
                  }
                  addr111:
               }
               while(true)
               {
                  §§push(§"!S§.§-!7§);
                  if(!_loc2_)
                  {
                     §§push(true);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().§3g§(§§pop());
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§#%§ = true;
                           while(true)
                           {
                              §%!f§();
                              while(true)
                              {
                                 §§goto(addr28);
                              }
                           }
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr111);
                  }
                  §§goto(addr112);
               }
            }
            addr28:
            while(true)
            {
               (§]!9§.getItemByName("Container_Credits") as §2O§).setVisibility(true);
               if(_loc1_ || _loc2_)
               {
                  continue loop2;
               }
               continue loop3;
            }
            addr62:
            return;
         }
         §§goto(addr109);
      }
      
      private function §?4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§[Z§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + this.§#C§);
            }
            §§pop().§[Z§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§[Z§);
               if(_loc2_)
               {
                  §§push(§§pop() + this.§3N§);
               }
               §§pop().§[Z§ = §§pop();
               while(true)
               {
                  §§push(this.§ r§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(Math.abs(this.§3N§) < param1 / 15);
                                 loop6:
                                 while(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       §§push(this.§ r§);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop3;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                addr197:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§[Z§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop() / 15);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§[Z§ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      addr162:
                                                      while(true)
                                                      {
                                                         §§push(this.§[Z§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(-§,L§.§!!d§);
                                                            addr168:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §"!S§.§[=§);
                                                               addr171:
                                                               while(§§pop() >= §§pop())
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr172:
                                                               while(true)
                                                               {
                                                                  this.§[Z§ = this.§`!@§;
                                                                  continue loop16;
                                                               }
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr135);
                                          }
                                          §§push(this);
                                          §§push(this.§#C§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(§§pop() * 0.9);
                                          }
                                          §§pop().§#C§ = §§pop();
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§3N§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop() * 0.9);
                                             }
                                             §§pop().§3N§ = §§pop();
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr58);
                                                }
                                                §§goto(addr152);
                                             }
                                             else
                                             {
                                                §§goto(addr86);
                                             }
                                          }
                                          addr86:
                                          addr105:
                                       }
                                       §§goto(addr24);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr197);
                           }
                           §§goto(addr162);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §]!9§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ use§);
            loop0:
            while(true)
            {
               §]!9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4%§);
               while(true)
               {
                  §]!9§.removeEventListener(MouseEvent.MOUSE_UP,this.§;!N§);
                  continue loop0;
                  loop6:
                  while(!(_loc2_ && _loc2_))
                  {
                     super.deActivate();
                     if(_loc1_ || this)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        addr85:
                        while(!_loc2_)
                        {
                           (§]!9§.getItemByName("Container_Credits") as §2O§).setVisibility(false);
                           continue loop6;
                        }
                        while(_loc1_)
                        {
                           §]!9§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§21§);
                           §§goto(addr75);
                        }
                        addr75:
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §]!9§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            §§goto(addr85);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:URLRequest = null;
         if(!(_loc6_ && param2))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc5_:* = param2;
         if(!_loc6_)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc5_)
            {
               if("CREDITS_GAE_BUTTON" === _loc5_)
               {
                  §§goto(addr92);
               }
               else
               {
                  §§push(2);
               }
               addr110:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §,L§.§[!;§;
                     if(_loc7_ || param2)
                     {
                        break;
                     }
                     break;
                  case 1:
                     _loc4_ = new URLRequest("https://developers.google.com/appengine/");
                     if(!_loc6_)
                     {
                        navigateToURL(_loc4_,"_blank");
                     }
               }
               return;
            }
            if(!(_loc6_ && param3))
            {
               §§push(0);
               if(_loc6_)
               {
                  addr105:
               }
            }
            else
            {
               addr92:
               §§push(1);
               if(!_loc6_)
               {
                  §§goto(addr105);
               }
            }
            §§goto(addr110);
         }
         §§goto(addr92);
      }
   }
}
