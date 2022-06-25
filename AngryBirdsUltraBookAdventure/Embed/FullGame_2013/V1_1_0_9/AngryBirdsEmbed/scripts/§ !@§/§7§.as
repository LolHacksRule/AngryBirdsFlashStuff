package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6A§.§!!'§;
   import §7g§.§1Q§;
   
   public class §7§ extends §1Q§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §>9§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            OFFSCREEN_X = -250;
            if(!_loc1_)
            {
               addr24:
               §>9§ = "PauseState";
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected var §!e§:§ !=§ = null;
      
      public function §7§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
            if(!(_loc2_ && _loc2_))
            {
               §]F§ = new §4!,§(this);
               if(!(_loc2_ && this))
               {
                  addr49:
                  §]F§.init(§5A§.§;L§.Views.View_LevelPause[0]);
               }
               return;
            }
         }
         §§goto(addr49);
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
               if(!_loc1_)
               {
                  §=w§.§ o§.background.§ ! §();
                  if(!_loc1_)
                  {
                     addr48:
                     this.setInitialButtonVisibilities();
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §]F§.getItemByName("Button_Help").setVisibility(false);
            if(!_loc2_)
            {
               §]F§.getItemByName("Button_Sound").setVisibility(false);
               if(!_loc2_)
               {
                  addr47:
                  §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§!e§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr47:
                     this.§!e§.stop();
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr58);
                  }
                  this.§!e§ = null;
                  §§goto(addr58);
               }
               addr58:
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(§[4§.§"!>§ != null)
         {
            if(_loc2_ || _loc2_)
            {
               (§]F§.getItemByName("TextField_LevelName") as §`a§).§@w§.text = §[4§.§"!>§;
               if(_loc2_ || _loc1_)
               {
                  addr44:
                  (§]F§.getItemByName("Container_PauseMenu") as §4!=§).x = OFFSCREEN_X;
                  if(_loc1_ && this)
                  {
                  }
                  §§goto(addr78);
               }
               this.setPauseMenuButtonsEnabled(false);
               if(!(_loc1_ && this))
               {
                  §§goto(addr78);
               }
               §§goto(addr89);
            }
            addr78:
            §=w§.pause();
            §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§<!G§());
            if(_loc2_)
            {
               addr89:
               this.§+§();
               if(_loc2_)
               {
                  this.§!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":0},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":1},{"alpha":0},0.25));
                  §§push(this.§!e§);
                  if(_loc2_)
                  {
                     §§pop().onComplete = this.§super§;
                     §§goto(addr149);
                  }
                  §§pop().play();
               }
            }
            addr149:
            if(_loc2_)
            {
               §§push(this.§!e§);
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §super§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.setPauseMenuButtonsEnabled(true);
            if(!(_loc1_ && _loc2_))
            {
               addr44:
               this.§+§();
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§]F§.getItemByName("Button_Resume") as §7-§).setEnabled(param1);
            if(!(_loc2_ && param1))
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setEnabled(param1);
               if(!(_loc2_ && this))
               {
                  §§goto(addr72);
               }
               §§goto(addr81);
            }
            addr72:
            (§]F§.getItemByName("Button_Menu") as §7-§).setEnabled(param1);
            if(!_loc2_)
            {
               addr81:
               (§]F§.getItemByName("Button_Help") as §7-§).setEnabled(param1);
               if(!_loc3_)
               {
               }
               §§goto(addr97);
            }
            (§]F§.getItemByName("Button_Sound") as §7-§).setEnabled(param1);
            addr97:
            return;
         }
         §§goto(addr81);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§]F§.getItemByName("Button_Resume") as §7-§).setComponentVisualState(param1);
            if(_loc3_ || _loc2_)
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
               if(_loc3_ || _loc3_)
               {
                  (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
                  addr62:
                  if(!(_loc2_ && _loc2_))
                  {
                     (§]F§.getItemByName("Button_Help") as §7-§).setComponentVisualState(param1);
                     if(_loc3_)
                     {
                        addr95:
                        (§]F§.getItemByName("Button_Sound") as §7-§).setComponentVisualState(param1);
                     }
                  }
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr62);
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+§();
            if(!(_loc1_ && _loc1_))
            {
               this.§!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":OFFSCREEN_X},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":0},{"alpha":1},0.25));
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.§!e§);
                  if(_loc2_ || _loc1_)
                  {
                     §§pop().onComplete = this.§!Q§;
                     §§goto(addr111);
                  }
                  §§pop().play();
               }
            }
         }
         addr111:
         if(_loc2_)
         {
            §§push(this.§!e§);
         }
      }
      
      protected function §!Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            mNextState = this.§=!-§();
            if(!(_loc2_ && _loc1_))
            {
               this.§+§();
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr75);
                  }
               }
               else
               {
                  §§goto(addr78);
               }
               §§goto(addr89);
            }
            addr75:
            return _loc2_;
         }
         addr78:
         if(mNextState.length > 0)
         {
            if(_loc4_ || _loc2_)
            {
               addr89:
               return §1Q§.STATE_STATUS_COMPLETED;
            }
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            if(!_loc1_)
            {
               this.§+§();
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr46);
            }
            this.setPauseMenuButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         addr46:
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§!!'§ = null;
         var _loc7_:* = param2;
         if(!_loc10_)
         {
            if("HELP" === _loc7_)
            {
               §§push(0);
            }
            else
            {
               §§push("RESTART_LEVEL");
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(!(_loc10_ && param3))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc10_ && param3))
                        {
                           §§push(1);
                           if(_loc9_ || param3)
                           {
                           }
                        }
                        else
                        {
                           addr264:
                           §§push(5);
                           if(_loc9_)
                           {
                              addr277:
                           }
                        }
                        §§goto(addr303);
                     }
                     else
                     {
                        addr234:
                        §§push("RESUME_LEVEL");
                        if(!_loc10_)
                        {
                           §§push(_loc7_);
                        }
                        if(§§pop() === _loc7_)
                        {
                           if(_loc9_)
                           {
                              §§push(3);
                              if(_loc10_ && this)
                              {
                              }
                           }
                           else
                           {
                              addr250:
                              §§push(4);
                              if(_loc9_ || param3)
                              {
                              }
                           }
                        }
                        else if("MENU" !== _loc7_)
                        {
                           §§push("TOGGLE_SOUNDS");
                           §§push(_loc7_);
                           if(_loc9_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr264);
                              }
                              else
                              {
                                 if("TOGGLE_PARTICLES" === _loc7_)
                                 {
                                    if(!_loc10_)
                                    {
                                       §§push(6);
                                       if(_loc9_ || param3)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr295:
                                       §§push(7);
                                       if(!_loc10_)
                                       {
                                          §§goto(addr298);
                                       }
                                    }
                                    §§goto(addr303);
                                 }
                                 else
                                 {
                                    addr293:
                                    §§push("FULLSCREEN_BUTTON");
                                    §§push(_loc7_);
                                 }
                                 §§goto(addr295);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr295);
                           }
                           else
                           {
                              addr303:
                              loop0:
                              while(true)
                              {
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.closePauseMenu();
                                       if(_loc10_)
                                       {
                                          addr123:
                                          §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                          break;
                                       }
                                       §§push(0);
                                       if(!_loc10_)
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc9_ || param3)
                                          {
                                             for each(_loc6_ in §=w§.§ o§.slingshot.§,B§)
                                             {
                                                if(_loc9_)
                                                {
                                                   AngryBirdsFP11.sUserProgress.§-l§(_loc6_.name,false);
                                                }
                                             }
                                          }
                                          break loop0;
                                       }
                                       continue;
                                    case 1:
                                       mNextState = this.§]!-§();
                                       if(_loc9_ || this)
                                       {
                                          §^!K§.§@!<§();
                                          if(!(_loc10_ && param2))
                                          {
                                             break loop0;
                                          }
                                          break;
                                       }
                                       addr159:
                                       §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                       break loop0;
                                    case 2:
                                       this.closePauseMenu();
                                       break loop0;
                                    case 3:
                                       break loop0;
                                    case 4:
                                       §,!F§.§?X§();
                                       mNextState = this.§[A§();
                                       break loop0;
                                    case 5:
                                       §§push(AngryBirdsFP11.§<!G§());
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc10_)
                                          {
                                             addr110:
                                             _loc4_ = §§pop();
                                             if(_loc9_ || param1)
                                             {
                                                AngryBirdsFP11.§%!H§(_loc4_);
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr123);
                                                }
                                             }
                                             else
                                             {
                                                addr149:
                                                §=w§.§9C§(_loc5_);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§goto(addr159);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr136:
                                             _loc5_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                §§goto(addr149);
                                             }
                                          }
                                          addr177:
                                          break loop0;
                                       }
                                       §§goto(addr110);
                                    case 6:
                                       §§push(§=w§.§-!;§());
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§goto(addr136);
                                    case 7:
                                       AngryBirdsFP11.§ y§.§-!$§();
                                       if(_loc9_ || this)
                                       {
                                          §§goto(addr177);
                                       }
                                 }
                                 break;
                              }
                              return;
                              §§push(8);
                           }
                        }
                     }
                     §§goto(addr303);
                  }
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_)
                     {
                        §§goto(addr303);
                        §§push(2);
                     }
                     else
                     {
                        §§goto(addr250);
                     }
                     §§goto(addr303);
                  }
                  else
                  {
                     §§push("END_LEVEL");
                     if(!(_loc10_ && param2))
                     {
                        §§goto(addr234);
                     }
                     §§goto(addr293);
                  }
               }
               §§goto(addr234);
            }
            §§goto(addr303);
         }
         §§goto(addr295);
      }
      
      protected function §=!-§() : String
      {
         return StatePlay.§>9§;
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
