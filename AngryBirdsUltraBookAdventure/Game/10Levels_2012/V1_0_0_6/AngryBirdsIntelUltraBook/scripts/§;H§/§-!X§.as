package §;H§
{
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §2_§.§>-§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §-!X§ extends §,!E§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §"!s§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            OFFSCREEN_X = -250;
            do
            {
               §"!s§ = "PauseState";
            }
            while(_loc1_);
            
         }
      }
      
      protected var §<!K§:§!q§ = null;
      
      public function §-!X§(param1:Boolean = false, param2:String = "PauseState")
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §&!m§ = new §4`§(this);
            while(!(_loc2_ && this))
            {
               §&!m§.init(§ !I§.§3!a§.Views.View_LevelPause[0]);
               if(!_loc2_)
               {
                  return;
               }
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
         }
         loop0:
         do
         {
            this.openPauseMenu();
            while(true)
            {
               §^!c§.§5!Y§.background.§5!e§();
               while(!_loc2_)
               {
                  this.setInitialButtonVisibilities();
                  if(!(_loc2_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §&!m§.getItemByName("Button_Help").setVisibility(false);
            do
            {
               §&!m§.getItemByName("Button_Sound").setVisibility(false);
               do
               {
                  §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §3!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§<!K§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr74:
                     this.§<!K§.stop();
                  }
                  do
                  {
                     this.§<!K§ = null;
                  }
                  while(_loc2_ && _loc1_);
                  
                  addr59:
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr59);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(LevelManager.§%n§ != null)
            {
               while(true)
               {
                  (§&!m§.getItemByName("TextField_LevelName") as §?!x§).§,!F§.text = LevelManager.§%n§;
                  addr180:
                  while(true)
                  {
                  }
                  addr59:
                  if(_loc1_ || _loc1_)
                  {
                     return;
                  }
               }
            }
            loop2:
            while(true)
            {
               (§&!m§.getItemByName("Container_PauseMenu") as §#?§).x = OFFSCREEN_X;
               addr166:
               while(true)
               {
                  this.§3$§(false);
                  while(!_loc2_)
                  {
                     §^!c§.pause();
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr59);
                  }
                  continue loop2;
               }
            }
         }
         while(true)
         {
            §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!b§());
            loop6:
            while(true)
            {
               this.§3!1§();
               loop7:
               while(true)
               {
                  this.§<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":0},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":1},{"alpha":0},0.25));
                  loop8:
                  while(true)
                  {
                     §§push(this.§<!K§);
                     while(true)
                     {
                        §§pop().onComplete = this.§^!-§;
                        §§push(this.§<!K§);
                        addr87:
                        continue loop6;
                        if(!_loc2_)
                        {
                           §§pop().play();
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 continue loop7;
                              }
                              continue loop8;
                           }
                           continue loop6;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §^!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§3$§(true);
         }
         do
         {
            this.§3!1§();
         }
         while(_loc2_);
         
      }
      
      protected function §3$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§&!m§.getItemByName("Button_Resume") as §==§).setEnabled(param1);
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setEnabled(param1);
               while(_loc2_)
               {
                  (§&!m§.getItemByName("Button_Menu") as §==§).setEnabled(param1);
                  loop3:
                  while(!(_loc3_ && _loc2_))
                  {
                     (§&!m§.getItemByName("Button_Sound") as §==§).setEnabled(param1);
                     if(_loc2_ || this)
                     {
                        addr48:
                        if(_loc3_)
                        {
                           while(true)
                           {
                              (§&!m§.getItemByName("Button_Help") as §==§).setEnabled(param1);
                              continue loop3;
                              §§goto(addr48);
                           }
                           addr85:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §9!%§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            (§&!m§.getItemByName("Button_Resume") as §==§).setComponentVisualState(param1);
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
               while(true)
               {
                  (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
                  §§goto(addr93);
               }
            }
         }
         addr93:
         while(true)
         {
            (§&!m§.getItemByName("Button_Help") as §==§).setComponentVisualState(param1);
            do
            {
               (§&!m§.getItemByName("Button_Sound") as §==§).setComponentVisualState(param1);
            }
            while(_loc2_ && _loc3_);
            
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3!1§();
            while(true)
            {
               this.§<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":OFFSCREEN_X},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc2_))
               {
                  §§goto(addr60);
               })
               {
                  §§push(this.§<!K§);
                  while(true)
                  {
                     §§pop().onComplete = this.§6!1§;
                     continue loop1;
                     §§goto(addr60);
                  }
               }
            }
         }
         addr60:
         while(true)
         {
            §§push(this.§<!K§);
            if(_loc1_ || _loc2_)
            {
               §§pop().play();
               if(!_loc2_)
               {
                  break;
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      protected function §6!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = this.§2!Y§();
         }
         do
         {
            this.§3!1§();
         }
         while(_loc1_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                        addr88:
                        return _loc2_;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        return §,!E§.STATE_STATUS_COMPLETED;
                     }
                  }
                  return §,!E§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
         do
         {
            this.§3!1§();
            do
            {
               this.§9!%§(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>-§ = null;
         var _loc7_:* = param2;
         if(_loc9_)
         {
            §§push("HELP");
            if(_loc9_)
            {
               §§push(_loc7_);
               if(!(_loc10_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push(0);
                        if(_loc10_ && param3)
                        {
                        }
                     }
                     else
                     {
                        addr319:
                        §§push(3);
                        if(_loc10_)
                        {
                           addr413:
                        }
                     }
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(!(_loc10_ && param1))
                     {
                        §§push(_loc7_);
                        if(_loc9_ || param3)
                        {
                           addr270:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc10_ && param3))
                              {
                                 §§push(1);
                                 if(_loc9_ || param1)
                                 {
                                 }
                              }
                              else
                              {
                                 addr360:
                                 §§push(5);
                                 if(_loc10_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr418);
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(_loc9_ || param2)
                              {
                                 addr295:
                                 §§push(_loc7_);
                                 if(_loc9_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          §§push(2);
                                          if(_loc10_)
                                          {
                                             addr340:
                                          }
                                          §§goto(addr418);
                                       }
                                       else
                                       {
                                          §§goto(addr319);
                                       }
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(!_loc10_)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc10_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr319);
                                                }
                                                else
                                                {
                                                   §§goto(addr360);
                                                }
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc10_)
                                                   {
                                                      addr329:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc9_ || param2)
                                                         {
                                                            addr337:
                                                            §§push(4);
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                            else
                                                            {
                                                               addr406:
                                                               §§goto(addr418);
                                                            }
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc9_ || param2)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc10_)
                                                            {
                                                               addr352:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     §§goto(addr360);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr410:
                                                                     §§push(7);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(_loc9_ || this)
                                                                  {
                                                                  }
                                                                  addr408:
                                                                  if(§§pop() === _loc7_)
                                                                  {
                                                                     §§goto(addr410);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr418:
                                                                     loop0:
                                                                     while(true)
                                                                     {
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
                                                                                    for each(_loc6_ in §^!c§.§5!Y§.slingshot.§]!^§)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          AngryBirdsFP11.sUserProgress.§,!j§(_loc6_.name,false);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 addr83:
                                                                                 if(true)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr131:
                                                                              }
                                                                              §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                 addr165:
                                                                                 break loop0;
                                                                                 addr165:
                                                                                 addr160:
                                                                              }
                                                                              break loop0;
                                                                           case 1:
                                                                              mNextState = this.§`[§();
                                                                              §;W§.§&!5§();
                                                                              break loop0;
                                                                              addr223:
                                                                              addr216:
                                                                           case 2:
                                                                              this.closePauseMenu();
                                                                              break;
                                                                           case 3:
                                                                              break loop0;
                                                                           case 4:
                                                                              §9'§.§0D§();
                                                                              mNextState = this.§`!n§();
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              break loop0;
                                                                              addr196:
                                                                           case 5:
                                                                              addr179:
                                                                              §§push(AngryBirdsFP11.§0!b§());
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              AngryBirdsFP11.§5!C§(_loc4_);
                                                                              §§goto(addr165);
                                                                              addr180:
                                                                           case 6:
                                                                              §§push(§^!c§.§ !?§());
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr142:
                                                                                    _loc5_ = !§§pop();
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §^!c§.§9!p§(_loc5_);
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   if(!(_loc10_ && param3))
                                                                                                   {
                                                                                                      §§goto(addr131);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr223);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                             §§goto(addr160);
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr180);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr179);
                                                                                 }
                                                                                 §§goto(addr179);
                                                                              }
                                                                              §§goto(addr142);
                                                                           case 7:
                                                                              AngryBirdsFP11.§3l§.§1T§();
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr83);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr142);
                                                                                 }
                                                                              }
                                                                        }
                                                                        break;
                                                                     }
                                                                     return;
                                                                     §§push(8);
                                                                  }
                                                                  §§goto(addr418);
                                                               }
                                                               §§goto(addr410);
                                                            }
                                                            addr380:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(6);
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr418);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr410);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr408);
                                                               §§push("FULLSCREEN_BUTTON");
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§push(_loc7_);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr380);
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                   }
                                                   §§goto(addr380);
                                                }
                                                §§goto(addr408);
                                             }
                                             §§goto(addr418);
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr418);
                                 }
                                 §§goto(addr329);
                              }
                              §§goto(addr408);
                           }
                        }
                        §§goto(addr380);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr418);
               }
               §§goto(addr270);
            }
            §§goto(addr295);
         }
         §§goto(addr337);
      }
      
      protected function §2!Y§() : String
      {
         return StatePlay.§"!s§;
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §`!n§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
