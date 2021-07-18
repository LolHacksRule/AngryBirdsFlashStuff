package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §2!s§.§>!D§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!X§.§7j§;
   import §@!i§.§@!n§;
   import §]!q§.§=;§;
   import §false§.§0!4§;
   
   public class §>P§ extends §;!!§
   {
      
      private static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseStateBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            OFFSCREEN_X = -250;
            if(_loc1_)
            {
               STATE_NAME = "PauseStateBS";
            }
         }
      }
      
      private var §%!&§:§=Y§ = null;
      
      private var §&!E§:§0!4§;
      
      public function §>P§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.STATE_NAME;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            if(!_loc2_)
            {
               §§goto(addr32);
            }
            §§goto(addr39);
         }
         addr32:
         §+!$§ = new §2U§(this);
         if(!_loc2_)
         {
            addr39:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelPauseBS[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            if(_loc1_)
            {
               §'!V§.§1!2§.background.§8!n§();
               if(!(_loc2_ && this))
               {
                  addr48:
                  this.openPauseMenu();
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      private function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§=q§.§+!T§ != null)
         {
            if(!_loc2_)
            {
               (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §=q§.§+!T§;
               addr31:
               (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = OFFSCREEN_X;
               if(!_loc2_)
               {
                  addr40:
                  this.setPauseMenuButtonsEnabled(false);
                  if(_loc1_ || _loc1_)
                  {
                     §'!V§.pause();
                     if(_loc1_ || this)
                     {
                        §7j§.§&t§.§=!A§ = true;
                        addr63:
                        §§push(this.§%!&§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop() != null)
                           {
                              if(_loc1_ || this)
                              {
                                 §§push(this.§%!&§);
                                 if(!_loc2_)
                                 {
                                    §§pop().stop();
                                    if(_loc1_)
                                    {
                                       this.§%!&§ = §>!D§.§+a§(§>!D§.§-8§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§>!D§.§-8§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25));
                                       §§goto(addr98);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr162);
                           }
                           addr98:
                           if(_loc1_ || this)
                           {
                              addr146:
                              §§push(this.§%!&§);
                              if(!_loc2_)
                              {
                                 addr150:
                                 §§pop().addEventListener(§=;§.COMPLETE,this.§[!e§);
                                 §§goto(addr165);
                              }
                              §§pop().play();
                              §§goto(addr165);
                           }
                           addr165:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr162:
                              §§push(this.§%!&§);
                           }
                           return;
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr63);
               }
               §§goto(addr146);
            }
            §§goto(addr40);
         }
         §§goto(addr31);
      }
      
      private function §[!e§(param1:§=;§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!&§.removeEventListener(§=;§.COMPLETE,this.§[!e§);
            if(!(_loc3_ && param1))
            {
               addr42:
               this.setPauseMenuButtonsEnabled(true);
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
            if(_loc2_ || _loc2_)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
               if(!(_loc3_ && param1))
               {
                  addr71:
                  (§+!$§.getItemByName("Button_Help") as §#!'§).setEnabled(param1);
                  if(_loc2_ || this)
                  {
                     addr85:
                     (§+!$§.getItemByName("Button_Sound") as §#!'§).setEnabled(param1);
                  }
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr85);
      }
      
      private function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§%!&§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr42:
                     §§push(this.§%!&§);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().stop();
                        if(_loc2_)
                        {
                           this.§%!&§ = §>!D§.§+a§(§>!D§.§-8§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§>!D§.§-8§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25));
                           §§goto(addr64);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr116);
                  }
               }
               addr64:
               if(!(_loc1_ && this))
               {
                  addr112:
                  §§push(this.§%!&§);
                  if(_loc2_)
                  {
                     addr116:
                     §§pop().addEventListener(§=;§.COMPLETE,this.§7!T§);
                     §§goto(addr131);
                  }
                  §§pop().play();
               }
               addr131:
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§%!&§);
               }
               return;
            }
            §§goto(addr116);
         }
         §§goto(addr42);
      }
      
      protected function §7!T§(param1:§=;§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!&§.removeEventListener(§=;§.COMPLETE,this.§7!T§);
            if(_loc3_)
            {
               addr28:
               mNextState = this.getPlayState();
            }
            return;
         }
         §§goto(addr28);
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
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr74);
                  }
               }
               return §;!!§.STATE_STATUS_RUNNING;
            }
            addr55:
            return _loc2_;
         }
         addr74:
         return §;!!§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            §7j§.§&t§.§=!A§ = false;
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr50);
            }
            §§goto(addr75);
         }
         addr50:
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(!(_loc1_ && _loc2_))
         {
            addr75:
            (§+!$§.getItemByName("Button_Help") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_ || _loc2_)
            {
               (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         §§push("HELP");
         if(!(_loc7_ && param2))
         {
            §§push(_loc6_);
            if(!_loc7_)
            {
               if(§§pop() === §§pop())
               {
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(!(_loc8_ || param2))
                     {
                        addr234:
                     }
                  }
                  else
                  {
                     addr224:
                     §§push(1);
                  }
               }
               else
               {
                  §§push("HELP_CLOSE");
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr224);
                     }
                     else
                     {
                        §§push("RESTART_LEVEL");
                        if(!_loc7_)
                        {
                           §§push(_loc6_);
                           if(!_loc7_)
                           {
                              addr232:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr234);
                                 §§push(2);
                              }
                              else
                              {
                                 §§push("RESUME_LEVEL");
                                 §§push(_loc6_);
                                 if(_loc8_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§push(3);
                                       if(!(_loc8_ || this))
                                       {
                                          addr296:
                                       }
                                       §§goto(addr306);
                                    }
                                    else
                                    {
                                       §§push("TOGGLE_SOUNDS");
                                       if(_loc8_)
                                       {
                                          addr258:
                                          if(§§pop() === _loc6_)
                                          {
                                             addr306:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§&!E§ = new §0!4§(§+!$§,§=!Z§.§;K§.Views.PopupView_PlayHelp[0]);
                                                   §§push(this.§&!E§);
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§pop().open();
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   addr50:
                                                   §§pop().close();
                                                   break;
                                                case 1:
                                                   §§goto(addr50);
                                                case 2:
                                                   mNextState = §@!n§.STATE_NAME;
                                                   §@!n§.§!=§(this.getPlayState());
                                                   break;
                                                case 3:
                                                   this.closePauseMenu();
                                                   break;
                                                case 4:
                                                   §§push(this.§&!E§);
                                                   §§push(AngryBirdsFP11.§;!f§());
                                                   if(_loc8_ || param3)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            AngryBirdsFP11.§;z§(_loc4_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc7_ && param2)
                                                               {
                                                                  addr154:
                                                                  _loc5_ = !§§pop();
                                                                  addr153:
                                                                  if(!_loc7_)
                                                                  {
                                                                     §'!V§.§6!Y§(_loc5_);
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        addr191:
                                                                        break;
                                                                     }
                                                                  }
                                                                  §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                  break;
                                                               }
                                                               addr100:
                                                               if(§§pop())
                                                               {
                                                                  addr101:
                                                                  (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     addr132:
                                                                     break;
                                                                  }
                                                                  addr183:
                                                                  mNextState = §6+§.STATE_NAME;
                                                                  if(!_loc7_)
                                                                  {
                                                                     §+!§.§'!Q§();
                                                                  }
                                                                  break;
                                                               }
                                                               (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentState(§<f§.§`O§);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§goto(addr132);
                                                               }
                                                               break;
                                                               §§goto(addr132);
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr132);
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   §§goto(addr153);
                                                case 5:
                                                   §§push(§'!V§.§'V§());
                                                   if(_loc8_ || this)
                                                   {
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr154);
                                                case 6:
                                                   AngryBirdsFP11.§`!d§.§!5§();
                                                   break;
                                                case 7:
                                                   §-!D§.§?5§("onLevelMenuOpened");
                                                   §§goto(addr183);
                                             }
                                             return;
                                             §§push(4);
                                          }
                                          else
                                          {
                                             §§push("TOGGLE_PARTICLES");
                                             if(_loc8_ || param2)
                                             {
                                                addr279:
                                                if(§§pop() === _loc6_)
                                                {
                                                   §§push(5);
                                                   if(!_loc8_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("TOGGLE_FULLSCREEN");
                                                   §§push(_loc6_);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr294:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr296);
                                                         §§push(6);
                                                      }
                                                      else
                                                      {
                                                         addr298:
                                                         §§push("MENU");
                                                         §§push(_loc6_);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr306);
                                                      §§push(7);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr306);
                                                      §§push(8);
                                                   }
                                                }
                                                §§goto(addr306);
                                             }
                                          }
                                          §§goto(addr306);
                                       }
                                       §§goto(addr298);
                                    }
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr306);
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr258);
                     }
                  }
                  §§goto(addr294);
               }
               §§goto(addr306);
            }
            §§goto(addr232);
         }
         §§goto(addr279);
      }
   }
}
