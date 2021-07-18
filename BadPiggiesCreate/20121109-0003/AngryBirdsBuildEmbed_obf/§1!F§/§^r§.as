package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §<!<§.§]K§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §^r§ extends §;!!§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            OFFSCREEN_X = -250;
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               STATE_NAME = "PauseState";
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected var §%!&§:§0Y§ = null;
      
      public function §^r§(param1:Boolean = false, param2:String = "PauseState")
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
         if(_loc1_ || _loc1_)
         {
            super.init();
            if(_loc1_ || this)
            {
               §§goto(addr52);
            }
            §§goto(addr64);
         }
         addr52:
         §+!$§ = new §2U§(this);
         if(_loc1_ || _loc2_)
         {
            addr64:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelPause[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(!(_loc1_ && _loc2_))
            {
               this.openPauseMenu();
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr47);
               }
               §§goto(addr53);
            }
         }
         addr47:
         §'!V§.§1!2§.background.§8!n§();
         if(!_loc1_)
         {
            addr53:
            this.setInitialButtonVisibilities();
         }
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §+!$§.getItemByName("Button_Help").setVisibility(false);
            if(!_loc1_)
            {
               §§goto(addr41);
            }
            §§goto(addr48);
         }
         addr41:
         §+!$§.getItemByName("Button_Sound").setVisibility(false);
         if(!_loc1_)
         {
            addr48:
            §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
         }
      }
      
      private function §3b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§%!&§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr53:
                     this.§%!&§.stop();
                     if(_loc2_)
                     {
                        this.§%!&§ = null;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§1^§.§ ]§ != null)
         {
            if(!_loc2_)
            {
               (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §1^§.§ ]§;
               if(_loc1_)
               {
                  addr33:
                  (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = OFFSCREEN_X;
                  this.setPauseMenuButtonsEnabled(false);
               }
               §'!V§.pause();
               §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;!f§());
               if(!(_loc2_ && _loc1_))
               {
                  this.§3b§();
                  if(!(_loc2_ && this))
                  {
                     this.§%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25));
                     if(_loc1_ || this)
                     {
                        addr129:
                        §§push(this.§%!&§);
                        if(!(_loc2_ && this))
                        {
                           §§pop().onComplete = this.§[!e§;
                           §§goto(addr151);
                        }
                        §§pop().play();
                     }
                     addr151:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr148:
                        §§push(this.§%!&§);
                     }
                     return;
                  }
                  §§goto(addr148);
               }
               §§goto(addr129);
            }
            §§goto(addr148);
         }
         §§goto(addr33);
      }
      
      protected function §[!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.setPauseMenuButtonsEnabled(true);
            if(_loc1_)
            {
               addr28:
               this.§3b§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
            if(!(_loc2_ && _loc2_))
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
               if(_loc3_)
               {
                  addr62:
                  (§+!$§.getItemByName("Button_Menu") as §#!'§).setEnabled(param1);
                  if(_loc3_)
                  {
                     (§+!$§.getItemByName("Button_Help") as §#!'§).setEnabled(param1);
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr87);
               }
               (§+!$§.getItemByName("Button_Sound") as §#!'§).setEnabled(param1);
            }
            addr87:
            return;
         }
         §§goto(addr62);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(param1);
            if(_loc2_ || this)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
               if(_loc2_)
               {
                  (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
                  if(_loc2_)
                  {
                     addr70:
                     (§+!$§.getItemByName("Button_Help") as §#!'§).setComponentVisualState(param1);
                     if(!_loc3_)
                     {
                        addr79:
                        (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentVisualState(param1);
                     }
                  }
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr79);
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3b§();
            if(_loc1_ || _loc1_)
            {
               this.§%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25));
               if(_loc2_)
               {
               }
               §§goto(addr100);
            }
            §§push(this.§%!&§);
            if(_loc1_)
            {
               §§pop().onComplete = this.§7!T§;
               if(_loc1_ || _loc1_)
               {
                  §§push(this.§%!&§);
               }
               §§goto(addr100);
            }
            §§pop().play();
         }
         addr100:
      }
      
      protected function §7!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            mNextState = this.getPlayState();
            if(_loc2_ || _loc1_)
            {
               addr45:
               this.§3b§();
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr71);
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        return §;!!§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         addr71:
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            if(!(_loc1_ && _loc2_))
            {
               this.§3b§();
               if(!_loc1_)
               {
                  addr42:
                  this.setPauseMenuButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               return;
            }
         }
         §§goto(addr42);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§]K§ = null;
         var _loc7_:* = param2;
         if(_loc9_ || param1)
         {
            §§push("HELP");
            §§push(_loc7_);
            if(_loc9_)
            {
               if(§§pop() === §§pop())
               {
                  addr210:
                  §§push(0);
               }
               else
               {
                  §§push("RESTART_LEVEL");
                  if(_loc9_ || param3)
                  {
                     addr221:
                     if(§§pop() === _loc7_)
                     {
                        §§push(1);
                        if(!(_loc9_ || param2))
                        {
                           addr314:
                        }
                        §§goto(addr336);
                     }
                     else
                     {
                        §§push("RESUME_LEVEL");
                        if(_loc9_ || this)
                        {
                           §§push(_loc7_);
                           if(_loc9_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(2);
                                    if(!(_loc9_ || param1))
                                    {
                                       addr272:
                                    }
                                 }
                                 §§goto(addr336);
                              }
                              else
                              {
                                 §§push("END_LEVEL");
                                 if(_loc9_ || param3)
                                 {
                                    if(§§pop() === _loc7_)
                                    {
                                       §§push(3);
                                       if(_loc9_)
                                       {
                                          §§goto(addr272);
                                       }
                                       else
                                       {
                                          addr326:
                                          §§goto(addr336);
                                       }
                                    }
                                    else
                                    {
                                       §§push("MENU");
                                       if(_loc9_)
                                       {
                                          addr276:
                                          §§push(_loc7_);
                                          if(!_loc10_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(4);
                                                   if(_loc9_ || this)
                                                   {
                                                   }
                                                   §§goto(addr336);
                                                }
                                                else
                                                {
                                                   addr330:
                                                   §§push(7);
                                                }
                                             }
                                             else
                                             {
                                                §§push("TOGGLE_SOUNDS");
                                                §§push(_loc7_);
                                                if(!_loc10_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§push(5);
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         §§goto(addr314);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr326);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("TOGGLE_PARTICLES");
                                                   }
                                                   §§goto(addr336);
                                                }
                                                addr329:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr330);
                                                }
                                                else
                                                {
                                                   addr336:
                                                   loop0:
                                                   while(true)
                                                   {
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            this.closePauseMenu();
                                                            if(!_loc9_)
                                                            {
                                                               addr105:
                                                               break loop0;
                                                            }
                                                            §§push(0);
                                                            if(!_loc10_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  for each(_loc6_ in §'!V§.§1!2§.slingshot.mBirds)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        AngryBirdsFP11.sUserProgress.§#+§(_loc6_.name,false);
                                                                     }
                                                                  }
                                                               }
                                                               break loop0;
                                                            }
                                                            continue;
                                                         case 1:
                                                            mNextState = this.§0H§();
                                                            if(!_loc10_)
                                                            {
                                                               §26§.§!=§();
                                                               if(_loc9_ || param3)
                                                               {
                                                                  break loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr127:
                                                               AngryBirdsFP11.§;z§(_loc4_);
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            addr137:
                                                            §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                            if(!_loc10_)
                                                            {
                                                               addr145:
                                                               break loop0;
                                                            }
                                                            break loop0;
                                                         case 2:
                                                            this.closePauseMenu();
                                                            if(!_loc10_)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr145);
                                                            break;
                                                         case 3:
                                                            break loop0;
                                                         case 4:
                                                            §+!§.§'!Q§();
                                                            mNextState = this.§ try§();
                                                            if(!(_loc9_ || param3))
                                                            {
                                                               addr180:
                                                               §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                               break loop0;
                                                            }
                                                            §§goto(addr105);
                                                            break;
                                                         case 5:
                                                            §§push(AngryBirdsFP11.§;!f§());
                                                            if(!(_loc10_ && this))
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc10_ && param3)
                                                               {
                                                                  addr152:
                                                                  _loc5_ = §§pop();
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §'!V§.§6!Y§(_loc5_);
                                                                     if(!(_loc9_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr180);
                                                               }
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr127);
                                                            }
                                                            §§goto(addr137);
                                                         case 6:
                                                            §§push(§'!V§.§'V§());
                                                            if(_loc9_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            §§goto(addr152);
                                                         case 7:
                                                            AngryBirdsFP11.§`!d§.§!5§();
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                      }
                                                      break;
                                                   }
                                                   return;
                                                   §§push(8);
                                                }
                                             }
                                             §§goto(addr336);
                                          }
                                          §§goto(addr329);
                                       }
                                       §§push(_loc7_);
                                       if(_loc9_ || param1)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr326);
                                             §§push(6);
                                          }
                                          else
                                          {
                                             addr328:
                                             §§goto(addr329);
                                             §§push("FULLSCREEN_BUTTON");
                                             §§push(_loc7_);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr329);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr328);
                              }
                           }
                           §§goto(addr329);
                        }
                        §§goto(addr328);
                     }
                  }
                  §§goto(addr276);
               }
               §§goto(addr336);
            }
            §§goto(addr221);
         }
         §§goto(addr210);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function § try§() : String
      {
         return §?&§.STATE_NAME;
      }
   }
}
