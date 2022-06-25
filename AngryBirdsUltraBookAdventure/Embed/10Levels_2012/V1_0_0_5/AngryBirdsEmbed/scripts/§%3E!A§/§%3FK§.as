package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §?b§.§+$§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   
   public class §?K§ extends §#!,§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?x§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            OFFSCREEN_X = -250;
            if(!_loc2_)
            {
               §?x§ = "PauseState";
            }
         }
      }
      
      protected var §function§:§?!3§ = null;
      
      public function §?K§(param1:Boolean = false, param2:String = "PauseState")
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
         if(_loc1_ || _loc1_)
         {
            super.init();
            if(_loc1_ || _loc2_)
            {
               §[=§ = new §^3§(this);
               if(!(_loc2_ && _loc2_))
               {
                  addr64:
                  §[=§.init(§!I§.§7y§.Views.View_LevelPause[0]);
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            if(_loc1_)
            {
               this.openPauseMenu();
               if(!(_loc2_ && _loc2_))
               {
                  §[k§.§&@§.background.§]I§();
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr54);
               }
            }
            this.setInitialButtonVisibilities();
         }
         addr54:
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §[=§.getItemByName("Button_Help").setVisibility(false);
            if(!_loc2_)
            {
               §[=§.getItemByName("Button_Sound").setVisibility(false);
               if(_loc1_)
               {
                  addr47:
                  §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §+]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§function§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr47:
                     this.§function§.stop();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr55:
                        this.§function§ = null;
                     }
                  }
                  §§goto(addr55);
               }
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr55);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§5j§.§%V§ != null)
         {
            (§[=§.getItemByName("TextField_LevelName") as §3D§).§7=§.text = §5j§.§%V§;
            if(!_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr129);
         }
         addr31:
         (§[=§.getItemByName("Container_PauseMenu") as §3C§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[k§.pause();
         if(!_loc2_)
         {
            §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,`§());
            this.§+]§();
            if(_loc1_ || this)
            {
               this.§function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":0},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":1},{"alpha":0},0.25));
            }
            §§push(this.§function§);
            if(!(_loc2_ && this))
            {
               §§pop().onComplete = this.§%!1§;
               §§goto(addr132);
            }
            §§pop().play();
         }
         addr132:
         if(!_loc2_)
         {
            addr129:
            §§push(this.§function§);
         }
      }
      
      protected function §%!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setPauseMenuButtonsEnabled(true);
            if(_loc1_)
            {
               this.§+]§();
            }
         }
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§[=§.getItemByName("Button_Resume") as §?q§).setEnabled(param1);
            if(!_loc2_)
            {
               (§[=§.getItemByName("Button_Replay") as §?q§).setEnabled(param1);
               if(!(_loc2_ && _loc2_))
               {
                  (§[=§.getItemByName("Button_Menu") as §?q§).setEnabled(param1);
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr90);
               }
            }
            (§[=§.getItemByName("Button_Help") as §?q§).setEnabled(param1);
            if(_loc2_ && this)
            {
            }
            §§goto(addr90);
         }
         addr90:
         (§[=§.getItemByName("Button_Sound") as §?q§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§[=§.getItemByName("Button_Resume") as §?q§).setComponentVisualState(param1);
            if(!(_loc3_ && param1))
            {
               (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
               if(_loc2_)
               {
                  (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
                  addr51:
                  if(!(_loc3_ && _loc2_))
                  {
                     addr75:
                     (§[=§.getItemByName("Button_Help") as §?q§).setComponentVisualState(param1);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr91);
                  }
                  (§[=§.getItemByName("Button_Sound") as §?q§).setComponentVisualState(param1);
               }
               addr91:
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr51);
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+]§();
            if(_loc2_ || this)
            {
               this.§function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":OFFSCREEN_X},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":0},{"alpha":1},0.25));
               addr28:
               if(_loc2_)
               {
                  §§push(this.§function§);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().onComplete = this.§?!?§;
                     §§goto(addr106);
                  }
                  §§pop().play();
               }
            }
            addr106:
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§function§);
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function §?!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            mNextState = this.§?G§();
            if(_loc2_)
            {
               addr30:
               this.§+]§();
            }
            return;
         }
         §§goto(addr30);
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
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr64);
                  }
               }
               else
               {
                  addr72:
                  if(mNextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        return §#!,§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               return §#!,§.STATE_STATUS_RUNNING;
            }
            addr64:
            return _loc2_;
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            if(!_loc2_)
            {
               this.§+]§();
               if(_loc1_)
               {
                  this.setPauseMenuButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§+$§ = null;
         var _loc7_:* = param2;
         if(!_loc9_)
         {
            §§push("HELP");
            if(_loc10_)
            {
               §§push(_loc7_);
               if(_loc10_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(0);
                     if(_loc9_ && param2)
                     {
                        addr273:
                     }
                  }
                  else if("RESTART_LEVEL" === _loc7_)
                  {
                     addr198:
                     §§push(1);
                     if(!(_loc10_ || param2))
                     {
                        §§goto(addr273);
                     }
                  }
                  else if("RESUME_LEVEL" === _loc7_)
                  {
                     §§push(2);
                     if(_loc9_)
                     {
                        §§goto(addr273);
                     }
                  }
                  else if("END_LEVEL" === _loc7_)
                  {
                     §§push(3);
                  }
                  else
                  {
                     §§push("MENU");
                     if(_loc10_)
                     {
                        addr223:
                        if(§§pop() === _loc7_)
                        {
                           §§goto(addr283);
                        }
                        else
                        {
                           §§push("TOGGLE_SOUNDS");
                           §§push(_loc7_);
                           if(_loc10_ || param3)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param3))
                                 {
                                    §§push(5);
                                    if(_loc9_ && param3)
                                    {
                                       addr278:
                                    }
                                    §§goto(addr283);
                                 }
                                 else
                                 {
                                    addr272:
                                    §§goto(addr273);
                                    §§push(6);
                                 }
                              }
                              else
                              {
                                 addr263:
                                 §§push("TOGGLE_PARTICLES");
                                 §§push(_loc7_);
                                 if(_loc10_ || param3)
                                 {
                                    addr271:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr272);
                                    }
                                    else
                                    {
                                       addr275:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc7_);
                                    }
                                    §§goto(addr283);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr278);
                                    §§push(7);
                                 }
                                 else
                                 {
                                    addr283:
                                    §§push(4);
                                    loop0:
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             continue;
                                          case 1:
                                             mNextState = this.§#! §();
                                             §,w§.§9!D§();
                                             if(_loc10_)
                                             {
                                                break loop0;
                                             }
                                             addr161:
                                             §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                             break loop0;
                                          case 2:
                                             this.closePauseMenu();
                                             break loop0;
                                          case 3:
                                             break loop0;
                                          case 4:
                                             §6I§.§%,§();
                                             mNextState = this.§"^§();
                                             break loop0;
                                          case 5:
                                             §§push(AngryBirdsFP11.§,`§());
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(!§§pop());
                                                if(!_loc9_)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      AngryBirdsFP11.§4C§(_loc4_);
                                                      if(!_loc9_)
                                                      {
                                                         §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            addr143:
                                                            break loop0;
                                                         }
                                                         break loop0;
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                }
                                                else
                                                {
                                                   addr155:
                                                   _loc5_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §[k§.§^v§(_loc5_);
                                                }
                                                §§goto(addr161);
                                             }
                                             else
                                             {
                                                addr154:
                                                §§push(!§§pop());
                                             }
                                             §§goto(addr155);
                                          case 6:
                                             §§push(§[k§.§,V§());
                                             if(!(_loc9_ && param2))
                                             {
                                                §§goto(addr154);
                                             }
                                             §§goto(addr155);
                                          case 7:
                                             AngryBirdsFP11.§,s§.§8!1§();
                                       }
                                       break;
                                    }
                                    return;
                                    §§push(8);
                                 }
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr283);
               }
               §§goto(addr223);
            }
            §§goto(addr275);
         }
         §§goto(addr198);
      }
      
      protected function §?G§() : String
      {
         return StatePlay.§?x§;
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §"^§() : String
      {
         return §5O§.§?x§;
      }
   }
}
