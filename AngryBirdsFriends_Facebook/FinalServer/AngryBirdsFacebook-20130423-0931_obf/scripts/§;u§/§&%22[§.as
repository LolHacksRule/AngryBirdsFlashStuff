package §;u§
{
   import §%i§.§0!Y§;
   import §+!c§.§;!=§;
   import §-p§.§&h§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&"[§ extends §+d§
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "CreditsState";
         }
      }
      
      protected var §<!3§:§&h§ = null;
      
      private var § use§:Boolean;
      
      private var §+!X§:Number;
      
      private var §8![§:Number;
      
      private var §]!S§:Number;
      
      private var §2"G§:Number;
      
      private var §`"T§:Number;
      
      public function §&"[§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §2"@§ = new §`_§(this);
            while(true)
            {
               §2"@§.init(§ "<§.§%I§.Views.View_Credits[0]);
               while(_loc2_)
               {
                  continue loop0;
                  this.§<!3§ = new §&h§(§?l§.§'h§);
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.activate();
            while(true)
            {
               this.§ use§ = false;
               loop4:
               for(; !(_loc3_ && _loc2_); if(!(_loc4_ || this))
               {
                  continue;
               },§§goto(addr30))
               {
                  §?l§.resume();
                  while(true)
                  {
                     §?l§.setController(this.§<!3§);
                     loop6:
                     while(!_loc3_)
                     {
                        this.§<!3§.init();
                        loop7:
                        while(true)
                        {
                           this.playThemeMusic();
                           loop8:
                           while(true)
                           {
                              §2"@§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!`§);
                              loop9:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §2"@§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
                                    while(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          §2"@§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§"!+§);
                                          loop11:
                                          while(!_loc3_)
                                          {
                                             §2"@§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   addr87:
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §2"@§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[!&§);
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§`"T§);
                                                if(!_loc3_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§2"G§ = §§pop();
                                                break loop9;
                                                §§goto(addr87);
                                             }
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                       if(_loc4_ || _loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop8;
                              }
                              while(true)
                              {
                                 §?l§.§'h§.§#"[§(true);
                                 continue loop4;
                              }
                           }
                        }
                     }
                     addr205:
                     while(true)
                     {
                        this.§`"T§ = (§2"@§.getItemByName("Container_Credits") as §0!Y§).height + §?l§.§<"P§ * §?l§.§0!S§;
                        §§goto(addr200);
                     }
                     loop15:
                     while(!(_loc3_ && _loc1_))
                     {
                        this.§8![§ = 0;
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr26:
                        if(_loc4_)
                        {
                           if(true)
                           {
                              §§push(§;!=§.§5W§);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                              }
                              var _loc1_:* = §§pop();
                              §§push(_loc1_);
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                 }
                                 _loc1_ = §§pop();
                              }
                              this.setVersionTexts(_loc1_,_loc2_);
                              addr271:
                              if(_loc3_ && _loc3_)
                              {
                                 §§goto(addr271);
                              }
                              return;
                           }
                           while(true)
                           {
                              this.§+!X§ = 0;
                              continue loop15;
                              §§goto(addr26);
                           }
                        }
                        §§goto(addr50);
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §2"@§.setText(param1,"TextField_Version_Number");
            do
            {
               §2"@§.setText(param2,"TextField_Version_Number_Server");
            }
            while(_loc3_);
            
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      private function §8a§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§2"@§.stage.mouseX < §2"@§.stage.width - 180)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr44:
                  §§push(true);
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr44);
      }
      
      private function §6!`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ use§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8a§(param1));
                     addr177:
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§]!S§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() - §2"@§.stage.mouseY);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§]!S§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          continue loop4;
                                       }
                                       §§push(§§pop() - §2"@§.stage.mouseY);
                                    }
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       addr76:
                                       if(!_loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§]!S§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(§§pop() - §2"@§.stage.mouseY);
                                          }
                                          §§pop().§+!X§ = §§pop();
                                          addr103:
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             this.§]!S§ = §2"@§.stage.mouseY;
                                             if(!_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr76);
                                                }
                                                if(_loc3_ || param1)
                                                {
                                                   addr20:
                                                   return;
                                                   addr41:
                                                }
                                                break;
                                             }
                                             §§goto(addr103);
                                          }
                                          addr117:
                                          if(_loc2_)
                                          {
                                             this.§]!S§ = §2"@§.stage.mouseY;
                                             §§goto(addr117);
                                             addr165:
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr20);
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr20);
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    return;
                                    addr181:
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(this);
                                 §§push(this.§]!S§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() - §2"@§.stage.mouseY);
                                 }
                                 §§pop().§+!X§ = §§pop();
                                 §§goto(addr165);
                              }
                           }
                        }
                     }
                     this.§ use§ = false;
                     §§goto(addr181);
                  }
               }
               §§goto(addr20);
            }
            §§goto(addr177);
         }
         §§goto(addr41);
      }
      
      private function §%v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§8a§(param1));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§?l§.isPaused);
                     addr78:
                     while(!§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§ use§ = true;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr89);
      }
      
      private function §"!+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ use§ = false;
         }
      }
      
      private function §[!&§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ use§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§8a§(param1))
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && this))
                           {
                              this.§8![§ = -16;
                           }
                           addr19:
                           return;
                           addr88:
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr19);
                        }
                        else
                        {
                           addr85:
                           this.§8![§ = 16;
                        }
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr85);
               }
               §§goto(addr88);
            }
            §§goto(addr19);
         }
         §§goto(addr85);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(!§?l§.isPaused)
                     {
                        while(true)
                        {
                           §?l§.§5-§.update(param1);
                           while(!(_loc3_ && _loc2_))
                           {
                              (§2"@§.getItemByName("Container_Credits") as §0!Y§).setVisibility(true);
                              loop3:
                              while(true)
                              {
                                 this.readyToShowCredits();
                                 while(true)
                                 {
                                    (§2"@§.getItemByName("Container_Credits") as §0!Y§).y = Math.floor(-this.§2"G§);
                                    addr110:
                                    while(true)
                                    {
                                       this.§-!s§(param1);
                                       continue loop3;
                                    }
                                    addr59:
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr27);
                                    }
                                 }
                              }
                           }
                           §§goto(addr156);
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue loop0;
                        }
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr81);
                     }
                     addr27:
                     return §+d§.STATE_STATUS_RUNNING;
                  }
                  while(!(_loc4_ || this));
                  
                  return §+d§.STATE_STATUS_COMPLETED;
               }
            }
            §§goto(addr156);
         }
         addr156:
         return _loc2_;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §-!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§2"G§);
            if(_loc3_)
            {
               §§push(§§pop() + this.§+!X§);
            }
            §§pop().§2"G§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§2"G§);
               if(!_loc2_)
               {
                  §§push(§§pop() + this.§8![§);
               }
               §§pop().§2"G§ = §§pop();
               addr221:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§push(Math.abs(this.§8![§) < param1 / 15);
               loop11:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(this);
                           §§push(this.§2"G§);
                           if(_loc3_)
                           {
                              §§push(param1);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(§§pop() / 15);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§2"G§ = §§pop();
                        }
                        while(true)
                        {
                        }
                        addr199:
                     }
                     while(true)
                     {
                        §§push(this.§2"G§);
                        loop6:
                        while(true)
                        {
                           §§push(-AngryBirdsFP11.§?s§);
                           addr149:
                           while(true)
                           {
                              §§push(§§pop() * §?l§.§0!S§);
                              addr152:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc2_)
                                 {
                                    this.§2"G§ = this.§`"T§;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr199);
                              }
                              addr62:
                              §§push(this.§ use§);
                              if(_loc2_ && param1)
                              {
                                 continue loop11;
                              }
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    addr75:
                                    §§push(this);
                                    §§push(this.§+!X§);
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(§§pop() * 0.9);
                                    }
                                    §§pop().§+!X§ = §§pop();
                                    §§push(this);
                                    §§push(this.§8![§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§pop() * 0.9);
                                    }
                                    §§pop().§8![§ = §§pop();
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                addr209:
                                                if(!_loc2_)
                                                {
                                                   §§push(this);
                                                   §§push(-AngryBirdsFP11.§?s§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() * §?l§.§0!S§);
                                                   }
                                                   §§pop().§2"G§ = §§pop();
                                                   addr135:
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§goto(addr62);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                while(_loc3_)
                                                {
                                                   §§goto(addr221);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§ use§);
                                                   break loop11;
                                                   §§goto(addr209);
                                                }
                                                addr209:
                                                addr239:
                                             }
                                             §§goto(addr25);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr75);
                                    }
                                    addr88:
                                    §§goto(addr88);
                                 }
                                 addr25:
                                 return;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr209);
                              }
                           }
                        }
                     }
                     continue loop11;
                  }
               }
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr208);
                  §§goto(addr171);
               }
               addr171:
            }
         }
         §§goto(addr239);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §2"@§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6!`§);
            loop0:
            while(true)
            {
               §2"@§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
               while(true)
               {
                  §2"@§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§"!+§);
                  while(_loc1_)
                  {
                     §2"@§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        §2"@§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[!&§);
                        do
                        {
                           if(_loc1_)
                           {
                              (§2"@§.getItemByName("Container_Credits") as §0!Y§).visible = false;
                              continue loop0;
                           }
                           continue loop3;
                        }
                        while(!_loc1_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr40);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr98:
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(1);
                        if(!(_loc5_ && param2))
                        {
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     addr88:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr90);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr90);
               }
               else
               {
                  §§push(2);
               }
               addr103:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §5!+§.STATE_NAME;
                     if(!_loc5_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     AngryBirdsFP11.§>m§.§=-§();
                     if(_loc6_ || param2)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr90);
      }
   }
}
