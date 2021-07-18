package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§ !X§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §4!Q§ extends §+d§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            OFFSCREEN_X = -250;
         }
         do
         {
            STATE_NAME = "PauseState";
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected var §-"L§:§6!K§ = null;
      
      public function §4!Q§(param1:Boolean = false, param2:String = "PauseState")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
         do
         {
            §2"@§ = new §`_§(this);
            do
            {
               §2"@§.init(§ "<§.§%I§.Views.View_LevelPause[0]);
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(true)
            {
               this.openPauseMenu();
               addr62:
               if(_loc2_ || _loc1_)
               {
                  this.§#!'§();
                  addr69:
                  if(!_loc2_)
                  {
                     while(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr62);
                        §§goto(addr69);
                     }
                     while(true)
                     {
                        §?l§.§'h§.background.§!!K§();
                        §§goto(addr55);
                     }
                     addr55:
                     addr73:
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      protected function §#!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §2"@§.getItemByName("Button_Help").setVisibility(false);
         }
         while(true)
         {
            §2"@§.getItemByName("Button_Sound").setVisibility(false);
            while(_loc2_ || _loc2_)
            {
               §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §0`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§-"L§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr59:
                     this.§-"L§.stop();
                     do
                     {
                        this.§-"L§ = null;
                     }
                     while(!_loc1_);
                     
                     addr60:
                  }
                  §§goto(addr60);
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(LevelManager.§ T§ != null)
            {
               while(true)
               {
                  (§2"@§.getItemByName("TextField_LevelName") as §4"9§).§-" §.text = LevelManager.§ T§;
                  addr180:
                  while(true)
                  {
                  }
                  loop6:
                  while(_loc1_ || _loc2_)
                  {
                     this.§-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":0},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":1},{"alpha":0},0.25));
                     loop7:
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§push(this.§-"L§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§!"Y§;
                                    addr52:
                                    while(_loc1_)
                                    {
                                       continue loop8;
                                    }
                                    continue loop6;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§&"$§(false);
                                    addr157:
                                    while(true)
                                    {
                                       §?l§.pause();
                                    }
                                 }
                                 addr166:
                              }
                           }
                           while(true)
                           {
                              §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§6!,§());
                              break loop7;
                           }
                        }
                        break;
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           return;
                        }
                        §§goto(addr157);
                     }
                     while(_loc1_)
                     {
                        this.§0`§();
                        continue loop6;
                        §§goto(addr100);
                     }
                     addr100:
                     §§goto(addr180);
                  }
               }
            }
            while(true)
            {
               (§2"@§.getItemByName("Container_PauseMenu") as §0!Y§).x = OFFSCREEN_X;
               §§goto(addr166);
               §§goto(addr180);
            }
         }
         §§goto(addr180);
      }
      
      protected function §!"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&"$§(true);
            do
            {
               this.§0`§();
            }
            while(_loc1_);
            
         }
      }
      
      protected function §&"$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§2"@§.getItemByName("Button_Resume") as §7"0§).setEnabled(param1);
         }
         loop0:
         while(true)
         {
            (§2"@§.getItemByName("Button_Replay") as §7"0§).setEnabled(param1);
            while(true)
            {
               (§2"@§.getItemByName("Button_Menu") as §7"0§).setEnabled(param1);
               addr74:
               while(_loc3_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      protected function §1!i§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§2"@§.getItemByName("Button_Resume") as §7"0§).setComponentVisualState(param1);
            while(true)
            {
               (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
               addr85:
               if(_loc2_ || _loc2_)
               {
                  (§2"@§.getItemByName("Button_Help") as §7"0§).setComponentVisualState(param1);
                  do
                  {
                     (§2"@§.getItemByName("Button_Sound") as §7"0§).setComponentVisualState(param1);
                  }
                  while(!_loc2_);
                  
                  addr92:
                  if(_loc3_ && _loc2_)
                  {
                     while(_loc2_)
                     {
                        §§goto(addr85);
                        §§goto(addr92);
                     }
                     while(true)
                     {
                        (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
                        §§goto(addr83);
                     }
                     addr83:
                     addr101:
                  }
                  return;
               }
            }
         }
         §§goto(addr101);
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§0`§();
            while(true)
            {
               this.§-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":OFFSCREEN_X},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(_loc2_ || this)
               {
                  §§push(this.§-"L§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§,"X§;
                     addr64:
                     while(!_loc1_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §,"X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            mNextState = this.getPlayState();
            do
            {
               this.§0`§();
            }
            while(_loc2_ && _loc1_);
            
         }
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
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr83:
                     }
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr71);
                     }
                     continue;
                     return _loc2_;
                  }
                  return §+d§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr83);
         }
         addr71:
         return §+d§.STATE_STATUS_COMPLETED;
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
               this.§0`§();
               while(_loc1_ || _loc1_)
               {
                  this.§1!i§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc2_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§ !X§ = null;
         var _loc7_:* = param2;
         if(_loc9_)
         {
            §§push("HELP");
            if(_loc9_ || param3)
            {
               §§push(_loc7_);
               if(_loc9_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_)
                     {
                        §§push(0);
                        if(!_loc9_)
                        {
                           addr370:
                        }
                     }
                     else
                     {
                        addr430:
                        §§push(7);
                        if(!(_loc10_ && param3))
                        {
                           addr438:
                        }
                     }
                     §§goto(addr443);
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(_loc9_)
                     {
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc10_ && this))
                              {
                                 §§push(1);
                                 if(_loc10_ && param3)
                                 {
                                    addr426:
                                 }
                              }
                              else
                              {
                                 addr390:
                                 §§push(5);
                                 if(!_loc10_)
                                 {
                                    addr393:
                                 }
                              }
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(_loc9_)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          §§push(2);
                                          if(_loc9_)
                                          {
                                             §§goto(addr443);
                                          }
                                          else
                                          {
                                             §§goto(addr393);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr390);
                                       }
                                       §§goto(addr443);
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(_loc9_)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc10_)
                                          {
                                             addr326:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(3);
                                                   if(_loc10_ && param2)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr423:
                                                   §§push(6);
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr426);
                                                   }
                                                }
                                                §§goto(addr443);
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(_loc9_)
                                                {
                                                   addr346:
                                                   §§push(_loc7_);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      addr354:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(4);
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§goto(addr370);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr393);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr390);
                                                         }
                                                         §§goto(addr443);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc9_ || param3)
                                                         {
                                                            addr379:
                                                            §§push(_loc7_);
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               addr387:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr390);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr423);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§goto(addr423);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr430);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                     addr429:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr430);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr443:
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 this.closePauseMenu();
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              case 1:
                                                                                 mNextState = this.getLevelLoadState();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §-!v§.§^!$§();
                                                                                    break loop0;
                                                                                    addr239:
                                                                                 }
                                                                                 break loop0;
                                                                              case 2:
                                                                                 this.closePauseMenu();
                                                                                 break;
                                                                              case 3:
                                                                                 break loop0;
                                                                              case 4:
                                                                                 §@"M§.§3!s§();
                                                                                 mNextState = this.getLevelSelectionState();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 break loop0;
                                                                                 addr229:
                                                                              case 5:
                                                                                 addr200:
                                                                                 _loc4_ = !AngryBirdsFP11.§6!,§();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    AngryBirdsFP11.§]"H§(_loc4_);
                                                                                    §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                    break loop0;
                                                                                    addr193:
                                                                                    addr188:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 break;
                                                                                 addr199:
                                                                              case 6:
                                                                                 §§push(§?l§.§'!R§());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       addr170:
                                                                                       §§push(!§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §?l§.§%"7§(_loc5_);
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr114:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr229);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr200);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr199);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr170);
                                                                              case 7:
                                                                                 AngryBirdsFP11.§>m§.§=-§();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr114);
                                                                                          }
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    §§goto(addr121);
                                                                                 }
                                                                           }
                                                                           break;
                                                                        }
                                                                        return;
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         §§push(_loc7_);
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                   §§goto(addr429);
                                                }
                                                §§goto(addr379);
                                             }
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr379);
                                    }
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr346);
                           }
                           §§goto(addr443);
                        }
                        §§goto(addr387);
                     }
                     §§goto(addr379);
                  }
               }
               §§goto(addr326);
            }
            §§goto(addr379);
         }
         §§goto(addr430);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
