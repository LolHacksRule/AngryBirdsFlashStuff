package §9!5§
{
   import §"R§.§ !Q§;
   import §,!5§.§7!,§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import §true§.§ _§;
   
   public class §%@§ extends §?Y§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?h§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            OFFSCREEN_X = -250;
            do
            {
               §?h§ = "PauseState";
            }
            while(_loc1_ && §%@§);
            
         }
      }
      
      protected var §74§:§4!Z§ = null;
      
      public function §%@§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            while(true)
            {
               §5!P§ = new §'!^§(this);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            §5!P§.init(§[!'§.§+@§.Views.View_LevelPause[0]);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            while(true)
            {
               this.openPauseMenu();
               addr55:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            § _§.§!6§.background.§>G§();
            while(_loc1_)
            {
               this.setInitialButtonVisibilities();
               if(_loc1_)
               {
                  return;
               }
            }
            §§goto(addr55);
         }
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §5!P§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §5!P§.getItemByName("Button_Sound").setVisibility(false);
               while(_loc2_)
               {
                  §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                  if(!_loc1_)
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §&q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§74§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§74§);
                     addr55:
                     while(true)
                     {
                        §§pop().stop();
                        do
                        {
                           this.§74§ = null;
                        }
                        while(_loc1_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr53:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr53);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(LevelManager.§4Y§ != null)
            {
               while(true)
               {
                  (§5!P§.getItemByName("TextField_LevelName") as §"j§).§"E§.text = LevelManager.§4Y§;
                  addr181:
                  while(true)
                  {
                  }
                  addr141:
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"!u§());
                  while(true)
                  {
                     this.§&q§();
                     loop7:
                     while(!_loc1_)
                     {
                        this.§74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":0},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":1},{"alpha":0},0.25));
                        while(true)
                        {
                           §§push(this.§74§);
                           loop9:
                           while(true)
                           {
                              §§pop().onComplete = this.§]Z§;
                              addr60:
                              while(!_loc1_)
                              {
                                 addr62:
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop9;
                                 }
                                 addr167:
                                 while(true)
                                 {
                                    this.§`!^§(false);
                                    addr158:
                                    while(true)
                                    {
                                       § _§.pause();
                                       addr134:
                                       while(_loc2_ || this)
                                       {
                                          §§goto(addr141);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr62);
                                 }
                              }
                              continue loop7;
                           }
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr134);
                        }
                        return;
                     }
                  }
               }
            }
            while(true)
            {
               (§5!P§.getItemByName("Container_PauseMenu") as §8;§).x = OFFSCREEN_X;
               §§goto(addr167);
               §§goto(addr181);
            }
         }
         §§goto(addr115);
      }
      
      protected function §]Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!^§(true);
         }
         do
         {
            this.§&q§();
         }
         while(_loc1_ && this);
         
      }
      
      protected function §`!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§5!P§.getItemByName("Button_Resume") as §5!I§).setEnabled(param1);
            loop0:
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setEnabled(param1);
               while(true)
               {
                  (§5!P§.getItemByName("Button_Menu") as §5!I§).setEnabled(param1);
                  while(_loc2_)
                  {
                     (§5!P§.getItemByName("Button_Help") as §5!I§).setEnabled(param1);
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           (§5!P§.getItemByName("Button_Sound") as §5!I§).setEnabled(param1);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §7!k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            (§5!P§.getItemByName("Button_Resume") as §5!I§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
            do
            {
               (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
               do
               {
                  (§5!P§.getItemByName("Button_Help") as §5!I§).setComponentVisualState(param1);
                  continue loop0;
               }
               while(_loc3_);
               
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&q§();
            while(true)
            {
               this.§74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":OFFSCREEN_X},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  §§push(this.§74§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§8w§;
                     addr59:
                     while(!_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function §8w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = this.§,w§();
         }
         do
         {
            this.§&q§();
         }
         while(!_loc2_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() != §?Y§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr99);
                  }
                  else
                  {
                     while(true)
                     {
                        addr72:
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        addr31:
                        return §?Y§.STATE_STATUS_RUNNING;
                        addr79:
                     }
                     addr100:
                  }
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        return §?Y§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr72);
                  }
                  break;
                  §§goto(addr100);
               }
               §§goto(addr31);
            }
            addr99:
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
         }
         do
         {
            this.§&q§();
            do
            {
               this.§7!k§(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§7!,§ = null;
         var _loc7_:* = param2;
         if(!_loc10_)
         {
            §§push("HELP");
            if(!(_loc10_ && param2))
            {
               §§push(_loc7_);
               if(!(_loc10_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_)
                     {
                        §§push(0);
                        if(_loc10_ && param1)
                        {
                           addr406:
                        }
                     }
                     else
                     {
                        addr319:
                        §§push(3);
                        if(_loc10_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(!(_loc10_ && param3))
                     {
                        addr257:
                        §§push(_loc7_);
                        if(_loc9_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc9_ || param2)
                              {
                                 §§push(1);
                                 if(_loc9_ || param2)
                                 {
                                    §§goto(addr423);
                                 }
                                 else
                                 {
                                    §§goto(addr406);
                                 }
                              }
                              else
                              {
                                 addr398:
                                 §§push(6);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§goto(addr406);
                                 }
                                 §§goto(addr423);
                              }
                              §§goto(addr423);
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(_loc9_)
                              {
                                 §§push(_loc7_);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          addr291:
                                          §§push(2);
                                          if(_loc10_)
                                          {
                                          }
                                          §§goto(addr423);
                                       }
                                       else
                                       {
                                          §§goto(addr319);
                                       }
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(!(_loc10_ && this))
                                       {
                                          addr303:
                                          §§push(_loc7_);
                                          if(_loc9_ || param2)
                                          {
                                             addr311:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   §§goto(addr319);
                                                }
                                                else
                                                {
                                                   addr337:
                                                   §§push(4);
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§goto(addr423);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr406);
                                                   }
                                                }
                                                §§goto(addr423);
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      addr334:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr337);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            addr354:
                                                            §§push(_loc7_);
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr362:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(5);
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        addr418:
                                                                     }
                                                                  }
                                                                  §§goto(addr423);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr382:
                                                                     §§push(_loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§goto(addr398);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr409:
                                                                           if("FULLSCREEN_BUTTON" !== _loc7_)
                                                                           {
                                                                              addr423:
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 loop7:
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       this.closePauseMenu();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             for each(_loc6_ in § _§.§!6§.slingshot.§?$§)
                                                                                             {
                                                                                                if(!(_loc10_ && param2))
                                                                                                {
                                                                                                   AngryBirdsFP11.sUserProgress.§#_§(_loc6_.name,false);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          addr85:
                                                                                          if(true)
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             §5!P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(!(_loc10_ && param2))
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr127:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            AngryBirdsFP11.§-#§(_loc4_);
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                                               if(!(_loc10_ && param3))
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                                  addr144:
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      loop2:
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            mNextState = this.§&X§();
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr164:
                                                                                                   }
                                                                                                   § _§.§"$§(_loc5_);
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr144);
                                                                                    case 1:
                                                                                       mNextState = this.§[!Z§();
                                                                                       §#!c§.§6d§();
                                                                                       break;
                                                                                       addr203:
                                                                                    case 2:
                                                                                       this.closePauseMenu();
                                                                                       addr190:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                       break;
                                                                                    case 3:
                                                                                       break loop0;
                                                                                    case 4:
                                                                                       § !Q§.§"!"§();
                                                                                       §§goto(addr184);
                                                                                    case 5:
                                                                                       addr163:
                                                                                       _loc4_ = !AngryBirdsFP11.§"!u§();
                                                                                       addr162:
                                                                                       §§goto(addr164);
                                                                                    case 6:
                                                                                       §§push(§ _§.§1_§());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_ || param3)
                                                                                             {
                                                                                                addr126:
                                                                                                _loc5_ = !§§pop();
                                                                                                §§goto(addr127);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr162);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr163);
                                                                                       }
                                                                                       §§goto(addr126);
                                                                                    case 7:
                                                                                       AngryBirdsFP11.§3!a§.§8!d§();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§goto(addr85);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr190);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr108);
                                                                                       }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      §§goto(addr423);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr354);
                                             }
                                          }
                                          §§goto(addr334);
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr311);
                              }
                              §§goto(addr409);
                           }
                        }
                        §§goto(addr311);
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr423);
               }
               §§goto(addr409);
            }
            §§goto(addr257);
         }
         §§goto(addr291);
      }
      
      protected function §,w§() : String
      {
         return StatePlay.§?h§;
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §&X§() : String
      {
         return § B§.§?h§;
      }
   }
}
