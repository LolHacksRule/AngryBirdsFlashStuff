package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-08C§ extends §_-nG§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §_-pk§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            OFFSCREEN_X = -250;
            do
            {
               §_-pk§ = "PauseState";
            }
            while(_loc1_ && §_-08C§);
            
         }
      }
      
      protected var §_-ox§:§_-dd§ = null;
      
      public function §_-08C§(param1:Boolean = false, param2:String = "PauseState")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §_-s0§ = new §_-5q§(this);
            do
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelPause[0]);
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
         loop0:
         do
         {
            this.openPauseMenu();
            while(true)
            {
               § in§.§_-Dc§.background.§_-Ye§();
               while(_loc1_)
               {
                  this.setInitialButtonVisibilities();
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §_-s0§.getItemByName("Button_Help").setVisibility(false);
            do
            {
               §_-s0§.getItemByName("Button_Sound").setVisibility(false);
               do
               {
                  §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private function §_-8V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-ox§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr49:
                     this.§_-ox§.stop();
                  }
                  do
                  {
                     this.§_-ox§ = null;
                  }
                  while(_loc2_);
                  
                  addr39:
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr39);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(LevelManager.§_-HM§ != null)
            {
               while(true)
               {
                  (§_-s0§.getItemByName("TextField_LevelName") as §_-0Eo§).§_-ab§.text = LevelManager.§_-HM§;
                  addr176:
                  while(true)
                  {
                  }
               }
               addr167:
            }
            loop1:
            while(true)
            {
               (§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§).x = OFFSCREEN_X;
               loop2:
               while(true)
               {
                  this.§_-zH§(false);
                  loop3:
                  while(true)
                  {
                     § in§.pause();
                     while(true)
                     {
                        §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§_-Lz§());
                        continue loop3;
                        addr43:
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop2;
                        }
                        addr57:
                        §§push(this.§_-ox§);
                        if(_loc2_)
                        {
                           §§pop().play();
                           if(!_loc2_)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc1_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§push(this.§_-ox§);
                                          while(true)
                                          {
                                             §§pop().onComplete = this.§_-09M§;
                                             continue loop9;
                                             §§goto(addr57);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":0},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":1},{"alpha":0},0.25));
                                             continue loop7;
                                          }
                                          addr116:
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr43);
                                 §§goto(addr38);
                              }
                              continue;
                           }
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                        §§goto(addr38);
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      protected function §_-09M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-zH§(true);
         }
         do
         {
            this.§_-8V§();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected function §_-zH§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§_-s0§.getItemByName("Button_Resume") as §_-Mu§).setEnabled(param1);
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setEnabled(param1);
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setEnabled(param1);
                  do
                  {
                     (§_-s0§.getItemByName("Button_Help") as §_-Mu§).setEnabled(param1);
                     while(_loc3_ || this)
                     {
                        (§_-s0§.getItemByName("Button_Sound") as §_-Mu§).setEnabled(param1);
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     continue loop1;
                  }
                  while(!(_loc3_ || this));
                  
                  return;
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §_-Lw§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§_-s0§.getItemByName("Button_Resume") as §_-Mu§).setComponentVisualState(param1);
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
            }
            addr109:
         }
         loop1:
         while(true)
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
            while(!(_loc3_ && this))
            {
               (§_-s0§.getItemByName("Button_Help") as §_-Mu§).setComponentVisualState(param1);
               while(_loc2_ || _loc3_)
               {
                  (§_-s0§.getItemByName("Button_Sound") as §_-Mu§).setComponentVisualState(param1);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break loop1;
                  }
                  §§goto(addr109);
               }
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-8V§();
            while(true)
            {
               this.§_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":OFFSCREEN_X},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(true)
               {
                  §§push(this.§_-ox§);
                  addr58:
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§_-cl§;
                     addr61:
                     while(_loc2_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               addr42:
               if(_loc1_)
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            §§push(this.§_-ox§);
            if(!_loc1_)
            {
               §§pop().play();
               if(_loc2_ || this)
               {
                  §§goto(addr42);
               }
               §§goto(addr61);
            }
            §§goto(addr58);
         }
         §§goto(addr54);
      }
      
      protected function §_-cl§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.§_-012§();
         }
         do
         {
            this.§_-8V§();
         }
         while(_loc1_ && this);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ || _loc2_))
                     {
                        if(!(_loc3_ && param1))
                        {
                           addr87:
                           break;
                        }
                        addr94:
                        return _loc2_;
                     }
                     if(_loc4_)
                     {
                        return §_-nG§.STATE_STATUS_COMPLETED;
                     }
                  }
                  return §_-nG§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr94);
         }
         §§goto(addr87);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               this.§_-8V§();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§_-Lw§(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-pR§ = null;
         var _loc7_:* = param2;
         if(_loc9_ || param3)
         {
            §§push("HELP");
            if(!(_loc10_ && param3))
            {
               §§push(_loc7_);
               if(!_loc10_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc10_ && param1))
                     {
                        §§push(0);
                        if(_loc10_ && param1)
                        {
                           addr403:
                        }
                     }
                     else
                     {
                        addr450:
                        §§push(7);
                        if(_loc9_ || this)
                        {
                        }
                     }
                     §§goto(addr463);
                  }
                  else
                  {
                     §§push("RESTART_LEVEL");
                     if(_loc9_ || this)
                     {
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§push(1);
                                 if(_loc10_ && param1)
                                 {
                                 }
                                 §§goto(addr463);
                              }
                              else
                              {
                                 §§goto(addr339);
                              }
                           }
                           else
                           {
                              §§push("RESUME_LEVEL");
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          §§push(2);
                                          if(_loc10_ && param1)
                                          {
                                             §§goto(addr375);
                                          }
                                       }
                                       else
                                       {
                                          addr400:
                                          §§push(5);
                                          if(!_loc10_)
                                          {
                                             §§goto(addr403);
                                          }
                                          else
                                          {
                                             addr446:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("END_LEVEL");
                                       if(!_loc10_)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc10_ && this))
                                          {
                                             addr331:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   addr339:
                                                   §§push(3);
                                                   if(_loc10_ && param1)
                                                   {
                                                      addr375:
                                                   }
                                                }
                                                else
                                                {
                                                   addr438:
                                                   §§push(6);
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§goto(addr446);
                                                   }
                                                }
                                                §§goto(addr463);
                                             }
                                             else
                                             {
                                                §§push("MENU");
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(4);
                                                            if(_loc9_ || this)
                                                            {
                                                               §§goto(addr375);
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr438);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc9_ || param2)
                                                         {
                                                            addr384:
                                                            §§push(_loc7_);
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§goto(addr400);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr438);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr412:
                                                                     §§push(_loc7_);
                                                                     if(_loc9_ || param3)
                                                                     {
                                                                        addr420:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              §§goto(addr438);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr450);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr448:
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           §§push(_loc7_);
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               §§goto(addr463);
                                                            }
                                                         }
                                                         §§goto(addr448);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr450);
                                                   }
                                                   else
                                                   {
                                                      addr463:
                                                      loop0:
                                                      while(true)
                                                      {
                                                         loop6:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               this.closePauseMenu();
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     § in§.§_-bN§(_loc5_);
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!(_loc9_ || param3))
                                                                              {
                                                                                 §_-MG§.§_-0Eg§();
                                                                                 break;
                                                                                 addr213:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          addr180:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             mNextState = this.§_-tz§();
                                                                                             break loop6;
                                                                                             addr196:
                                                                                          }
                                                                                          AngryBirdsFP11.§_-mv§(_loc4_);
                                                                                       }
                                                                                       §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                                                       break loop0;
                                                                                       addr165:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr155:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr165);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               }
                                                               continue;
                                                            case 1:
                                                               mNextState = this.§_-03M§();
                                                               §§goto(addr213);
                                                            case 2:
                                                               this.closePauseMenu();
                                                               break loop0;
                                                               addr202:
                                                            case 3:
                                                               break loop0;
                                                            case 4:
                                                               §_-pX§.§_-j4§();
                                                               §§goto(addr196);
                                                            case 5:
                                                               addr179:
                                                               §§push(AngryBirdsFP11.§_-Lz§());
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               _loc4_ = §§pop();
                                                               §§goto(addr180);
                                                            case 6:
                                                               §§push(§ in§.§_-0-I§());
                                                               if(_loc9_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  §§goto(addr155);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr179);
                                                               }
                                                            case 7:
                                                               AngryBirdsFP11.§_-07§.§_-0De§();
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr202);
                                                                  }
                                                               }
                                                         }
                                                         break;
                                                      }
                                                      return;
                                                      §§push(8);
                                                   }
                                                   §§goto(addr463);
                                                }
                                                §§goto(addr448);
                                             }
                                          }
                                          §§goto(addr420);
                                       }
                                       §§goto(addr384);
                                    }
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr412);
                           }
                           §§goto(addr463);
                        }
                        §§goto(addr331);
                     }
                     §§goto(addr448);
                  }
               }
               §§goto(addr420);
            }
            §§goto(addr412);
         }
         §§goto(addr339);
      }
      
      protected function §_-012§() : String
      {
         return StatePlay.§_-pk§;
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-tz§() : String
      {
         return §_-UO§.§_-pk§;
      }
   }
}
