package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§;!M§;
   import §]!A§.;
   
   public class §7l§ extends §1-§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            OFFSCREEN_X = -250;
         }
         do
         {
            STATE_NAME = "PauseState";
         }
         while(!_loc1_);
         
      }
      
      protected var §+;§:§"m§ = null;
      
      public function §7l§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §6w§.init(§ "A§.§4[§.Views.View_LevelPause[0]);
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activate();
            while(true)
            {
               this.openPauseMenu();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §#6§.§6!z§.background.§^!P§();
                     while(_loc2_)
                     {
                        this.§@!-§();
                        if(!_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      protected function §@!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6w§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §6w§.getItemByName("Button_Sound").setVisibility(false);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §7%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+;§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr55:
                     this.§+;§.stop();
                  }
                  do
                  {
                     this.§+;§ = null;
                  }
                  while(_loc1_ && _loc1_);
                  
                  addr45:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(LevelManager.§'!O§ != null)
            {
               loop0:
               while(true)
               {
                  (§6w§.getItemByName("TextField_LevelName") as §-"E§).§5!=§.text = LevelManager.§'!O§;
                  addr201:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(_loc1_ && _loc1_)
                     {
                        continue loop0;
                     }
                     this.§7%§();
                     loop7:
                     while(true)
                     {
                        this.§+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":0},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":1},{"alpha":0},0.25));
                        loop8:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr132:
                              if(_loc1_ && _loc2_)
                              {
                                 break;
                              }
                              §§push(this.§+;§);
                              while(true)
                              {
                                 §§pop().onComplete = this.§4R§;
                                 §§push(this.§+;§);
                                 addr79:
                                 continue loop7;
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§pop().play();
                                    if(_loc2_)
                                    {
                                       continue loop8;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           addr173:
                           while(true)
                           {
                              §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
                              continue loop6;
                           }
                        }
                        addr187:
                        while(true)
                        {
                           this.§'d§(false);
                           while(true)
                           {
                              §#6§.pause();
                              §§goto(addr173);
                              addr72:
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr132);
                        }
                     }
                  }
                  §§goto(addr201);
               }
            }
            while(true)
            {
               (§6w§.getItemByName("Container_PauseMenu") as §08§).x = OFFSCREEN_X;
               §§goto(addr201);
            }
         }
         §§goto(addr187);
      }
      
      protected function §4R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'d§(true);
            do
            {
               this.§7%§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      protected function §'d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§6w§.getItemByName("Button_Resume") as §^!D§).setEnabled(param1);
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setEnabled(param1);
            }
            addr110:
         }
         loop1:
         do
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setEnabled(param1);
            while(!_loc2_)
            {
               (§6w§.getItemByName("Button_Help") as §^!D§).setEnabled(param1);
               while(_loc3_ || _loc2_)
               {
                  (§6w§.getItemByName("Button_Sound") as §^!D§).setEnabled(param1);
                  if(_loc3_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr110);
         }
         while(_loc2_);
         
      }
      
      protected function §0l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            (§6w§.getItemByName("Button_Resume") as §^!D§).setComponentVisualState(param1);
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
               §§goto(addr112);
            }
         }
         addr112:
         while(true)
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
            do
            {
               (§6w§.getItemByName("Button_Help") as §^!D§).setComponentVisualState(param1);
               do
               {
                  (§6w§.getItemByName("Button_Sound") as §^!D§).setComponentVisualState(param1);
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc3_ || this));
            
            if(_loc3_ || this)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7%§();
            while(true)
            {
               this.§+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":OFFSCREEN_X},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":0},{"alpha":1},0.25));
               addr55:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               addr62:
               §§push(this.§+;§);
               if(!_loc2_)
               {
                  addr28:
                  §§pop().play();
                  if(!(_loc1_ || this))
                  {
                     while(!_loc2_)
                     {
                        §§goto(addr55);
                        §§goto(addr28);
                     }
                     while(true)
                     {
                        §§push(this.§+;§);
                        addr40:
                        while(true)
                        {
                           §§pop().onComplete = this.§&!%§;
                           §§goto(addr53);
                           §§goto(addr62);
                        }
                     }
                     addr53:
                     addr108:
                  }
                  return;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr108);
      }
      
      protected function §&!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            mNextState = this.getPlayState();
            do
            {
               this.§7%§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        addr84:
                        return _loc2_;
                     }
                     if(!(_loc3_ && this))
                     {
                        return §1-§.STATE_STATUS_COMPLETED;
                     }
                  }
                  return §1-§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
         while(true)
         {
            this.§7%§();
            while(!_loc1_)
            {
               this.§0l§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!_loc1_)
               {
                  return;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;!M§ = null;
         var _loc7_:* = param2;
         if(!_loc10_)
         {
            §§push("HELP");
            if(_loc9_ || this)
            {
               §§push(_loc7_);
               if(_loc9_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§push(0);
                        if(!_loc9_)
                        {
                        }
                     }
                     else
                     {
                        addr393:
                        §§push(6);
                        if(_loc10_)
                        {
                           addr403:
                        }
                     }
                     §§goto(addr408);
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(!_loc10_)
                     {
                        §§push(_loc7_);
                        if(!(_loc10_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc9_)
                              {
                                 §§push(1);
                                 if(_loc10_)
                                 {
                                 }
                                 §§goto(addr408);
                              }
                              else
                              {
                                 §§goto(addr393);
                              }
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(!_loc10_)
                              {
                                 §§push(_loc7_);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(2);
                                          if(_loc10_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr360:
                                          §§push(5);
                                          if(!_loc9_)
                                          {
                                          }
                                       }
                                       §§goto(addr408);
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(_loc9_)
                                       {
                                          addr298:
                                          §§push(_loc7_);
                                          if(_loc9_ || this)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   addr314:
                                                   §§push(3);
                                                   if(!_loc9_)
                                                   {
                                                   }
                                                   §§goto(addr408);
                                                }
                                                else
                                                {
                                                   §§goto(addr360);
                                                }
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(_loc9_ || param3)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc10_)
                                                   {
                                                      addr329:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(4);
                                                            if(_loc10_ && param1)
                                                            {
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr360);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc9_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc9_ || param3)
                                                            {
                                                               addr352:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     §§goto(addr360);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr393);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     addr382:
                                                                     §§push(_loc7_);
                                                                     if(_loc9_ || param3)
                                                                     {
                                                                        addr390:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§goto(addr393);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr399:
                                                                           if("FULLSCREEN_BUTTON" !== _loc7_)
                                                                           {
                                                                              addr408:
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       this.closePauseMenu();
                                                                                       if(!(_loc9_ || param1))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       addr77:
                                                                                       continue;
                                                                                    case 1:
                                                                                       mNextState = this.getLevelLoadState();
                                                                                       §!!7§.§-V§();
                                                                                       addr226:
                                                                                       break loop0;
                                                                                       addr226:
                                                                                       addr233:
                                                                                    case 2:
                                                                                       this.closePauseMenu();
                                                                                       break;
                                                                                    case 3:
                                                                                       break loop0;
                                                                                    case 4:
                                                                                       §>!E§.§&!^§();
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          mNextState = this.getLevelSelectionState();
                                                                                          addr184:
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          §§goto(addr226);
                                                                                       }
                                                                                       break loop0;
                                                                                    case 5:
                                                                                       addr177:
                                                                                       _loc4_ = !AngryBirdsFP11.§3>§();
                                                                                       AngryBirdsFP11.§@i§(_loc4_);
                                                                                       if(_loc9_ || param3)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                          addr156:
                                                                                          break loop0;
                                                                                          addr156:
                                                                                       }
                                                                                       break loop0;
                                                                                       addr176:
                                                                                       addr178:
                                                                                    case 6:
                                                                                       §§push(§#6§.§&9§());
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             addr141:
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                §#6§.§'h§(_loc5_);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         addr97:
                                                                                                         §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr156);
                                                                                                   }
                                                                                                }
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr184);
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr176);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr177);
                                                                                    case 7:
                                                                                       AngryBirdsFP11.§@<§.§'!+§();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                §§goto(addr97);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr178);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr141);
                                                                                          }
                                                                                          §§goto(addr156);
                                                                                       }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr408);
                                                                        §§goto(addr408);
                                                                     }
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr382);
                                             }
                                             §§goto(addr408);
                                          }
                                          §§goto(addr352);
                                       }
                                    }
                                    §§goto(addr408);
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr399);
                           }
                           §§goto(addr408);
                        }
                        §§goto(addr352);
                     }
                     §§goto(addr382);
                  }
               }
               §§goto(addr329);
            }
            §§goto(addr298);
         }
         §§goto(addr314);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
