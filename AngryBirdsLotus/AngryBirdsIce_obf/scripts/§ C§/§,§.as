package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §[x§.§,1§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   
   public class §,§ extends §-§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?B§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            OFFSCREEN_X = -250;
         }
         do
         {
            §?B§ = "PauseState";
         }
         while(_loc1_);
         
      }
      
      protected var §,w§:§?A§ = null;
      
      public function §,§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         while(true)
         {
            §,R§ = new §#H§(this);
            while(_loc2_ || this)
            {
               §,R§.init(§set §.§&!1§.Views.View_LevelPause[0]);
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            this.openPauseMenu();
            while(true)
            {
               §[o§.§='§.background.§1!>§();
               while(_loc2_ || _loc1_)
               {
                  if(_loc2_)
                  {
                     this.setInitialButtonVisibilities();
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,R§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §,R§.getItemByName("Button_Sound").setVisibility(false);
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §]W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§,w§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr70:
                     this.§,w§.stop();
                  }
                  do
                  {
                     this.§,w§ = null;
                  }
                  while(!(_loc2_ || this));
                  
                  addr55:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr55);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§0$§.§[C§ != null)
            {
               (§,R§.getItemByName("TextField_LevelName") as §'4§).§8?§.text = §0$§.§[C§;
               while(true)
               {
                  loop4:
                  while(_loc1_ || _loc1_)
                  {
                     §§push(this.§,w§);
                     loop5:
                     while(true)
                     {
                        §§pop().onComplete = this.§%x§;
                        addr50:
                        while(!_loc2_)
                        {
                           continue loop5;
                        }
                        continue loop4;
                     }
                  }
               }
               addr160:
            }
            while(true)
            {
               (§,R§.getItemByName("Container_PauseMenu") as §&F§).x = OFFSCREEN_X;
               §§goto(addr160);
            }
         }
         while(true)
         {
            this.setPauseMenuButtonsEnabled(false);
            §[o§.pause();
            §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
            §§goto(addr118);
         }
      }
      
      protected function §%x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.setPauseMenuButtonsEnabled(true);
            do
            {
               this.§]W§();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§,R§.getItemByName("Button_Resume") as §^P§).setEnabled(param1);
         }
         loop0:
         do
         {
            (§,R§.getItemByName("Button_Replay") as §^P§).setEnabled(param1);
            while(true)
            {
               (§,R§.getItemByName("Button_Menu") as §^P§).setEnabled(param1);
               while(!(_loc3_ && _loc2_))
               {
                  (§,R§.getItemByName("Button_Help") as §^P§).setEnabled(param1);
                  do
                  {
                     (§,R§.getItemByName("Button_Sound") as §^P§).setEnabled(param1);
                  }
                  while(!(_loc2_ || _loc3_));
                  
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_ && _loc2_);
         
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§,R§.getItemByName("Button_Resume") as §^P§).setComponentVisualState(param1);
         }
         loop0:
         while(true)
         {
            (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
            loop1:
            while(true)
            {
               (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
               loop2:
               do
               {
                  (§,R§.getItemByName("Button_Help") as §^P§).setComponentVisualState(param1);
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        (§,R§.getItemByName("Button_Sound") as §^P§).setComponentVisualState(param1);
                        if(_loc2_ || this)
                        {
                           continue loop2;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               while(!_loc2_);
               
               return;
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§]W§();
            do
            {
               this.§,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":OFFSCREEN_X},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               do
               {
                  §§push(this.§,w§);
                  while(true)
                  {
                     §§pop().onComplete = this.§2g§;
                     while(true)
                     {
                        §§push(this.§,w§);
                        if(!(_loc1_ || this))
                        {
                           break;
                        }
                        §§pop().play();
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      protected function §2g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = this.§<!$§();
            do
            {
               this.§]W§();
            }
            while(!(_loc1_ || _loc2_));
            
         }
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() != §-§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     while(true)
                     {
                        addr67:
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr41);
                     }
                     addr90:
                  }
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        return §-§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr67);
                  }
                  break;
                  §§goto(addr90);
               }
               addr41:
               return §-§.STATE_STATUS_RUNNING;
            }
            §§goto(addr89);
         }
         addr89:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
         }
         while(true)
         {
            this.§]W§();
            while(!_loc2_)
            {
               this.setPauseMenuButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§,1§ = null;
         var _loc7_:* = param2;
         if(!(_loc9_ && param1))
         {
            §§push("HELP");
            if(!_loc9_)
            {
               §§push(_loc7_);
               if(!(_loc9_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(0);
                        if(_loc9_)
                        {
                           addr253:
                        }
                     }
                     else
                     {
                        addr266:
                        §§push(2);
                        if(_loc10_ || param2)
                        {
                           addr274:
                        }
                        else
                        {
                           addr293:
                        }
                     }
                  }
                  else
                  {
                     addr234:
                     §§push("RESTART_LEVEL");
                     §§push(_loc7_);
                     if(!(_loc9_ && param1))
                     {
                        addr242:
                        if(§§pop() === §§pop())
                        {
                           if(_loc10_)
                           {
                              §§push(1);
                              if(_loc10_ || param2)
                              {
                                 §§goto(addr253);
                              }
                              else
                              {
                                 §§goto(addr274);
                              }
                           }
                           else
                           {
                              addr328:
                              addr341:
                              loop0:
                              while(true)
                              {
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.closePauseMenu();
                                       if(_loc9_ && this)
                                       {
                                          break loop0;
                                       }
                                       continue;
                                       addr98:
                                       break;
                                    case 1:
                                       mNextState = this.§`^§();
                                       §7!6§.§<!G§();
                                       break loop0;
                                       addr195:
                                       addr202:
                                    case 2:
                                       this.closePauseMenu();
                                       break;
                                    case 3:
                                       break loop0;
                                    case 4:
                                       §@6§.§&t§();
                                       if(_loc10_ || param1)
                                       {
                                          mNextState = this.§[9§();
                                          break loop0;
                                          addr170:
                                       }
                                       else
                                       {
                                          §§goto(addr195);
                                       }
                                       break;
                                    case 5:
                                       addr153:
                                       _loc4_ = !AngryBirdsFP11.§;9§();
                                       AngryBirdsFP11.§-!9§(_loc4_);
                                       if(!_loc9_)
                                       {
                                          §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                          if(!_loc9_)
                                          {
                                             break loop0;
                                          }
                                          break;
                                       }
                                       §§goto(addr170);
                                       break;
                                       addr152:
                                       addr154:
                                    case 6:
                                       §§push(§[o§.§%!!§());
                                       if(_loc10_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(_loc10_ || param1)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc5_ = §§pop();
                                             do
                                             {
                                                §[o§.§#i§(_loc5_);
                                             }
                                             while(_loc9_ && param3);
                                             
                                             addr89:
                                             §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                             if(!_loc9_)
                                             {
                                                §§goto(addr98);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr152);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr153);
                                    case 7:
                                       AngryBirdsFP11.§?L§.§,!!§();
                                       if(!(_loc9_ && param3))
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr89);
                                       }
                                 }
                                 break;
                              }
                              return;
                              §§push(6);
                           }
                           §§goto(addr341);
                        }
                        else
                        {
                           §§push("RESUME_LEVEL");
                           if(!(_loc9_ && param3))
                           {
                              §§push(_loc7_);
                              if(_loc10_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr266);
                                 }
                                 else if("END_LEVEL" === _loc7_)
                                 {
                                    if(_loc10_ || param3)
                                    {
                                       §§push(3);
                                       if(_loc10_ || param1)
                                       {
                                          §§goto(addr293);
                                       }
                                       §§goto(addr341);
                                    }
                                    else
                                    {
                                       addr301:
                                       §§goto(addr341);
                                       §§push(4);
                                    }
                                    §§goto(addr341);
                                 }
                                 else
                                 {
                                    §§push("MENU");
                                    if(_loc10_)
                                    {
                                       addr298:
                                       if(§§pop() === _loc7_)
                                       {
                                          if(_loc10_)
                                          {
                                             §§goto(addr301);
                                          }
                                       }
                                       else if("TOGGLE_SOUNDS" !== _loc7_)
                                       {
                                          addr319:
                                          §§push("TOGGLE_PARTICLES");
                                          §§push(_loc7_);
                                          if(_loc10_ || param2)
                                          {
                                             addr327:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr328);
                                             }
                                             else
                                             {
                                                addr331:
                                                §§push("FULLSCREEN_BUTTON");
                                                §§push(_loc7_);
                                             }
                                             §§goto(addr341);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§push(7);
                                             if(!_loc10_)
                                             {
                                             }
                                             §§goto(addr341);
                                          }
                                          else
                                          {
                                             §§goto(addr341);
                                             §§push(8);
                                          }
                                       }
                                       §§goto(addr341);
                                       §§push(5);
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr319);
                        }
                     }
                     §§goto(addr327);
                  }
                  §§goto(addr341);
               }
               §§goto(addr242);
            }
            §§goto(addr234);
         }
         §§goto(addr328);
      }
      
      protected function §<!$§() : String
      {
         return StatePlay.§?B§;
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §[9§() : String
      {
         return §4t§.§?B§;
      }
   }
}
