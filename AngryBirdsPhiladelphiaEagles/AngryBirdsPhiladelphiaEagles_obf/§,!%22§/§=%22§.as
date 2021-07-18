package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §9T§.§>>§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   
   public class §="§ extends §'!#§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §-A§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            OFFSCREEN_X = -250;
            do
            {
               §-A§ = "PauseState";
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected var §0]§:§[!9§ = null;
      
      public function §="§(param1:Boolean = false, param2:String = "PauseState")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §0q§ = new §`o§(this);
               while(!_loc1_)
               {
                  §0q§.init(§`Z§.§5c§.Views.View_LevelPause[0]);
                  if(!_loc1_)
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            while(true)
            {
               this.openPauseMenu();
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §#! §.§`'§.background.§,+§();
            do
            {
               this.setInitialButtonVisibilities();
            }
            while(!_loc1_);
            
            if(_loc1_ || _loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0q§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §0q§.getItemByName("Button_Sound").setVisibility(false);
               loop1:
               while(!(_loc1_ && this))
               {
                  while(true)
                  {
                     §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
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
         §§goto(addr66);
      }
      
      private function §#!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§0]§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§0]§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§`!K§.§5g§ != null)
         {
            (§0q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §`!K§.§5g§;
            while(true)
            {
               addr106:
               this.§#!%§();
               if(!_loc2_)
               {
                  this.§0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":0},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":1},{"alpha":0},0.25));
                  §§push(this.§0]§);
                  do
                  {
                     §§pop().onComplete = this.§>!G§;
                     §§push(this.§0]§);
                  }
                  while(_loc2_);
                  
                  §§pop().play();
                  addr93:
                  if(_loc2_ && _loc1_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr106);
                           }
                           else
                           {
                              while(true)
                              {
                                 §#! §.pause();
                                 break loop4;
                              }
                              addr125:
                           }
                        }
                        break;
                        §§goto(addr93);
                     }
                     while(true)
                     {
                        §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§5e§());
                        §§goto(addr102);
                     }
                     addr102:
                  }
                  return;
               }
            }
            addr148:
         }
         while(true)
         {
            (§0q§.getItemByName("Container_PauseMenu") as §[Q§).x = OFFSCREEN_X;
            this.setPauseMenuButtonsEnabled(false);
            §§goto(addr125);
            §§goto(addr148);
         }
      }
      
      protected function §>!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.setPauseMenuButtonsEnabled(true);
            do
            {
               this.§#!%§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§0q§.getItemByName("Button_Resume") as §^'§).setEnabled(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setEnabled(param1);
               §§goto(addr97);
            }
         }
         addr97:
         while(true)
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setEnabled(param1);
            do
            {
               (§0q§.getItemByName("Button_Help") as §^'§).setEnabled(param1);
               do
               {
                  (§0q§.getItemByName("Button_Sound") as §^'§).setEnabled(param1);
               }
               while(_loc2_);
               
            }
            while(!(_loc3_ || this));
            
            if(!(_loc2_ && this))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§0q§.getItemByName("Button_Resume") as §^'§).setComponentVisualState(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
               §§goto(addr97);
            }
         }
         addr97:
         while(true)
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
            do
            {
               (§0q§.getItemByName("Button_Help") as §^'§).setComponentVisualState(param1);
               do
               {
                  (§0q§.getItemByName("Button_Sound") as §^'§).setComponentVisualState(param1);
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
            if(!_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!%§();
            while(true)
            {
               this.§0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":OFFSCREEN_X},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(!_loc1_)
               {
                  §§push(this.§0]§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§3h§;
                     addr54:
                     while(!_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§0]§);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().play();
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr54);
            }
            §§goto(addr51);
         }
      }
      
      protected function §3h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = this.§>!=§();
         }
         do
         {
            this.§#!%§();
         }
         while(!_loc2_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           return §'!#§.STATE_STATUS_COMPLETED;
                        }
                        addr98:
                        return _loc2_;
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §'!#§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr98);
         }
         §§goto(addr100);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            while(true)
            {
               this.§#!%§();
               while(!(_loc2_ && _loc2_))
               {
                  this.setPauseMenuButtonStates(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>>§ = null;
         var _loc7_:* = param2;
         if(_loc9_ || param3)
         {
            §§push("HELP");
            §§push(_loc7_);
            if(!(_loc10_ && param2))
            {
               if(§§pop() === §§pop())
               {
                  §§push(0);
                  if(_loc10_ && this)
                  {
                     addr335:
                  }
               }
               else
               {
                  §§push("RESTART_LEVEL");
                  if(!(_loc10_ && param1))
                  {
                     §§push(_loc7_);
                     if(_loc9_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr361);
                        }
                        else
                        {
                           §§push("RESUME_LEVEL");
                           if(!(_loc10_ && this))
                           {
                              §§push(_loc7_);
                              if(!(_loc10_ && param2))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(2);
                                    if(_loc10_)
                                    {
                                       addr356:
                                    }
                                    §§goto(addr361);
                                 }
                                 else
                                 {
                                    §§push("END_LEVEL");
                                    if(_loc9_ || param1)
                                    {
                                       addr304:
                                       §§push(_loc7_);
                                       if(_loc9_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                §§push(3);
                                                if(_loc10_)
                                                {
                                                }
                                                §§goto(addr361);
                                             }
                                             else
                                             {
                                                addr324:
                                                §§push(4);
                                             }
                                             §§goto(addr335);
                                          }
                                          else
                                          {
                                             §§push("MENU");
                                             §§push(_loc7_);
                                             if(!_loc10_)
                                             {
                                                addr323:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr324);
                                                }
                                                else
                                                {
                                                   addr337:
                                                   if("TOGGLE_SOUNDS" === _loc7_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(5);
                                                         if(!_loc9_)
                                                         {
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      else
                                                      {
                                                         addr355:
                                                         §§push(7);
                                                      }
                                                      §§goto(addr356);
                                                   }
                                                   else
                                                   {
                                                      addr347:
                                                      if("TOGGLE_PARTICLES" === _loc7_)
                                                      {
                                                         addr348:
                                                         §§push(6);
                                                         if(!_loc9_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr354:
                                                         if("FULLSCREEN_BUTTON" !== _loc7_)
                                                         {
                                                            addr361:
                                                            §§push(1);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     this.closePauseMenu();
                                                                     if(!_loc9_)
                                                                     {
                                                                        §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                        break loop0;
                                                                        addr183:
                                                                     }
                                                                     continue;
                                                                     addr161:
                                                                     break;
                                                                  case 1:
                                                                     mNextState = this.§5!'§();
                                                                     §-O§.§8!5§();
                                                                     break;
                                                                     addr229:
                                                                  case 2:
                                                                     this.closePauseMenu();
                                                                     break loop0;
                                                                  case 3:
                                                                     break loop0;
                                                                  case 4:
                                                                     §[!7§.§=0§();
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        mNextState = this.§@]§();
                                                                        break loop0;
                                                                        addr197:
                                                                        addr212:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                                     break;
                                                                  case 5:
                                                                     addr190:
                                                                     _loc4_ = !AngryBirdsFP11.§5e§();
                                                                     AngryBirdsFP11.§6r§(_loc4_);
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr183);
                                                                     break;
                                                                     addr189:
                                                                  case 6:
                                                                     §§push(§#! §.§#!-§());
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           addr145:
                                                                           §§push(!§§pop());
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              do
                                                                              {
                                                                                 §#! §.§!Y§(_loc5_);
                                                                              }
                                                                              while(!(_loc9_ || param3));
                                                                              
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    addr91:
                                                                                    §0q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                    break loop0;
                                                                                 }
                                                                                 §§goto(addr197);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr190);
                                                                           }
                                                                           §§goto(addr161);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr189);
                                                                        }
                                                                     }
                                                                     §§goto(addr145);
                                                                  case 7:
                                                                     AngryBirdsFP11.§`y§.§,,§();
                                                                     if(true)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr91);
                                                               }
                                                               break;
                                                            }
                                                            return;
                                                            §§push(8);
                                                         }
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr354);
                                          }
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr337);
                                 }
                              }
                           }
                           §§goto(addr337);
                        }
                     }
                     §§goto(addr347);
                  }
                  §§goto(addr304);
               }
               §§goto(addr361);
            }
            §§goto(addr347);
         }
         §§goto(addr348);
      }
      
      protected function §>!=§() : String
      {
         return StatePlay.§-A§;
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §@]§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
